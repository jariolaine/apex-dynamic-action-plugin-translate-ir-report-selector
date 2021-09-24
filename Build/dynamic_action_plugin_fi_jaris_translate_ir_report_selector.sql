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
 
prompt APPLICATION 19212 - Translate IR report selector plug-in demo
--
-- Application Export:
--   Application:     19212
--   Name:            Translate IR report selector plug-in demo
--   Date and Time:   16:55 Friday September 24, 2021
--   Exported By:     JLAINE
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 166403411937284833797
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
 p_id=>wwv_flow_api.id(166403411937284833797)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'FI.JARIS.TRANSLATE_IR_REPORT_SELECTOR'
,p_display_name=>'Translate IR/IG Report Selector'
,p_category=>'INIT'
,p_supported_ui_types=>'DESKTOP'
,p_javascript_file_urls=>'#PLUGIN_FILES#js/script#MIN#.js'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  function render(',
'    p_dynamic_action  apex_plugin.t_dynamic_action,',
'    p_plugin          apex_plugin.t_plugin',
'  )',
'  return apex_plugin.t_dynamic_action_render_result',
'  as',
'',
'    l_json              clob;',
'    l_result            apex_plugin.t_dynamic_action_render_result;',
'    l_ir_mesg_prefix    p_plugin.attribute_01%type                        := p_plugin.attribute_01;',
'    l_ig_mesg_prefix    p_plugin.attribute_02%type                        := p_plugin.attribute_02;',
'    l_app_id            apex_application_page_regions.application_id%type := apex_application.g_flow_id;',
'    l_app_page_id       apex_application_page_regions.page_id%type        := apex_application.g_flow_step_id;',
'    l_region_id         apex_application_page_regions.region_id%type      := p_dynamic_action.triggering_region_id;',
'    l_lang              apex_application_translations.language_code%type  := apex_application.g_browser_language;',
'',
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
'    -- fetch source_type_plugin_name to check is region IR or IG',
'    begin',
'',
'      select static_id',
'        ,source_type_plugin_name',
'      into l_region_static_id, l_region_type',
'      from apex_application_page_regions',
'      where 1 = 1',
'        and application_id = l_app_id',
'        and page_id = l_app_page_id',
'        and region_id = l_region_id',
'        and source_type_plugin_name in( ''NATIVE_IR'', ''NATIVE_IG'' )',
'      ;',
'',
'      apex_debug.info( ''Region type: %s static id: %s'', l_region_type, l_region_static_id );',
'',
'      if l_region_static_id is null',
'      then',
'        l_region_static_id := ''R'' || to_char( l_region_id );',
'      end if;',
'',
'      -- building the json object for translated IR saved report names',
'      if l_region_type = ''NATIVE_IR''',
'      then',
'',
'        select',
'          json_arrayagg(',
'            json_object(',
'              ''id'' value l_region_static_id,',
'              ''type'' value l_region_type,',
'              ''reports'' value json_arrayagg(',
'                json_object( ''id'' value to_char( v2.report_id ), ''name'' value apex_lang.message( v3.translatable_message ) )',
'              )',
'            )',
'          )',
'        into l_json',
'        from apex_application_page_ir_rpt v2',
'        join apex_application_translations v3',
'          on l_ir_mesg_prefix || v2.report_alias = v3.translatable_message',
'        where 1 = 1',
'          and v2.application_id = l_app_id',
'          and v3.application_id = l_app_id',
'          and v2.page_id = l_app_page_id',
'          and v2.region_id = l_region_id',
'          and v3.language_code = l_lang',
'          group by l_region_static_id',
'            ,l_region_type',
'        ;',
'',
'      -- building the json object for translated IG saved report names',
'      elsif l_region_type = ''NATIVE_IG''',
'      then',
'',
'        select',
'          json_arrayagg(',
'            json_object(',
'              ''id'' value l_region_static_id,',
'              ''type'' value l_region_type,',
'              ''reports'' value json_arrayagg(',
'                json_object( ''id'' value to_char( v2.report_id ), ''name'' value apex_lang.message( v3.translatable_message ) )',
'              )',
'            )',
'          )',
'        into l_json',
'        from apex_appl_page_ig_rpts v2',
'        join apex_application_translations v3',
'          on l_ig_mesg_prefix || v2.static_id = v3.translatable_message',
'        where 1 = 1',
'          and v2.application_id = l_app_id',
'          and v3.application_id = l_app_id',
'          and v2.page_id = l_app_page_id',
'          and v2.region_id = l_region_id',
'          and v3.language_code = l_lang',
'        group by l_region_static_id',
'          ,l_region_type',
'        ;',
'',
'      end if;',
'',
'    -- exception if region is not IR or IG',
'    exception when no_data_found',
'    then',
'      null;',
'    end;',
'',
'    if l_json is null',
'    then',
'      l_json := ''[]'';',
'    end if;',
'',
'    apex_debug.info( ''json object generated: %s'', l_json );',
'',
'    l_result.javascript_function := ''function(){translateIrReportNames( '' || l_json || '');}'';',
'',
'    -- all done, return l_result containing the javascript function',
'    return l_result;',
'',
'  end render;'))
,p_api_version=>2
,p_render_function=>'render'
,p_standard_attributes=>'ONLOAD'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.1'
,p_about_url=>'https://github.com/jariolaine/apex-dynamic-action-plugin-translate-ir-report-selector'
,p_files_version=>32
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(166673997155841525668)
,p_plugin_id=>wwv_flow_api.id(166403411937284833797)
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
 p_id=>wwv_flow_api.id(72592976794357397974)
