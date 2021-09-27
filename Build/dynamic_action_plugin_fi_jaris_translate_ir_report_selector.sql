prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_210100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.2'
,p_default_workspace_id=>11276526621935354783
,p_default_application_id=>19212
,p_default_id_offset=>0
,p_default_owner=>'DBSWH'
);
end;
/
 
prompt APPLICATION 19212 - Translate IR/IG report selector plug-in demo
--
-- Application Export:
--   Application:     19212
--   Name:            Translate IR/IG report selector plug-in demo
--   Date and Time:   04:28 Monday September 27, 2021
--   Exported By:     JLAINE
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 312299044903897740419
--   Manifest End
--   Version:         21.1.2
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_api.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/dynamic_action/fi_jaris_translate_ir_report_selector
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(312299044903897740419)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'FI.JARIS.TRANSLATE_IR_REPORT_SELECTOR'
,p_display_name=>'Translate IR/IG Report Selector'
,p_category=>'INIT'
,p_supported_ui_types=>'DESKTOP'
,p_javascript_file_urls=>'#PLUGIN_FILES#js/script#MIN#.js'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--------------------------------------------------------------------------------',
'--------------------------------------------------------------------------------',
'  function get_ig_reports(',
'    p_app_id            in number,',
'    p_app_page_id       in number,',
'    p_lang              in varchar2,',
'    p_mesg_prefix       in varchar2,',
'    p_region_id         in varchar2,',
'    p_region_static_id  in varchar2,',
'    p_region_type       in varchar2 default null,',
'    p_ajax_identifier   in varchar2 default null',
'  ) return clob',
'  as',
'',
'    l_options clob;',
'    l_session number := sys_context( ''APEX$SESSION'', ''APP_SESSION'' );',
'',
'  begin',
'',
'    select',
'      json_arrayagg(',
'        json_object(',
'          ''region''            value p_region_static_id',
'          ,''type''             value p_region_type',
'          ,''ajax_identifier''  value p_ajax_identifier',
'          ,''reports''          value json_arrayagg(',
'            json_object(',
'              ''id''            value to_char( ig.report_id )',
'              ,''name''         value apex_lang.message( msg.translatable_message )',
'            )',
'          )',
'        )',
'        returning clob',
'      ) as json_obj',
'    into l_options',
'    from apex_appl_page_ig_rpts ig',
'    join apex_application_translations msg',
'      on msg.translatable_message = p_mesg_prefix || ig.static_id',
'    where 1 = 1',
'      and ig.application_id = p_app_id',
'      and ig.page_id = p_app_page_id',
'      and ig.region_id = p_region_id',
'      and (',
'        ig.session_id = l_session',
'        or session_id is null',
'      )',
'      and msg.application_id = p_app_id',
'      and msg.language_code = p_lang',
'    group by p_region_static_id',
'      ,p_ajax_identifier',
'      ,p_region_type',
'    ;',
'',
'    return l_options;',
'',
'  end get_ig_reports;',
'--------------------------------------------------------------------------------',
'--------------------------------------------------------------------------------',
'  function render(',
'    p_dynamic_action  apex_plugin.t_dynamic_action,',
'    p_plugin          apex_plugin.t_plugin',
'  )',
'  return apex_plugin.t_dynamic_action_render_result',
'  as',
'',
'',
'    l_ir_mesg_prefix    p_plugin.attribute_01%type                        := p_plugin.attribute_01;',
'    l_ig_mesg_prefix    p_plugin.attribute_02%type                        := p_plugin.attribute_02;',
'    l_app_id            apex_application_page_regions.application_id%type := apex_application.g_flow_id;',
'    l_app_page_id       apex_application_page_regions.page_id%type        := apex_application.g_flow_step_id;',
'    l_lang              apex_application_translations.language_code%type  := apex_application.g_browser_language;',
'',
'    l_options           clob;',
'    l_ajax_identifier   varchar2(1000);',
'    l_result            apex_plugin.t_dynamic_action_render_result;',
'    l_region_id         apex_application_page_regions.region_id%type;',
'    l_region_static_id  apex_application_page_regions.static_id%type;',
'    l_region_type       apex_application_page_regions.source_type_plugin_name%type;',
'',
'  begin',
'',
'    -- debugging',
'    if apex_application.g_debug',
'    then',
'      apex_plugin_util.debug_dynamic_action(',
'         p_plugin         => p_plugin',
'        ,p_dynamic_action => p_dynamic_action',
'      );',
'    end if;',
'',
'    -- get region id from triggerin or affected region',
'    l_region_id := coalesce(',
'      p_dynamic_action.triggering_region_id',
'      ,p_dynamic_action.affected_region_id',
'    );',
'',
'    begin',
'',
'      -- check if region is IR or IG and',
'      -- fetch region source_type_plugin_name and static id',
'      select r.static_id',
'        ,r.source_type_plugin_name',
'      into l_region_static_id',
'        ,l_region_type',
'      from apex_application_page_regions r',
'      where 1 = 1',
'        and r.application_id = l_app_id',
'        and r.page_id = l_app_page_id',
'        and r.region_id = l_region_id',
'        and r.source_type_plugin_name in(',
'          ''NATIVE_IR''',
'          ,''NATIVE_IG''',
'        )',
'      ;',
'',
'      if l_region_static_id is null',
'      then',
'        l_region_static_id := ''R'' || l_region_id;',
'      end if;',
'',
'      apex_debug.info(',
'        ''Region type: %s, id: %s, static id %s''',
'        ,l_region_type',
'        ,l_region_id',
'        ,l_region_static_id',
'      );',
'',
'      -- building the json object for translated IR saved report names',
'      if l_region_type = ''NATIVE_IR''',
'      then',
'',
'        select',
'          json_arrayagg(',
'            json_object(',
'              ''region''    value l_region_static_id',
'              ,''type''     value l_region_type',
'              ,''reports''  value json_arrayagg(',
'                json_object(',
'                  ''id''    value to_char( ir.report_id )',
'                  ,''name'' value apex_lang.message( msg.translatable_message )',
'                )',
'              )',
'            )',
'            returning clob',
'          ) as json_obj',
'        into l_options',
'        from apex_application_page_ir_rpt ir',
'        join apex_application_translations msg',
'          on msg.translatable_message = l_ir_mesg_prefix || ir.report_alias',
'        where 1 = 1',
'          and ir.application_id = l_app_id',
'          and ir.page_id = l_app_page_id',
'          and ir.region_id = l_region_id',
'          and msg.application_id = l_app_id',
'          and msg.language_code = l_lang',
'          group by l_region_static_id',
'            ,l_region_type',
'            ,l_ajax_identifier',
'        ;',
'',
'      -- building the json object for translated IG saved report names',
'      elsif l_region_type = ''NATIVE_IG''',
'      then',
'',
'        l_ajax_identifier := apex_plugin.get_ajax_identifier;',
'        l_result.ajax_identifier := l_ajax_identifier;',
'',
'        l_options := get_ig_reports(',
'          p_app_id            => l_app_id',
'          ,p_app_page_id      => l_app_page_id',
'          ,p_lang             => l_lang',
'          ,p_mesg_prefix      => l_ig_mesg_prefix',
'          ,p_region_id        => l_region_id',
'          ,p_region_static_id => l_region_static_id',
'          ,p_region_type      => l_region_type',
'          ,p_ajax_identifier  => l_ajax_identifier',
'        );',
'',
'      end if;',
'',
'    -- exception if region not found',
'    exception when no_data_found',
'    then',
'      null;',
'    end;',
'',
'    if l_options is null',
'    then',
'      l_options := ''[]'';',
'    end if;',
'',
'    apex_debug.info(',
'      ''json object generated for JavaScript options: %s''',
'      ,l_options',
'    );',
'',
'    l_result.javascript_function',
'      := ''function(){translateIrReportNames( '' || l_options || '');}'';',
'',
'    -- all done, return l_result containing the javascript function',
'    return l_result;',
'',
'  end render;',
'--------------------------------------------------------------------------------',
'--------------------------------------------------------------------------------',
'  function ajax(',
'    p_dynamic_action in apex_plugin.t_dynamic_action,',
'    p_plugin         in apex_plugin.t_plugin',
'  ) return apex_plugin.t_dynamic_action_ajax_result',
'  as',
'',
'    l_ig_mesg_prefix    p_plugin.attribute_02%type                        := p_plugin.attribute_02;',
'    l_app_id            apex_application_page_regions.application_id%type := apex_application.g_flow_id;',
'    l_app_page_id       apex_application_page_regions.page_id%type        := apex_application.g_flow_step_id;',
'    l_lang              apex_application_translations.language_code%type  := apex_application.g_browser_language;',
'',
'    l_options           clob;',
'    l_result            apex_plugin.t_dynamic_action_ajax_result;',
'    l_region_id         apex_application_page_regions.region_id%type;',
'    l_region_static_id  apex_application_page_regions.static_id%type;',
'',
'  begin',
'',
'    -- debugging',
'    if apex_application.g_debug',
'    then',
'      apex_plugin_util.debug_dynamic_action(',
'         p_plugin         => p_plugin',
'        ,p_dynamic_action => p_dynamic_action',
'      );',
'    end if;',
'',
'    -- get region id from triggerin or affected region',
'    l_region_id := coalesce(',
'      p_dynamic_action.triggering_region_id',
'      ,p_dynamic_action.affected_region_id',
'    );',
'',
'    -- get region id from ajax call',
'    l_region_static_id := apex_application.g_x01;',
'',
'    apex_debug.info(',
'      ''Region type: %s, id: %s, static id %s''',
'      ,''NATIVE_IG''',
'      ,l_region_id',
'      ,l_region_static_id',
'    );',
'',
'    -- building the json object for translated IR saved report names',
'      l_options := get_ig_reports(',
'        p_app_id            => l_app_id',
'        ,p_app_page_id      => l_app_page_id',
'        ,p_lang             => l_lang',
'        ,p_mesg_prefix      => l_ig_mesg_prefix',
'        ,p_region_id        => l_region_id',
'        ,p_region_static_id => l_region_static_id',
'        -- just for JavaScript debug',
'        ,p_region_type      => ''NATIVE_IG''',
'      );',
'',
'    if l_options is null',
'    then',
'      l_options := ''[]'';',
'    end if;',
'',
'    apex_debug.info(',
'      ''json object generated for JavaScript options: %s''',
'      ,l_options',
'    );',
'',
'    -- Write header for the JSON stream.',
'    apex_plugin_util.print_json_http_header;',
'    -- Write output',
'    sys.htp.prn( l_options );',
'',
'    return l_result;',
'',
'  end ajax;',
'--------------------------------------------------------------------------------',
'--------------------------------------------------------------------------------',
''))
,p_api_version=>2
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'REGION:ONLOAD:STOP_EXECUTION_ON_ERROR:WAIT_FOR_RESULT'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.5'
,p_about_url=>'https://github.com/jariolaine/apex-dynamic-action-plugin-translate-ir-report-selector'
,p_files_version=>64
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(312569630122454432290)
,p_plugin_id=>wwv_flow_api.id(312299044903897740419)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'APEX Text Message IR Prefix'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'IR_REPORT_ALIAS_'
,p_display_length=>25
,p_max_length=>20
,p_is_translatable=>false
,p_text_case=>'UPPER'
,p_help_text=>'Specify the prefix for text message names. The translation of the report name is retrieved from the text messages with a string consisting of a prefix and a saved report alias.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(218488609760970304596)
,p_plugin_id=>wwv_flow_api.id(312299044903897740419)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'APEX Text Message IG Prefix'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'IG_REPORT_ALIAS_'
,p_display_length=>25
,p_max_length=>20
,p_is_translatable=>false
,p_text_case=>'UPPER'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '66756E6374696F6E207472616E736C61746549725265706F72744E616D65732820705F6F7074696F6E7320297B0A0A2020766172206C5F657869737473203D20705F6F7074696F6E732E6C656E677468203D3D3D20310A0A20202F2F20636865636B2074';
wwv_flow_api.g_varchar2_table(2) := '68617420746865726520697320646174610A2020696628206C5F65786973747320297B0A0A20202020766172206C5F726567696F6E496420202020202020203D20705F6F7074696F6E735B305D2E726567696F6E3B0A20202020766172206C5F72656769';
wwv_flow_api.g_varchar2_table(3) := '6F6E547970652020202020203D20705F6F7074696F6E735B305D2E747970653B0A0A202020202F2F20696620726567696F6E2069732049520A20202020696628206C5F726567696F6E54797065203D3D3D20224E41544956455F49522220297B0A0A2020';
wwv_flow_api.g_varchar2_table(4) := '202020206C5F726567696F6E4964203D20222322202B206C5F726567696F6E49643B0A0A2020202020202F2F207472616E736C61746564207265706F7274732061727261790A202020202020766172206C5F7265706F72744172722020203D20705F6F70';
wwv_flow_api.g_varchar2_table(5) := '74696F6E735B305D2E7265706F7274733B0A2020202020202F2F20676574204952207265706F7274732073656C656374206C697374206F7074696F6E730A202020202020766172206C5F6F7074696F6E7324203D202428206C5F726567696F6E4964202B';
wwv_flow_api.g_varchar2_table(6) := '20225F73617665645F7265706F727473206F7074696F6E2220293B0A0A2020202020202F2F206C6F6F702073656C656374206C697374206F7074696F6E7320746F206368616E6765207265706F7274206E616D650A2020202020206C5F6F7074696F6E73';
wwv_flow_api.g_varchar2_table(7) := '242E65616368282066756E6374696F6E28297B0A0A20202020202020202F2F206F7074696F6E0A2020202020202020766172206C5F6F7074696F6E2420202020203D20242874686973293B0A20202020202020202F2F207265706F7274206E616D650A20';
wwv_flow_api.g_varchar2_table(8) := '20202020202020766172206C5F6F7074696F6E5465787420203D206C5F6F7074696F6E242E7465787428293B0A20202020202020202F2F207265706F72742069640A2020202020202020766172206C5F6F7074696F6E56616C7565203D206C5F6F707469';
wwv_flow_api.g_varchar2_table(9) := '6F6E242E76616C28293B0A20202020202020202F2F206973207265706F72742063757272656E746C792073656C6563746564206F6E650A2020202020202020766172206C5F697353656C656374656420203D206C5F6F7074696F6E242E69732820223A73';
wwv_flow_api.g_varchar2_table(10) := '656C65637465642220290A20202020202020202F2F2065787472616374207072656669782066726F6D206F6C64207265706F7274206E616D650A2020202020202020766172206C5F7465787450726566697820203D206C5F6F7074696F6E546578742E73';
wwv_flow_api.g_varchar2_table(11) := '7562737472696E672820302C206C5F6F7074696F6E546578742E696E6465784F662820222E20222029202B203220290A2020202020202020766172206C5F6E6577546578743B0A2020202020202020766172206C5F7472616E736C61746564546578743B';
wwv_flow_api.g_varchar2_table(12) := '0A0A20202020202020202F2F2066696E64207472616E736C61746564207265706F7274206E616D650A2020202020202020242E6772657028206C5F7265706F72744172722C2066756E6374696F6E28207265706F72742C206920297B0A0A202020202020';
wwv_flow_api.g_varchar2_table(13) := '20202020696628207265706F72742E6964203D3D206C5F6F7074696F6E56616C756520297B0A2020202020202020202020206C5F7472616E736C6174656454657874203D207265706F72742E6E616D653B0A2020202020202020202020206C5F6E657754';
wwv_flow_api.g_varchar2_table(14) := '657874203D206C5F74657874507265666978202B206C5F7472616E736C61746564546578740A2020202020202020202020202F2F206368616E6765206F7074696F6E207465787420746F207472616E736C61746564207265706F7274206E616D650A2020';
wwv_flow_api.g_varchar2_table(15) := '202020202020202020206C5F6F7074696F6E242E7465787428206C5F6E65775465787420293B0A202020202020202020207D0A0A20202020202020207D293B0A0A2020202020202020617065782E64656275672E696E666F280A20202020202020202020';
wwv_flow_api.g_varchar2_table(16) := '6C5F726567696F6E547970650A202020202020202020202C226F7074696F6E220A202020202020202020202C2276616C75653A220A202020202020202020202C6C5F6F7074696F6E56616C75650A202020202020202020202C22746578743A220A202020';
wwv_flow_api.g_varchar2_table(17) := '202020202020202C6C5F6F7074696F6E546578740A202020202020202020202C2269732073656C6563746564220A202020202020202020202C6C5F697353656C65637465640A202020202020202020202C227472616E736C6174656420746F3A220A2020';
wwv_flow_api.g_varchar2_table(18) := '20202020202020202C6C5F6E6577546578740A2020202020202020293B0A0A20202020202020202F2F206966206F7074696F6E2069732073656C6563746564207468656E207265706C616365207265706F7274206E616D6520746F206F7468657220706C';
wwv_flow_api.g_varchar2_table(19) := '6163657320616C736F20696E20495220726567696F6E0A2020202020202020696628206C5F697353656C6563746564202626206C5F7472616E736C617465645465787420297B0A0A202020202020202020202F2F2067657420616C7465726E6174697665';
wwv_flow_api.g_varchar2_table(20) := '2064656661756C7420636F6E74726F6C6C206C6162656C0A20202020202020202020766172206C5F636F6E74726F6C24203D202428206C5F726567696F6E4964202B20225F636F6E74726F6C5F746578745F6164656661756C742220293B0A2020202020';
wwv_flow_api.g_varchar2_table(21) := '2020202020766172206C5F657869737473203D206C5F636F6E74726F6C242E6C656E677468203D3D3D20313B0A0A20202020202020202020617065782E64656275672E696E666F280A2020202020202020202020206C5F726567696F6E547970650A2020';
wwv_flow_api.g_varchar2_table(22) := '202020202020202020202C227265706F7274220A2020202020202020202020202C6C5F6F7074696F6E56616C75650A2020202020202020202020202C22697320616C7465726E61746976652064656661756C743A220A2020202020202020202020202C6C';
wwv_flow_api.g_varchar2_table(23) := '5F6578697374730A20202020202020202020293B0A0A202020202020202020202F2F20696620616C7465726E61746976652064656661756C7420636F6E74726F6C6C206C6162656C0A20202020202020202020696628206C5F65786973747320297B0A0A';
wwv_flow_api.g_varchar2_table(24) := '2020202020202020202020202F2F206368616E676520616C7465726E61746976652064656661756C7420636F6E74726F6C6C206C6162656C20746F207472616E736C61746564206E616D650A2020202020202020202020206C5F636F6E74726F6C242E74';
wwv_flow_api.g_varchar2_table(25) := '65787428206C5F636F6E74726F6C242E7465787428292E7265706C61636528206C5F6F7074696F6E546578742C206C5F7472616E736C6174656454657874202920293B0A0A202020202020202020207D20656C7365207B0A0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(26) := '202F2F20616C7465726E61746976652064656661756C7420636F6E74726F6C6C206C6162656C206E6F7420666F756E640A2020202020202020202020202F2F207468656E2069742073686F756C642062652075736572207361766564207075626C696320';
wwv_flow_api.g_varchar2_table(27) := '7265706F72740A2020202020202020202020206C5F636F6E74726F6C24203D202428206C5F726567696F6E4964202B20225F636F6E74726F6C5F746578745F7265706F72742220293B0A2020202020202020202020206C5F657869737473203D206C5F63';
wwv_flow_api.g_varchar2_table(28) := '6F6E74726F6C242E6C656E677468203D3D3D20313B0A0A202020202020202020202020617065782E64656275672E696E666F280A20202020202020202020202020206C5F726567696F6E547970650A20202020202020202020202020202C227265706F72';
wwv_flow_api.g_varchar2_table(29) := '74220A20202020202020202020202020202C6C5F6F7074696F6E56616C75650A20202020202020202020202020202C2269732075736572207361766564207075626C6963207265706F72743A220A20202020202020202020202020202C6C5F6578697374';
wwv_flow_api.g_varchar2_table(30) := '730A202020202020202020202020293B0A0A202020202020202020202020696628206C5F65786973747320297B0A20202020202020202020202020206C5F636F6E74726F6C242E7465787428206C5F636F6E74726F6C242E7465787428292E7265706C61';
wwv_flow_api.g_varchar2_table(31) := '636528206C5F6F7074696F6E546578742C206C5F7472616E736C6174656454657874202920293B0A2020202020202020202020207D0A0A202020202020202020207D0A0A202020202020202020202F2F2066696E642076697375616C6C79206869646465';
wwv_flow_api.g_varchar2_table(32) := '6E207265706F72742073756D6D61727920656C656D656E740A20202020202020202020766172206C5F7265706F727453756D6D6172794974656D24203D202428206C5F726567696F6E4964202B20225F636F6E74726F6C5F70616E656C5F73756D6D6172';
wwv_flow_api.g_varchar2_table(33) := '792220292E66696E64280A202020202020202020202020226C692E612D4952522D7265706F727453756D6D6172792D6974656D2D2D73617665645265706F7274207370616E2E612D4952522D7265706F727453756D6D6172792D76616C7565220A202020';
wwv_flow_api.g_varchar2_table(34) := '20202020202020293B0A0A202020202020202020202F2F206368616E67652068696464656E207265706F72742073756D6D61727920656C656D656E7420746578740A202020202020202020206C5F7265706F727453756D6D6172794974656D242E746578';
wwv_flow_api.g_varchar2_table(35) := '7428206C5F7472616E736C617465645465787420293B0A0A20202020202020207D0A0A2020202020207D293B0A0A202020202F2F20696620726567696F6E2069732049470A202020207D20656C736520696628206C5F726567696F6E54797065203D3D3D';
wwv_flow_api.g_varchar2_table(36) := '20224E41544956455F49472220297B0A0A202020202020766172206C5F616A61784964656E74696669657220203D20705F6F7074696F6E735B305D2E616A61785F6964656E7469666965723B0A0A2020202020202F2F20736574207265706F7274206E61';
wwv_flow_api.g_varchar2_table(37) := '6D65730A2020202020207472616E736C61746549675265706F72744E616D65732820705F6F7074696F6E7320293B0A0A2020202020202F2F2067657420494720726567696F6E0A20202020202076617220496724203D20242820222322202B206C5F7265';
wwv_flow_api.g_varchar2_table(38) := '67696F6E49642020293B0A0A2020202020202F2F207265676973746572206576656E74206C697374656E657220746F20494720726567696F6E0A2020202020204967242E6F6E282022696E74657261637469766567726964766965776368616E67652069';
wwv_flow_api.g_varchar2_table(39) := '6E746572616374697665677269647265706F727473657474696E67736368616E6765222C2066756E6374696F6E286576656E742C20756929207B0A0A20202020202020202F2F206465627567206576656E7420746861742069732066697265640A202020';
wwv_flow_api.g_varchar2_table(40) := '2020202020617065782E64656275672E696E666F28206C5F726567696F6E547970652C20226576656E743A222C206576656E7420293B0A0A20202020202020202F2F20416A61782063616C6C20746F206665746368207265706F7274207472616E736C61';
wwv_flow_api.g_varchar2_table(41) := '74696F6E730A2020202020202020766172206C5F726573756C74203D20617065782E7365727665722E706C7567696E28206C5F616A61784964656E7469666965722C207B0A2020202020202020202020202F2F207061737320726567696F6E2069642074';
wwv_flow_api.g_varchar2_table(42) := '6F2070726F636573730A2020202020202020202020207830313A206C5F726567696F6E49640A202020202020202020207D2C7B0A202020202020202020202020737563636573733A2066756E6374696F6E28206461746120297B0A0A2020202020202020';
wwv_flow_api.g_varchar2_table(43) := '202020202020617065782E64656275672E696E666F28206C5F726567696F6E547970652C2022616A617820726573706F6E73653A222C206461746120293B0A20202020202020202020202020202F2F20736574207265706F7274206E616D65730A202020';
wwv_flow_api.g_varchar2_table(44) := '20202020202020202020207472616E736C61746549675265706F72744E616D657328206461746120290A0A2020202020202020202020207D0A202020202020202020207D0A2020202020202020293B0A0A2020202020207D293B0A0A202020207D0A0A20';
wwv_flow_api.g_varchar2_table(45) := '207D0A0A20202F2F20707269766174652066756E6374696F6E20666F722068616E646C696E672049470A202066756E6374696F6E207472616E736C61746549675265706F72744E616D65732820705F6F7074696F6E7320297B0A0A20202020766172206C';
wwv_flow_api.g_varchar2_table(46) := '5F726567696F6E4964202020203D20222322202B20705F6F7074696F6E735B305D2E726567696F6E3B0A20202020766172206C5F726567696F6E5479706520203D20705F6F7074696F6E735B305D2E747970653B0A20202020766172206C5F7265706F72';
wwv_flow_api.g_varchar2_table(47) := '744172722020203D20705F6F7074696F6E735B305D2E7265706F7274733B0A202020202F2F20676574204947207265706F7274732073656C656374206C697374206F7074696F6E730A20202020766172206C5F6F7074696F6E7324202020203D20242820';
wwv_flow_api.g_varchar2_table(48) := '6C5F726567696F6E4964202B20225F69675F746F6F6C6261722073656C656374206F7074696F6E2220293B0A0A202020202F2F206C6F6F702073656C656374206C697374206F7074696F6E7320746F206368616E6765207265706F7274206E616D650A20';
wwv_flow_api.g_varchar2_table(49) := '2020206C5F6F7074696F6E73242E65616368282066756E6374696F6E28297B0A0A2020202020202F2F206F7074696F6E0A202020202020766172206C5F6F7074696F6E2420202020203D20242874686973293B0A2020202020202F2F207265706F727420';
wwv_flow_api.g_varchar2_table(50) := '6E616D650A202020202020766172206C5F6F7074696F6E5465787420203D206C5F6F7074696F6E242E7465787428293B0A2020202020202F2F207265706F72742069640A202020202020766172206C5F6F7074696F6E56616C7565203D206C5F6F707469';
wwv_flow_api.g_varchar2_table(51) := '6F6E242E76616C28293B0A202020202020766172206C5F697353656C656374656420203D206C5F6F7074696F6E242E69732820223A73656C65637465642220290A202020202020766172206C5F6E6577546578743B0A0A2020202020202F2F2066696E64';
wwv_flow_api.g_varchar2_table(52) := '207472616E736C61746564207265706F7274206E616D650A202020202020242E6772657028206C5F7265706F72744172722C2066756E6374696F6E28207265706F72742C206920297B0A0A2020202020202020696628207265706F72742E6964203D3D20';
wwv_flow_api.g_varchar2_table(53) := '6C5F6F7074696F6E56616C756520297B0A202020202020202020206C5F6E657754657874203D207265706F72742E6E616D653B0A202020202020202020202F2F206368616E6765206F7074696F6E207465787420746F207472616E736C61746564207265';
wwv_flow_api.g_varchar2_table(54) := '706F7274206E616D650A202020202020202020206C5F6F7074696F6E242E7465787428206C5F6E65775465787420293B0A20202020202020207D0A0A2020202020207D293B0A0A202020202020617065782E64656275672E696E666F280A202020202020';
wwv_flow_api.g_varchar2_table(55) := '20206C5F726567696F6E547970650A20202020202020202C226F7074696F6E220A20202020202020202C2276616C75653A220A20202020202020202C6C5F6F7074696F6E56616C75650A20202020202020202C22746578743A220A20202020202020202C';
wwv_flow_api.g_varchar2_table(56) := '6C5F6F7074696F6E546578740A20202020202020202C2269732073656C6563746564220A20202020202020202C6C5F697353656C65637465640A20202020202020202C227472616E736C6174656420746F3A220A20202020202020202C6C5F6E65775465';
wwv_flow_api.g_varchar2_table(57) := '78740A202020202020293B0A0A2020202020202F2F206966206F7074696F6E2069732073656C6563746564207468656E207265706C616365207265706F7274206E616D6520746F206F7468657220706C6163657320616C736F20696E2049472072656769';
wwv_flow_api.g_varchar2_table(58) := '6F6E0A202020202020696628206C5F697353656C6563746564202626206C5F6E65775465787420297B0A0A2020202020202020766172206C5F7265706F727453756D6D6172794974656D24203D202428206C5F726567696F6E4964202B20225F69675F73';
wwv_flow_api.g_varchar2_table(59) := '756D6D6172792220293B0A2020202020202020766172206C5F7265706F727453756D6D61727954657874203D206C5F7265706F727453756D6D6172794974656D242E7465787428293B0A0A20202020202020206C5F7265706F727453756D6D6172794974';
wwv_flow_api.g_varchar2_table(60) := '656D242E7465787428206C5F7265706F727453756D6D617279546578742E7265706C61636528206C5F6F7074696F6E546578742C206C5F6E657754657874202920293B0A0A2020202020207D0A0A202020207D293B0A0A20207D0A0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(281375189167266295405)
,p_plugin_id=>wwv_flow_api.id(312299044903897740419)
,p_file_name=>'js/script.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '66756E6374696F6E207472616E736C61746549725265706F72744E616D65732865297B696628313D3D3D652E6C656E677468297B76617220743D655B305D2E726567696F6E2C723D655B305D2E747970653B696628224E41544956455F4952223D3D3D72';
wwv_flow_api.g_varchar2_table(2) := '297B743D2223222B743B76617220613D655B305D2E7265706F7274733B2428742B225F73617665645F7265706F727473206F7074696F6E22292E656163682866756E6374696F6E28297B76617220652C692C6E3D242874686973292C6F3D6E2E74657874';
wwv_flow_api.g_varchar2_table(3) := '28292C733D6E2E76616C28292C703D6E2E697328223A73656C656374656422292C6C3D6F2E737562737472696E6728302C6F2E696E6465784F6628222E2022292B32293B696628242E6772657028612C66756E6374696F6E28742C72297B742E69643D3D';
wwv_flow_api.g_varchar2_table(4) := '73262628693D742E6E616D652C653D6C2B692C6E2E74657874286529297D292C617065782E64656275672E696E666F28722C226F7074696F6E222C2276616C75653A222C732C22746578743A222C6F2C2269732073656C6563746564222C702C22747261';
wwv_flow_api.g_varchar2_table(5) := '6E736C6174656420746F3A222C65292C70262669297B76617220633D2428742B225F636F6E74726F6C5F746578745F6164656661756C7422292C753D313D3D3D632E6C656E6774683B617065782E64656275672E696E666F28722C227265706F7274222C';
wwv_flow_api.g_varchar2_table(6) := '732C22697320616C7465726E61746976652064656661756C743A222C75292C753F632E7465787428632E7465787428292E7265706C616365286F2C6929293A28753D313D3D3D28633D2428742B225F636F6E74726F6C5F746578745F7265706F72742229';
wwv_flow_api.g_varchar2_table(7) := '292E6C656E6774682C617065782E64656275672E696E666F28722C227265706F7274222C732C2269732075736572207361766564207075626C6963207265706F72743A222C75292C752626632E7465787428632E7465787428292E7265706C616365286F';
wwv_flow_api.g_varchar2_table(8) := '2C692929292C2428742B225F636F6E74726F6C5F70616E656C5F73756D6D61727922292E66696E6428226C692E612D4952522D7265706F727453756D6D6172792D6974656D2D2D73617665645265706F7274207370616E2E612D4952522D7265706F7274';
wwv_flow_api.g_varchar2_table(9) := '53756D6D6172792D76616C756522292E746578742869297D7D297D656C736520696628224E41544956455F4947223D3D3D72297B76617220693D655B305D2E616A61785F6964656E7469666965723B6E2865292C24282223222B74292E6F6E2822696E74';
wwv_flow_api.g_varchar2_table(10) := '657261637469766567726964766965776368616E676520696E746572616374697665677269647265706F727473657474696E67736368616E6765222C66756E6374696F6E28652C61297B617065782E64656275672E696E666F28722C226576656E743A22';
wwv_flow_api.g_varchar2_table(11) := '2C65293B617065782E7365727665722E706C7567696E28692C7B7830313A747D2C7B737563636573733A66756E6374696F6E2865297B617065782E64656275672E696E666F28722C22616A617820726573706F6E73653A222C65292C6E2865297D7D297D';
wwv_flow_api.g_varchar2_table(12) := '297D7D66756E6374696F6E206E2865297B76617220743D2223222B655B305D2E726567696F6E2C723D655B305D2E747970652C613D655B305D2E7265706F7274733B2428742B225F69675F746F6F6C6261722073656C656374206F7074696F6E22292E65';
wwv_flow_api.g_varchar2_table(13) := '6163682866756E6374696F6E28297B76617220652C693D242874686973292C6E3D692E7465787428292C6F3D692E76616C28292C733D692E697328223A73656C656374656422293B696628242E6772657028612C66756E6374696F6E28742C72297B742E';
wwv_flow_api.g_varchar2_table(14) := '69643D3D6F262628653D742E6E616D652C692E74657874286529297D292C617065782E64656275672E696E666F28722C226F7074696F6E222C2276616C75653A222C6F2C22746578743A222C6E2C2269732073656C6563746564222C732C227472616E73';
wwv_flow_api.g_varchar2_table(15) := '6C6174656420746F3A222C65292C73262665297B76617220703D2428742B225F69675F73756D6D61727922292C6C3D702E7465787428293B702E74657874286C2E7265706C616365286E2C6529297D7D297D7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(281375189487587295406)
,p_plugin_id=>wwv_flow_api.id(312299044903897740419)
,p_file_name=>'js/script.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
