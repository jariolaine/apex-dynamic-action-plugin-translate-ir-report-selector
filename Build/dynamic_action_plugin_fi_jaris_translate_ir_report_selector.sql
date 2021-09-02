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
,p_default_application_id=>95638
,p_default_id_offset=>0
,p_default_owner=>'DBSWH'
);
end;
/
 
prompt APPLICATION 95638 - Test
--
-- Application Export:
--   Application:     95638
--   Name:            Test
--   Date and Time:   15:17 Thursday September 2, 2021
--   Exported By:     JLAINE
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 62186737395408101864
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
 p_id=>wwv_flow_api.id(62186737395408101864)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'FI.JARIS.TRANSLATE_IR_REPORT_SELECTOR'
,p_display_name=>'Translate IR Report Selector'
,p_category=>'INIT'
,p_supported_ui_types=>'DESKTOP'
,p_javascript_file_urls=>'#PLUGIN_FILES#js/script#MIN#.js'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render(',
'  p_dynamic_action  apex_plugin.t_dynamic_action,',
'  p_plugin          apex_plugin.t_plugin',
')',
'return apex_plugin.t_dynamic_action_render_result',
'as',
'',
'  l_json        clob;',
'  l_result      apex_plugin.t_dynamic_action_render_result;',
'  l_mesg_prefix p_plugin.attribute_01%type                        := p_plugin.attribute_01;',
'  l_app_id      apex_application_page_regions.application_id%type := apex_application.g_flow_id;',
'  l_app_page_id apex_application_page_regions.page_id%type        := apex_application.g_flow_step_id;',
'  l_region_id   apex_application_page_regions.region_id%type      := p_dynamic_action.triggering_region_id;',
'  l_lang        apex_application_translations.language_code%type  := apex_application.g_browser_language;',
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
'  -- building the json object for translated IR saved report names',
'  select',
'    json_arrayagg(',
'      json_object(',
'        ''id'' value coalesce( v1.static_id, ''R'' || to_char( v1.region_id ) ),',
'        ''reports'' value json_arrayagg(',
'          json_object( ''id'' value to_char( v2.report_id ), ''name'' value apex_lang.message( v3.translatable_message ) )',
'        )',
'      )',
'    )',
'  into l_json',
'  from apex_application_page_regions v1',
'  join apex_application_page_ir_rpt v2',
'    on v1.region_id = v2.region_id',
'  join apex_application_translations v3',
'    on l_mesg_prefix || v2.report_alias = v3.translatable_message',
'  where 1 = 1',
'    and v1.application_id = l_app_id',
'    and v2.application_id = l_app_id',
'    and v3.application_id = l_app_id',
'    and v1.page_id = l_app_page_id',
'    and v2.page_id = l_app_page_id',
'    and v1.region_id = l_region_id',
'    and v2.region_id = l_region_id',
'    and v3.language_code = l_lang',
'  group by coalesce( v1.static_id, ''R'' || to_char( v1.region_id ) )',
'  ;',
'  apex_debug.info(''json object generated: %s'', l_json);',
'',
'  if l_json is null',
'  then',
'    l_json := ''[]'';',
'  end if;',
'',
'  l_result.javascript_function := ''function(){translateIrReportNames('' || l_json || '');}'';',
'',
'  -- all done, return l_result containing the javascript function',
'  return l_result;',
'',
'end render;',
''))
,p_api_version=>2
,p_render_function=>'render'
,p_standard_attributes=>'ONLOAD'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_files_version=>12
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(62457322613964793735)
,p_plugin_id=>wwv_flow_api.id(62186737395408101864)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'APEX Text Message Prefix'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'IR_REPORT_ALIAS_'
,p_display_length=>25
,p_max_length=>20
,p_is_translatable=>false
,p_text_case=>'UPPER'
,p_help_text=>'Specify the prefix for text message names. The translation of the report name is retrieved from the text messages with a string consisting of a prefix and a saved report alias.'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '66756E6374696F6E207472616E736C61746549725265706F72744E616D65732820705F6A736F6E20297B0A20202F2F20636865636B207468617420746865726520697320646174610A202069662820705F6A736F6E2E6C656E677468203D3D3D20312029';
wwv_flow_api.g_varchar2_table(2) := '7B0A202020202F2F20676574204952207265706F7274732073656C656374206C6973740A20202020766172206C5F69725265706F7253656C65637424203D20242820222322202B20705F6A736F6E5B305D2E6964202B20225F73617665645F7265706F72';
wwv_flow_api.g_varchar2_table(3) := '74732220293B0A202020202F2F206C6F6F70207472616E736C61746564207265706F7274206E616D657320616E64206368616E6765207265706F7274206E616D6520746F204952207265706F72742073656C656374206C6973740A20202020242E656163';
wwv_flow_api.g_varchar2_table(4) := '682820705F6A736F6E5B305D2E7265706F7274732C2066756E6374696F6E2820692C207265706F727420297B0A2020202020202F2F20676574204952207265706F7274732073656C656374206C697374206F7074696F6E206279207265706F7274206964';
wwv_flow_api.g_varchar2_table(5) := '20616E642065787472616374207072656669780A202020202020766172206C5F6F7074696F6E24203D206C5F69725265706F7253656C656374242E66696E642820226F7074696F6E5B76616C75653D5C2222202B207265706F72742E6964202B20225C22';
wwv_flow_api.g_varchar2_table(6) := '5D2220290A20202020202020202C6C5F6F6C644E616D65203D206C5F6F7074696F6E242E7465787428290A20202020202020202C6C5F6E616D65507265666978203D206C5F6F6C644E616D652E737562737472696E672820302C206C5F6F6C644E616D65';
wwv_flow_api.g_varchar2_table(7) := '2E696E6465784F662820222E20222029202B203220290A2020202020203B0A2020202020202F2F206368616E6765206F7074696F6E20746578740A2020202020206C5F6F7074696F6E242E7465787428206C5F6E616D65507265666978202B207265706F';
wwv_flow_api.g_varchar2_table(8) := '72742E6E616D6520293B0A202020207D293B0A20207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(31262881658776656850)
,p_plugin_id=>wwv_flow_api.id(62186737395408101864)
,p_file_name=>'js/script.js'
,p_mime_type=>'application/x-javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '66756E6374696F6E207472616E736C61746549725265706F72744E616D65732874297B696628313D3D3D742E6C656E677468297B76617220653D24282223222B745B305D2E69642B225F73617665645F7265706F72747322293B242E6561636828745B30';
wwv_flow_api.g_varchar2_table(2) := '5D2E7265706F7274732C66756E6374696F6E28742C6E297B76617220693D652E66696E6428276F7074696F6E5B76616C75653D22272B6E2E69642B27225D27292C723D692E7465787428292C613D722E737562737472696E6728302C722E696E6465784F';
wwv_flow_api.g_varchar2_table(3) := '6628222E2022292B32293B692E7465787428612B6E2E6E616D65297D297D7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(31262881979097656851)
,p_plugin_id=>wwv_flow_api.id(62186737395408101864)
,p_file_name=>'js/script.min.js'
,p_mime_type=>'application/x-javascript'
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
