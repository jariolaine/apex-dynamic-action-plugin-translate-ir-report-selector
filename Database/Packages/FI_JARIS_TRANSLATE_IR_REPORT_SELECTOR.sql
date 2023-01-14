create or replace package "FI_JARIS_TRANSLATE_IR_REPORT_SELECTOR"
authid definer
as
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  DESCRIPTION
--    APEX dynamic action plugin: Translate IR/IG Report Selector
--
--  MODIFIED (DD.MM.YYYY)
--    Jari Laine 02.09.2021 - Created
--    Jari Laine 24.09.2021 - Support for IG
--    Jari Laine 25.09.2021 - Minor changes
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
  function render(
    p_dynamic_action  in apex_plugin.t_dynamic_action,
    p_plugin          in apex_plugin.t_plugin
  ) return apex_plugin.t_dynamic_action_render_result;
--------------------------------------------------------------------------------
  function ajax(
    p_dynamic_action in apex_plugin.t_dynamic_action,
    p_plugin         in apex_plugin.t_plugin
  ) return apex_plugin.t_dynamic_action_ajax_result;
--------------------------------------------------------------------------------
end "FI_JARIS_TRANSLATE_IR_REPORT_SELECTOR";
/

create or replace package body "FI_JARIS_TRANSLATE_IR_REPORT_SELECTOR"
as
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Private constants and variables
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- none
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Private procedures and functions
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
  function get_ig_reports(
    p_app_id            in number,
    p_app_page_id       in number,
    p_lang              in varchar2,
    p_mesg_prefix       in varchar2,
    p_region_id         in varchar2,
    p_region_static_id  in varchar2,
    p_region_type       in varchar2 default null,
    p_ajax_identifier   in varchar2 default null
  ) return varchar2
  as

    l_options varchar2(32672);
    l_session number := sys_context( 'APEX$SESSION', 'APP_SESSION' );

  begin

    select
      json_arrayagg(
        json_object(
          'region'            value p_region_static_id
          ,'type'             value p_region_type
          ,'ajax_identifier'  value p_ajax_identifier
          ,'reports'          value json_arrayagg(
            json_object(
              'id'            value to_char( ig.report_id )
              ,'name'         value msg.message_text
            )
          )
        )
      ) as json_obj
    into l_options
    from apex_appl_page_ig_rpts ig
    join apex_application_translations msg
      on msg.translatable_message = p_mesg_prefix || ig.static_id
    where 1 = 1
      and ig.application_id = p_app_id
      and ig.page_id = p_app_page_id
      and ig.region_id = p_region_id
      and (
        (
          ig.session_id = l_session
          and ig.type = 'SESSION'
        )
        or (
          ig.session_id is null
          and ig.type in( 'ALTERNATIVE', 'PUBLIC' )
        )
      )
      and msg.application_id = p_app_id
      and msg.language_code = p_lang
    group by p_region_static_id
      ,p_ajax_identifier
      ,p_region_type
    ;

    return l_options;

  end get_ig_reports;
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
  function render(
    p_dynamic_action  apex_plugin.t_dynamic_action,
    p_plugin          apex_plugin.t_plugin
  )
  return apex_plugin.t_dynamic_action_render_result
  as


    l_ir_mesg_prefix    p_plugin.attribute_01%type                        := p_plugin.attribute_01;
    l_ig_mesg_prefix    p_plugin.attribute_02%type                        := p_plugin.attribute_02;
    l_app_id            apex_application_page_regions.application_id%type := apex_application.g_flow_id;
    l_app_page_id       apex_application_page_regions.page_id%type        := apex_application.g_flow_step_id;
    l_lang              apex_application_translations.language_code%type  := apex_application.g_browser_language;

    l_options           varchar2(32672);
    l_ajax_identifier   varchar2(1000);
    l_result            apex_plugin.t_dynamic_action_render_result;
    l_region_id         apex_application_page_regions.region_id%type;
    l_region_static_id  apex_application_page_regions.static_id%type;
    l_region_type       apex_application_page_regions.source_type_plugin_name%type;

  begin

    -- debugging
    if apex_application.g_debug
    then
      apex_plugin_util.debug_dynamic_action(
         p_plugin         => p_plugin
        ,p_dynamic_action => p_dynamic_action
      );
    end if;

    -- get region id from triggerin or affected region
    l_region_id := coalesce(
      p_dynamic_action.triggering_region_id
      ,p_dynamic_action.affected_region_id
    );

    begin

      -- check if region is IR or IG and
      -- fetch region source_type_plugin_name and static id
      select r.static_id
        ,r.source_type_plugin_name
      into l_region_static_id
        ,l_region_type
      from apex_application_page_regions r
      where 1 = 1
        and r.application_id = l_app_id
        and r.page_id = l_app_page_id
        and r.region_id = l_region_id
        and r.source_type_plugin_name in(
          'NATIVE_IR'
          ,'NATIVE_IG'
        )
      ;

      if l_region_static_id is null
      then
        l_region_static_id := 'R' || l_region_id;
      end if;

      apex_debug.info(
        'Region type: %s, id: %s, static id %s'
        ,l_region_type
        ,l_region_id
        ,l_region_static_id
      );

      -- building the json object for translated IR saved report names
      if l_region_type = 'NATIVE_IR'
      then

        select
          json_arrayagg(
            json_object(
              'region'    value l_region_static_id
              ,'type'     value l_region_type
              ,'reports'  value json_arrayagg(
                json_object(
                  'id'    value to_char( ir.report_id )
                  ,'name' value msg.message_text
                )
              )
            )
          ) as json_obj
        into l_options
        from apex_application_page_ir_rpt ir
        join apex_application_translations msg
          on msg.translatable_message = l_ir_mesg_prefix || ir.report_alias
        where 1 = 1
          and ir.report_type in( 'ALTERNATIVE_DEFAULT', 'PUBLIC' )
          and ir.application_id = l_app_id
          and ir.page_id = l_app_page_id
          and ir.region_id = l_region_id
          and msg.application_id = l_app_id
          and msg.language_code = l_lang
          group by l_region_static_id
            ,l_region_type
            ,l_ajax_identifier
        ;

      -- building the json object for translated IG saved report names
      elsif l_region_type = 'NATIVE_IG'
      then

        l_ajax_identifier := apex_plugin.get_ajax_identifier;
        l_result.ajax_identifier := l_ajax_identifier;

        l_options := get_ig_reports(
          p_app_id            => l_app_id
          ,p_app_page_id      => l_app_page_id
          ,p_lang             => l_lang
          ,p_mesg_prefix      => l_ig_mesg_prefix
          ,p_region_id        => l_region_id
          ,p_region_static_id => l_region_static_id
          ,p_region_type      => l_region_type
          ,p_ajax_identifier  => l_ajax_identifier
        );

      end if;

    -- exception if region not found
    exception when no_data_found
    then
      null;
    end;

    if l_options is null
    then
      l_options := '[]';
    end if;

    apex_debug.info(
      'json object generated for JavaScript options: %s'
      ,l_options
    );

    l_result.javascript_function :=
      'function(){translateIrReportNames( ' || l_options || ');}';

    -- all done, return l_result containing the javascript function
    return l_result;

  end render;
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
  function ajax(
    p_dynamic_action in apex_plugin.t_dynamic_action,
    p_plugin         in apex_plugin.t_plugin
  ) return apex_plugin.t_dynamic_action_ajax_result
  as

    l_ig_mesg_prefix    p_plugin.attribute_02%type                        := p_plugin.attribute_02;
    l_app_id            apex_application_page_regions.application_id%type := apex_application.g_flow_id;
    l_app_page_id       apex_application_page_regions.page_id%type        := apex_application.g_flow_step_id;
    l_lang              apex_application_translations.language_code%type  := apex_application.g_browser_language;

    l_options           varchar2(32672);
    l_result            apex_plugin.t_dynamic_action_ajax_result;
    l_region_id         apex_application_page_regions.region_id%type;
    l_region_static_id  apex_application_page_regions.static_id%type;

  begin

    -- debugging
    if apex_application.g_debug
    then
      apex_plugin_util.debug_dynamic_action(
         p_plugin         => p_plugin
        ,p_dynamic_action => p_dynamic_action
      );
    end if;

    -- get region id from triggerin or affected region
    l_region_id := coalesce(
      p_dynamic_action.triggering_region_id
      ,p_dynamic_action.affected_region_id
    );

    -- get region id from ajax call
    l_region_static_id := apex_application.g_x01;

    apex_debug.info(
      'Region type: %s, id: %s, static id %s'
      ,'NATIVE_IG'
      ,l_region_id
      ,l_region_static_id
    );

    -- building the json object for translated IR saved report names
      l_options := get_ig_reports(
        p_app_id            => l_app_id
        ,p_app_page_id      => l_app_page_id
        ,p_lang             => l_lang
        ,p_mesg_prefix      => l_ig_mesg_prefix
        ,p_region_id        => l_region_id
        ,p_region_static_id => l_region_static_id
        -- just for JavaScript debug
        ,p_region_type      => 'NATIVE_IG'
      );

    if l_options is null
    then
      l_options := '[]';
    end if;

    apex_debug.info(
      'json object generated for JavaScript options: %s'
      ,l_options
    );

    -- Write header for the JSON stream.
    apex_plugin_util.print_json_http_header;
    -- Write output
    sys.htp.prn( l_options );

    return l_result;

  end ajax;
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
end "FI_JARIS_TRANSLATE_IR_REPORT_SELECTOR";
/