,p_plugin_id=>wwv_flow_api.id(166403411937284833797)
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
wwv_flow_api.g_varchar2_table(1) := '66756E6374696F6E207472616E736C61746549725265706F72744E616D65732820705F6A736F6E20297B0A20202F2F20636865636B207468617420746865726520697320646174610A202069662820705F6A736F6E2E6C656E677468203D3D3D20312029';
wwv_flow_api.g_varchar2_table(2) := '7B0A0A202020202F2F20696620726567696F6E2069732049520A2020202069662820705F6A736F6E5B305D2E74797065203D3D3D20224E41544956455F49522220297B0A2020202020202F2F20676574204952207265706F7274732073656C656374206C';
wwv_flow_api.g_varchar2_table(3) := '6973740A202020202020766172206C5F69725265706F7253656C65637424203D20242820222322202B20705F6A736F6E5B305D2E6964202B20225F73617665645F7265706F7274732220293B0A2020202020202F2F206765742073656C65637465642072';
wwv_flow_api.g_varchar2_table(4) := '65706F72742063757272656E74206E616D650A202020202020766172206C5F73656172636856616C7565203D206C5F69725265706F7253656C656374242E66696E642820226F7074696F6E3A73656C65637465642220292E7465787428293B0A20202020';
wwv_flow_api.g_varchar2_table(5) := '20206C5F73656172636856616C7565203D206C5F73656172636856616C75652E737562737472696E6728206C5F73656172636856616C75652E696E6465784F662820222E20222029202B203220293B0A0A2020202020202F2F206C6F6F70207472616E73';
wwv_flow_api.g_varchar2_table(6) := '6C61746564207265706F7274206E616D657320616E64206368616E6765207265706F7274206E616D6520746F204952207265706F72742073656C6563746F720A202020202020242E656163682820705F6A736F6E5B305D2E7265706F7274732C2066756E';
wwv_flow_api.g_varchar2_table(7) := '6374696F6E2820692C207265706F727420297B0A20202020202020202F2F20676574204952207265706F7274732073656C656374206C697374206F7074696F6E206279207265706F727420696420616E642065787472616374207072656669780A202020';
wwv_flow_api.g_varchar2_table(8) := '2020202020766172206C5F6F7074696F6E24203D206C5F69725265706F7253656C656374242E66696E642820226F7074696F6E5B76616C75653D5C2222202B207265706F72742E6964202B20225C225D2220290A202020202020202020202C6C5F6F6C64';
wwv_flow_api.g_varchar2_table(9) := '4E616D65203D206C5F6F7074696F6E242E7465787428290A202020202020202020202C6C5F6E616D65507265666978203D206C5F6F6C644E616D652E737562737472696E672820302C206C5F6F6C644E616D652E696E6465784F662820222E2022202920';
wwv_flow_api.g_varchar2_table(10) := '2B203220290A20202020202020203B0A20202020202020202F2F206368616E6765206F7074696F6E20746578740A20202020202020206C5F6F7074696F6E242E7465787428206C5F6E616D65507265666978202B207265706F72742E6E616D6520293B0A';
wwv_flow_api.g_varchar2_table(11) := '2020202020207D293B0A2020202020200A2020202020202F2F2067657420616C7465726E61746976652064656661756C7420636F6E74726F6C6C206C6162656C0A202020202020766172206C5F636F6E74726F6C24203D20242820222322202B20705F6A';
wwv_flow_api.g_varchar2_table(12) := '736F6E5B305D2E6964202B20225F636F6E74726F6C5F746578745F6164656661756C742220293B0A202020202020766172206C5F7265706C61636556616C7565203D206C5F69725265706F7253656C656374242E66696E642820226F7074696F6E3A7365';
wwv_flow_api.g_varchar2_table(13) := '6C65637465642220292E7465787428293B0A2020202020202F2F206368616E676520616C7465726E61746976652064656661756C7420636F6E74726F6C6C206C6162656C0A2020202020206C5F7265706C61636556616C7565203D206C5F7265706C6163';
wwv_flow_api.g_varchar2_table(14) := '6556616C75652E737562737472696E6728206C5F7265706C61636556616C75652E696E6465784F662820222E20222029202B203220293B0A2020202020206C5F636F6E74726F6C242E7465787428206C5F636F6E74726F6C242E7465787428292E726570';
wwv_flow_api.g_varchar2_table(15) := '6C61636528206C5F73656172636856616C75652C206C5F7265706C61636556616C7565202920293B0A202020202020242820222322202B20705F6A736F6E5B305D2E6964202B20225F636F6E74726F6C5F70616E656C5F73756D6D61727920615B646174';
wwv_flow_api.g_varchar2_table(16) := '612D73657474696E673D5C227265706F72742D64656661756C745C225D207370616E2E612D4952522D7265706F727453756D6D6172792D76616C756522292E7465787428206C5F7265706C61636556616C756520293B0A0A202020202F2F206966207265';
wwv_flow_api.g_varchar2_table(17) := '67696F6E2069732049470A202020207D20656C73652069662820705F6A736F6E5B305D2E74797065203D3D3D20224E41544956455F49472220297B0A0A2020202020202F2F20676574204947207265706F7274732073656C656374206C6973740A202020';
wwv_flow_api.g_varchar2_table(18) := '202020766172206C5F69725265706F7253656C65637424203D202428222322202B20705F6A736F6E5B305D2E6964202B20225F69675F746F6F6C62617222292E66696E64282273656C65637422293B0A2020202020202F2F206C6F6F70207472616E736C';
wwv_flow_api.g_varchar2_table(19) := '61746564207265706F7274206E616D657320616E64206368616E6765207265706F7274206E616D6520746F204947207265706F72742073656C6563746F720A202020202020242E656163682820705F6A736F6E5B305D2E7265706F7274732C2066756E63';
wwv_flow_api.g_varchar2_table(20) := '74696F6E2820692C207265706F727420297B0A20202020202020202F2F20676574204947207265706F7274732073656C656374206C697374206F7074696F6E206279207265706F72742069640A2020202020202020766172206C5F6F7074696F6E24203D';
wwv_flow_api.g_varchar2_table(21) := '206C5F69725265706F7253656C656374242E66696E642820226F7074696F6E5B76616C75653D5C2222202B207265706F72742E6964202B20225C225D2220293B0A20202020202020202F2F206368616E6765206F7074696F6E20746578740A2020202020';
wwv_flow_api.g_varchar2_table(22) := '2020206C5F6F7074696F6E242E7465787428207265706F72742E6E616D6520293B0A2020202020207D293B0A0A202020207D0A0A20207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(135479556200653388783)
,p_plugin_id=>wwv_flow_api.id(166403411937284833797)
,p_file_name=>'js/script.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '66756E6374696F6E207472616E736C61746549725265706F72744E616D65732874297B696628313D3D3D742E6C656E67746829696628224E41544956455F4952223D3D3D745B305D2E74797065297B76617220653D28613D24282223222B745B305D2E69';
wwv_flow_api.g_varchar2_table(2) := '642B225F73617665645F7265706F7274732229292E66696E6428226F7074696F6E3A73656C656374656422292E7465787428293B653D652E737562737472696E6728652E696E6465784F6628222E2022292B32292C242E6561636828745B305D2E726570';
wwv_flow_api.g_varchar2_table(3) := '6F7274732C66756E6374696F6E28742C65297B766172206E3D612E66696E6428276F7074696F6E5B76616C75653D22272B652E69642B27225D27292C693D6E2E7465787428292C723D692E737562737472696E6728302C692E696E6465784F6628222E20';
wwv_flow_api.g_varchar2_table(4) := '22292B32293B6E2E7465787428722B652E6E616D65297D293B766172206E3D24282223222B745B305D2E69642B225F636F6E74726F6C5F746578745F6164656661756C7422292C693D612E66696E6428226F7074696F6E3A73656C656374656422292E74';
wwv_flow_api.g_varchar2_table(5) := '65787428293B693D692E737562737472696E6728692E696E6465784F6628222E2022292B32292C6E2E74657874286E2E7465787428292E7265706C61636528652C6929292C24282223222B745B305D2E69642B275F636F6E74726F6C5F70616E656C5F73';
wwv_flow_api.g_varchar2_table(6) := '756D6D61727920615B646174612D73657474696E673D227265706F72742D64656661756C74225D207370616E2E612D4952522D7265706F727453756D6D6172792D76616C756527292E746578742869297D656C736520696628224E41544956455F494722';
wwv_flow_api.g_varchar2_table(7) := '3D3D3D745B305D2E74797065297B76617220613D24282223222B745B305D2E69642B225F69675F746F6F6C62617222292E66696E64282273656C65637422293B242E6561636828745B305D2E7265706F7274732C66756E6374696F6E28742C65297B612E';
wwv_flow_api.g_varchar2_table(8) := '66696E6428276F7074696F6E5B76616C75653D22272B652E69642B27225D27292E7465787428652E6E616D65297D297D7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(135479556520974388784)
,p_plugin_id=>wwv_flow_api.id(166403411937284833797)
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
