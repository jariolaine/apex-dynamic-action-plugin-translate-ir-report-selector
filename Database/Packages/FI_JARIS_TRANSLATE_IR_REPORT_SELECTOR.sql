create or replace package "FI_JARIS_TRANSLATE_IR_REPORT_SELECTOR"
authid definer
as
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  DESCRIPTION
--    APEX plugin Translate IR Report Selector
--
--  MODIFIED (DD.MM.YYYY)
--    Jari Laine 02.09.2021 - Created
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
  function render(
    p_dynamic_action  in apex_plugin.t_dynamic_action,
    p_plugin          in apex_plugin.t_plugin
  ) return apex_plugin.t_dynamic_action_render_result;
--------------------------------------------------------------------------------
end "FI_JARIS_TRANSLATE_IR_REPORT_SELECTOR";
/

create or replace package body "FI_JARIS_TRANSLATE_IR_REPORT_SELECTOR"
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
-- none
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Global functions and procedures
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
  function render(
    p_dynamic_action  apex_plugin.t_dynamic_action,
    p_plugin          apex_plugin.t_plugin
  )
  return apex_plugin.t_dynamic_action_render_result
  as

    l_json        clob;
    l_result      apex_plugin.t_dynamic_action_render_result;
    l_mesg_prefix p_plugin.attribute_01%type                        := p_plugin.attribute_01;
    l_app_id      apex_application_page_regions.application_id%type := apex_application.g_flow_id;
    l_app_page_id apex_application_page_regions.page_id%type        := apex_application.g_flow_step_id;
    l_region_id   apex_application_page_regions.region_id%type      := p_dynamic_action.triggering_region_id;
    l_lang        apex_application_translations.language_code%type  := apex_application.g_browser_language;

  begin

    -- debugging
    if apex_application.g_debug
    then
      apex_plugin_util.debug_dynamic_action(
         p_plugin         => p_plugin
        ,p_dynamic_action => p_dynamic_action
      );
    end if;

    -- building the json object for translated IR saved report names
    select
      json_arrayagg(
        json_object(
          'id' value coalesce( v1.static_id, 'R' || to_char( v1.region_id ) ),
          'reports' value json_arrayagg(
            json_object( 'id' value to_char( v2.report_id ), 'name' value apex_lang.message( v3.translatable_message ) )
          )
        )
      )
    into l_json
    from apex_application_page_regions v1
    join apex_application_page_ir_rpt v2
      on v1.region_id = v2.region_id
    join apex_application_translations v3
      on l_mesg_prefix || v2.report_alias = v3.translatable_message
    where 1 = 1
      and v1.application_id = l_app_id
      and v2.application_id = l_app_id
      and v3.application_id = l_app_id
      and v1.page_id = l_app_page_id
      and v2.page_id = l_app_page_id
      and v1.region_id = l_region_id
      and v2.region_id = l_region_id
      and v3.language_code = l_lang
    group by coalesce( v1.static_id, 'R' || to_char( v1.region_id ) )
    ;
    apex_debug.info('json object generated: %s', l_json);

    if l_json is null
    then
      l_json := '[]';
    end if;

    l_result.javascript_function := 'function(){translateIrReportNames(' || l_json || ');}';

    -- all done, return l_result containing the javascript function
    return l_result;

  end render;
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
end "FI_JARIS_TRANSLATE_IR_REPORT_SELECTOR";
/
