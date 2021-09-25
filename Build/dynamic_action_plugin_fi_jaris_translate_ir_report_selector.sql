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
--   Date and Time:   09:14 Saturday September 25, 2021
--   Exported By:     JLAINE
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 239108629808710110967
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
 p_id=>wwv_flow_api.id(239108629808710110967)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'FI.JARIS.TRANSLATE_IR_REPORT_SELECTOR'
,p_display_name=>'Translate IR/IG Report Selector'
,p_category=>'INIT'
,p_supported_ui_types=>'DESKTOP'
,p_javascript_file_urls=>'#PLUGIN_FILES#js/script#MIN#.js'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--------------------------------------------------------------------------------',
'--------------------------------------------------------------------------------',
'function get_ig_reports(',
'  p_app_id            in number,',
'  p_app_page_id       in number,',
'  p_lang              in varchar2,',
'  p_mesg_prefix       in varchar2,',
'  p_region_id         in varchar2,',
'  p_region_static_id  in varchar2,',
'  p_region_type       in varchar2 default null,',
'  p_ajax_identifier   in varchar2 default null',
') return clob',
'as',
'  l_options clob;',
'begin',
'',
'  select',
'    json_arrayagg(',
'      json_object(',
'        ''region''            value p_region_static_id',
'        ,''type''             value p_region_type',
'        ,''ajax_identifier''  value p_ajax_identifier',
'        ,''reports''          value json_arrayagg(',
'          json_object(',
'            ''id''            value to_char( ig.report_id )',
'            ,''name''         value apex_lang.message( msg.translatable_message )',
'          )',
'        )',
'      )',
'      returning clob',
'    ) as json_obj',
'  into l_options',
'  from apex_appl_page_ig_rpts ig',
'  join apex_application_translations msg',
'    on msg.translatable_message = p_mesg_prefix || ig.static_id',
'  where 1 = 1',
'    and ig.application_id = p_app_id',
'    and ig.page_id = p_app_page_id',
'    and ig.region_id = p_region_id',
'    and msg.application_id = p_app_id',
'    and msg.language_code = p_lang',
'  group by p_region_static_id',
'    ,p_ajax_identifier',
'    ,p_region_type',
'  ;',
'',
'  return l_options;',
'',
'end get_ig_reports;',
'--------------------------------------------------------------------------------',
'--------------------------------------------------------------------------------',
'function render(',
'  p_dynamic_action  apex_plugin.t_dynamic_action,',
'  p_plugin          apex_plugin.t_plugin',
')',
'return apex_plugin.t_dynamic_action_render_result',
'as',
'',
'  l_options           clob;',
'  l_result            apex_plugin.t_dynamic_action_render_result;',
'  l_ir_mesg_prefix    p_plugin.attribute_01%type                        := p_plugin.attribute_01;',
'  l_ig_mesg_prefix    p_plugin.attribute_02%type                        := p_plugin.attribute_02;',
'  l_app_id            apex_application_page_regions.application_id%type := apex_application.g_flow_id;',
'  l_app_page_id       apex_application_page_regions.page_id%type        := apex_application.g_flow_step_id;',
'  l_lang              apex_application_translations.language_code%type  := apex_application.g_browser_language;',
'',
'  l_ajax_identifier   varchar2(1000);',
'  l_region_id         apex_application_page_regions.region_id%type;',
'  l_region_static_id  apex_application_page_regions.static_id%type;',
'  l_region_type       apex_application_page_regions.source_type_plugin_name%type;',
'',
'begin',
'',
'  -- debugging',
'  if apex_application.g_debug',
'  then',
'    apex_plugin_util.debug_dynamic_action(',
'       p_plugin         => p_plugin',
'      ,p_dynamic_action => p_dynamic_action',
'    );',
'  end if;',
'',
'  -- get region id from triggerin or affected region',
'  l_region_id := coalesce(',
'    p_dynamic_action.triggering_region_id',
'    ,p_dynamic_action.affected_region_id',
'  );',
'',
'  begin',
'',
'    -- check if region is IR or IG and',
'    -- fetch region source_type_plugin_name and static id',
'    select r.static_id',
'      ,r.source_type_plugin_name',
'    into l_region_static_id',
'      ,l_region_type',
'    from apex_application_page_regions r',
'    where 1 = 1',
'      and r.application_id = l_app_id',
'      and r.page_id = l_app_page_id',
'      and r.region_id = l_region_id',
'      and r.source_type_plugin_name in(',
'        ''NATIVE_IR''',
'        ,''NATIVE_IG''',
'      )',
'    ;',
'',
'    apex_debug.info(',
'      ''Region type: %s, id: %s, static id %s''',
'      ,l_region_type',
'      ,l_region_id',
'      ,l_region_static_id',
'    );',
'',
'    if l_region_static_id is null',
'    then',
'      l_region_static_id := ''R'' || l_region_id;',
'      apex_debug.info( ''Fetch data using region static id'' );',
'    end if;',
'',
'    -- building the json object for translated IR saved report names',
'    if l_region_type = ''NATIVE_IR''',
'    then',
'',
'      select',
'        json_arrayagg(',
'          json_object(',
'            ''region''    value l_region_static_id',
'            ,''type''     value l_region_type',
'            ,''reports''  value json_arrayagg(',
'              json_object(',
'                ''id''    value to_char( ir.report_id )',
'                ,''name'' value apex_lang.message( msg.translatable_message )',
'              )',
'            )',
'          )',
'          returning clob',
'        ) as json_obj',
'      into l_options',
'      from apex_application_page_ir_rpt ir',
'      join apex_application_translations msg',
'        on msg.translatable_message = l_ir_mesg_prefix || ir.report_alias',
'      where 1 = 1',
'        and ir.application_id = l_app_id',
'        and ir.page_id = l_app_page_id',
'        and ir.region_id = l_region_id',
'        and msg.application_id = l_app_id',
'        and msg.language_code = l_lang',
'        group by l_region_static_id',
'          ,l_region_type',
'          ,l_ajax_identifier',
'      ;',
'',
'    -- building the json object for translated IG saved report names',
'    elsif l_region_type = ''NATIVE_IG''',
'    then',
'',
'      l_ajax_identifier := apex_plugin.get_ajax_identifier;',
'      l_result.ajax_identifier := l_ajax_identifier;',
'',
'      l_options := get_ig_reports(',
'        p_app_id            => l_app_id',
'        ,p_app_page_id      => l_app_page_id',
'        ,p_lang             => l_lang',
'        ,p_mesg_prefix      => l_ig_mesg_prefix',
'        ,p_region_id        => l_region_id',
'        ,p_region_static_id => l_region_static_id',
'        ,p_region_type      => l_region_type',
'        ,p_ajax_identifier  => l_ajax_identifier',
'      );',
'',
'    end if;',
'',
'  -- exception if region not found',
'  exception when no_data_found',
'  then',
'    null;',
'  end;',
'',
'  if l_options is null',
'  then',
'    l_options := ''[]'';',
'  end if;',
'',
'  apex_debug.info(',
'    ''json object generated for JavaDcript options: %s''',
'    ,l_options',
'  );',
'',
'  l_result.javascript_function',
'    := ''function(){translateIrReportNames( '' || l_options || '');}'';',
'',
'  -- all done, return l_result containing the javascript function',
'  return l_result;',
'',
'end render;',
'--------------------------------------------------------------------------------',
'--------------------------------------------------------------------------------',
'function ajax(',
'  p_dynamic_action in apex_plugin.t_dynamic_action,',
'  p_plugin         in apex_plugin.t_plugin',
') return apex_plugin.t_dynamic_action_ajax_result',
'as',
'  l_options           clob;',
'  l_result            apex_plugin.t_dynamic_action_ajax_result;',
'  l_ig_mesg_prefix    p_plugin.attribute_02%type                        := p_plugin.attribute_02;',
'  l_app_id            apex_application_page_regions.application_id%type := apex_application.g_flow_id;',
'  l_app_page_id       apex_application_page_regions.page_id%type        := apex_application.g_flow_step_id;',
'  l_lang              apex_application_translations.language_code%type  := apex_application.g_browser_language;',
'',
'  l_region_id         apex_application_page_regions.region_id%type;',
'  l_region_static_id  apex_application_page_regions.static_id%type;',
'',
'begin',
'',
'  -- debugging',
'  if apex_application.g_debug',
'  then',
'    apex_plugin_util.debug_dynamic_action(',
'       p_plugin         => p_plugin',
'      ,p_dynamic_action => p_dynamic_action',
'    );',
'  end if;',
'',
'  -- get region id from triggerin or affected region',
'  l_region_id := coalesce(',
'    p_dynamic_action.triggering_region_id',
'    ,p_dynamic_action.affected_region_id',
'  );',
'',
'  l_region_static_id := apex_application.g_x01;',
'',
'  if l_region_static_id is null',
'  then',
'    l_region_static_id := ''R'' || l_region_id;',
'    apex_debug.info( ''Fetch data using region static id'' );',
'  end if;',
'',
'  -- building the json object for translated IR saved report names',
'',
'    l_options := get_ig_reports(',
'      p_app_id            => l_app_id',
'      ,p_app_page_id      => l_app_page_id',
'      ,p_lang             => l_lang',
'      ,p_mesg_prefix      => l_ig_mesg_prefix',
'      ,p_region_id        => l_region_id',
'      ,p_region_static_id => l_region_static_id',
'    );',
'',
'  if l_options is null',
'  then',
'    l_options := ''[]'';',
'  end if;',
'',
'  apex_debug.info(',
'    ''json object generated for JavaDcript options: %s''',
'    ,l_options',
'  );',
'',
'  -- Write header for the output',
'  sys.owa_util.mime_header(''application/json'', false);',
'  sys.htp.p(''Cache-Control: no-cache'');',
'  sys.htp.p(''Pragma: no-cache'');',
'  sys.owa_util.http_header_close;',
'  -- Write output',
'  sys.htp.prn( l_options );',
'',
'  return l_result;',
'',
'end ajax;',
'--------------------------------------------------------------------------------',
'--------------------------------------------------------------------------------',
''))
,p_api_version=>2
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'REGION:ONLOAD:STOP_EXECUTION_ON_ERROR:WAIT_FOR_RESULT'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.3'
,p_about_url=>'https://github.com/jariolaine/apex-dynamic-action-plugin-translate-ir-report-selector'
,p_files_version=>40
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(239379215027266802838)
,p_plugin_id=>wwv_flow_api.id(239108629808710110967)
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
 p_id=>wwv_flow_api.id(145298194665782675144)
,p_plugin_id=>wwv_flow_api.id(239108629808710110967)
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
wwv_flow_api.g_varchar2_table(1) := '66756E6374696F6E207472616E736C61746549725265706F72744E616D65732820705F6F7074696F6E732C20705F616A61785F6964656E74696669657220297B0A20202F2F20636865636B207468617420746865726520697320646174610A2020696628';
wwv_flow_api.g_varchar2_table(2) := '20705F6F7074696F6E732E6C656E677468203D3D3D203120297B0A0A202020202F2F20696620726567696F6E2069732049520A2020202069662820705F6F7074696F6E735B305D2E74797065203D3D3D20224E41544956455F49522220297B0A0A202020';
wwv_flow_api.g_varchar2_table(3) := '2020202F2F20676574204952207265706F7274732073656C656374206C6973740A202020202020766172206C5F69725265706F7253656C65637424203D20242820222322202B20705F6F7074696F6E735B305D2E726567696F6E202B20225F7361766564';
wwv_flow_api.g_varchar2_table(4) := '5F7265706F7274732220293B0A0A2020202020202F2F206765742073656C6563746564207265706F72742063757272656E74206E616D650A2020202020202F2F207573652074686973206C6174657220746F206368616E676520616C7465726E61746976';
wwv_flow_api.g_varchar2_table(5) := '652064656661756C7420636F6E74726F6C6C206C6162656C0A202020202020766172206C5F73656172636856616C7565203D206C5F69725265706F7253656C656374242E66696E642820226F7074696F6E3A73656C65637465642220292E746578742829';
wwv_flow_api.g_varchar2_table(6) := '3B0A2020202020206C5F73656172636856616C7565203D206C5F73656172636856616C75652E737562737472696E6728206C5F73656172636856616C75652E696E6465784F662820222E20222029202B203220293B0A0A2020202020202F2F206C6F6F70';
wwv_flow_api.g_varchar2_table(7) := '207472616E736C61746564207265706F7274206E616D657320616E64206368616E6765207265706F7274206E616D6520746F204952207265706F72742073656C6563746F720A202020202020242E656163682820705F6F7074696F6E735B305D2E726570';
wwv_flow_api.g_varchar2_table(8) := '6F7274732C2066756E6374696F6E2820692C207265706F727420297B0A20202020202020202F2F20676574204952207265706F7274732073656C656374206C697374206F7074696F6E206279207265706F727420696420616E6420657874726163742070';
wwv_flow_api.g_varchar2_table(9) := '72656669780A2020202020202020766172206C5F6F7074696F6E24203D206C5F69725265706F7253656C656374242E66696E642820226F7074696F6E5B76616C75653D5C2222202B207265706F72742E6964202B20225C225D2220290A20202020202020';
wwv_flow_api.g_varchar2_table(10) := '2020202C6C5F6F6C644E616D65203D206C5F6F7074696F6E242E7465787428290A202020202020202020202C6C5F6E616D65507265666978203D206C5F6F6C644E616D652E737562737472696E672820302C206C5F6F6C644E616D652E696E6465784F66';
wwv_flow_api.g_varchar2_table(11) := '2820222E20222029202B203220290A20202020202020203B0A20202020202020202F2F206368616E67652073656C656374206C697374206F7074696F6E20746578740A20202020202020206C5F6F7074696F6E242E7465787428206C5F6E616D65507265';
wwv_flow_api.g_varchar2_table(12) := '666978202B207265706F72742E6E616D6520293B0A2020202020207D293B0A0A2020202020202F2F2067657420616C7465726E61746976652064656661756C7420636F6E74726F6C6C206C6162656C0A202020202020766172206C5F636F6E74726F6C24';
wwv_flow_api.g_varchar2_table(13) := '203D20242820222322202B20705F6F7074696F6E735B305D2E726567696F6E202B20225F636F6E74726F6C5F746578745F6164656661756C742220293B0A202020202020766172206C5F7265706C61636556616C7565203D206C5F69725265706F725365';
wwv_flow_api.g_varchar2_table(14) := '6C656374242E66696E642820226F7074696F6E3A73656C65637465642220292E7465787428293B0A0A2020202020202F2F206368616E676520616C7465726E61746976652064656661756C7420636F6E74726F6C6C206C6162656C0A2020202020206C5F';
wwv_flow_api.g_varchar2_table(15) := '7265706C61636556616C7565203D206C5F7265706C61636556616C75652E737562737472696E6728206C5F7265706C61636556616C75652E696E6465784F662820222E20222029202B203220293B0A2020202020206C5F636F6E74726F6C242E74657874';
wwv_flow_api.g_varchar2_table(16) := '28206C5F636F6E74726F6C242E7465787428292E7265706C61636528206C5F73656172636856616C75652C206C5F7265706C61636556616C7565202920293B0A202020202020242820222322202B20705F6F7074696F6E735B305D2E726567696F6E202B';
wwv_flow_api.g_varchar2_table(17) := '20225F636F6E74726F6C5F70616E656C5F73756D6D61727920615B646174612D73657474696E673D5C227265706F72742D64656661756C745C225D207370616E2E612D4952522D7265706F727453756D6D6172792D76616C756522292E7465787428206C';
wwv_flow_api.g_varchar2_table(18) := '5F7265706C61636556616C756520293B0A0A202020202F2F20696620726567696F6E2069732049470A202020207D20656C73652069662820705F6F7074696F6E735B305D2E74797065203D3D3D20224E41544956455F49472220297B0A0A202020202020';
wwv_flow_api.g_varchar2_table(19) := '2F2F20736574207265706F7274206E616D65730A2020202020207472616E736C61746549675265706F72744E616D65732820705F6F7074696F6E7320290A2020202020202F2F2067657420494720726567696F6E0A20202020202076617220496724203D';
wwv_flow_api.g_varchar2_table(20) := '20242820222322202B20705F6F7074696F6E735B305D2E726567696F6E20293B0A2020202020202F2F207265676973746572206576656E7420746F20494720726567696F6E0A2020202020204967242E6F6E2822696E7465726163746976656772696476';
wwv_flow_api.g_varchar2_table(21) := '6965776368616E676520696E746572616374697665677269647265706F727473657474696E67736368616E6765222C2066756E6374696F6E286576656E742C20756929207B0A20202020202020202F2F2064656275670A2020202020202020617065782E';
wwv_flow_api.g_varchar2_table(22) := '64656275672E696E666F28206576656E7420293B0A20202020202020202F2F20416A61782063616C6C20746F6665746368207265706F7274207472616E736C6174696F6E730A2020202020202020766172206C5F726573756C74203D20617065782E7365';
wwv_flow_api.g_varchar2_table(23) := '727665722E706C7567696E2820705F6F7074696F6E735B305D2E616A61785F6964656E7469666965722C207B0A2020202020202020202020207830313A705F6F7074696F6E735B305D2E726567696F6E0A202020202020202020207D2C7B0A2020202020';
wwv_flow_api.g_varchar2_table(24) := '20202020202020737563636573733A2066756E6374696F6E28206461746120297B0A20202020202020202020202020202F2F20736574207265706F7274206E616D65730A2020202020202020202020202020617065782E64656275672E696E666F282064';
wwv_flow_api.g_varchar2_table(25) := '61746120293B0A20202020202020202020202020207472616E736C61746549675265706F72744E616D657328206461746120290A2020202020202020202020207D0A202020202020202020207D0A2020202020202020293B0A0A2020202020207D293B0A';
wwv_flow_api.g_varchar2_table(26) := '0A202020207D0A0A20207D0A20202F2F20707269766174652066756E6374696F6E20666F722068616E646C696E672049470A202066756E6374696F6E207472616E736C61746549675265706F72744E616D65732820705F6F7074696F6E7320297B0A0A20';
wwv_flow_api.g_varchar2_table(27) := '2020202F2F20676574204947207265706F7274732073656C656374206C6973740A20202020766172206C5F69725265706F7253656C65637424203D20242820222322202B20705F6F7074696F6E735B305D2E726567696F6E202B20225F69675F746F6F6C';
wwv_flow_api.g_varchar2_table(28) := '6261722220292E66696E6428202273656C6563742220293B0A0A202020202F2F206C6F6F70207472616E736C61746564207265706F7274206E616D657320616E64206368616E6765207265706F7274206E616D6520746F204947207265706F7274207365';
wwv_flow_api.g_varchar2_table(29) := '6C6563746F720A20202020242E656163682820705F6F7074696F6E735B305D2E7265706F7274732C2066756E6374696F6E2820692C207265706F727420297B0A0A2020202020202F2F20676574204947207265706F7274732073656C656374206C697374';
wwv_flow_api.g_varchar2_table(30) := '206F7074696F6E0A2020202020202F2F206279207265706F727420696420616E64206368616E6765206F7074696F6E20746578740A2020202020206C5F6F7074696F6E24203D206C5F69725265706F7253656C656374242E66696E642820226F7074696F';
wwv_flow_api.g_varchar2_table(31) := '6E5B76616C75653D5C2222202B207265706F72742E6964202B20225C225D2220292E7465787428207265706F72742E6E616D6520293B0A0A202020207D293B0A0A20207D0A0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(208184774072078665953)
,p_plugin_id=>wwv_flow_api.id(239108629808710110967)
,p_file_name=>'js/script.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '66756E6374696F6E207472616E736C61746549725265706F72744E616D657328652C74297B696628313D3D3D652E6C656E67746829696628224E41544956455F4952223D3D3D655B305D2E74797065297B766172206E3D24282223222B655B305D2E7265';
wwv_flow_api.g_varchar2_table(2) := '67696F6E2B225F73617665645F7265706F72747322292C693D6E2E66696E6428226F7074696F6E3A73656C656374656422292E7465787428293B693D692E737562737472696E6728692E696E6465784F6628222E2022292B32292C242E6561636828655B';
wwv_flow_api.g_varchar2_table(3) := '305D2E7265706F7274732C66756E6374696F6E28652C74297B76617220693D6E2E66696E6428276F7074696F6E5B76616C75653D22272B742E69642B27225D27292C723D692E7465787428292C6F3D722E737562737472696E6728302C722E696E646578';
wwv_flow_api.g_varchar2_table(4) := '4F6628222E2022292B32293B692E74657874286F2B742E6E616D65297D293B76617220723D24282223222B655B305D2E726567696F6E2B225F636F6E74726F6C5F746578745F6164656661756C7422292C6F3D6E2E66696E6428226F7074696F6E3A7365';
wwv_flow_api.g_varchar2_table(5) := '6C656374656422292E7465787428293B6F3D6F2E737562737472696E67286F2E696E6465784F6628222E2022292B32292C722E7465787428722E7465787428292E7265706C61636528692C6F29292C24282223222B655B305D2E726567696F6E2B275F63';
wwv_flow_api.g_varchar2_table(6) := '6F6E74726F6C5F70616E656C5F73756D6D61727920615B646174612D73657474696E673D227265706F72742D64656661756C74225D207370616E2E612D4952522D7265706F727453756D6D6172792D76616C756527292E74657874286F297D656C736520';
wwv_flow_api.g_varchar2_table(7) := '696628224E41544956455F4947223D3D3D655B305D2E74797065297B612865292C24282223222B655B305D2E726567696F6E292E6F6E2822696E74657261637469766567726964766965776368616E676520696E74657261637469766567726964726570';
wwv_flow_api.g_varchar2_table(8) := '6F727473657474696E67736368616E6765222C66756E6374696F6E28742C6E297B617065782E64656275672E696E666F2874293B617065782E7365727665722E706C7567696E28655B305D2E616A61785F6964656E7469666965722C7B7830313A655B30';
wwv_flow_api.g_varchar2_table(9) := '5D2E726567696F6E7D2C7B737563636573733A66756E6374696F6E2865297B617065782E64656275672E696E666F2865292C612865297D7D297D297D66756E6374696F6E20612865297B76617220743D24282223222B655B305D2E726567696F6E2B225F';
wwv_flow_api.g_varchar2_table(10) := '69675F746F6F6C62617222292E66696E64282273656C65637422293B242E6561636828655B305D2E7265706F7274732C66756E6374696F6E28652C6E297B6C5F6F7074696F6E243D742E66696E6428276F7074696F6E5B76616C75653D22272B6E2E6964';
wwv_flow_api.g_varchar2_table(11) := '2B27225D27292E74657874286E2E6E616D65297D297D7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(208184774392399665954)
,p_plugin_id=>wwv_flow_api.id(239108629808710110967)
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
