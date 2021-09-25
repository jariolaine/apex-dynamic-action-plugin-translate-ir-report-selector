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
--   Export Type:     Application Export
--     Pages:                      3
--       Items:                    3
--       Processes:                4
--       Regions:                  5
--       Buttons:                  1
--       Dynamic Actions:          2
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:              1
--       Security:
--         Authentication:         3
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--           Page:                 9
--           Region:              17
--           Label:                7
--           List:                13
--           Popup LOV:            1
--           Calendar:             1
--           Breadcrumb:           1
--           Button:               3
--           Report:              12
--         LOVs:                   2
--         Shortcuts:              1
--         Plug-ins:               1
--       Globalization:
--         Messages:             970
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--       Install scripts:          1
--   Version:         21.1.2
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'DBSWH')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Translate IR/IG report selector plug-in demo')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'TRANSLATE-IR-REPORT-SELECTOR-PLUG-IN-DEMO')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'EBA9D6FF332F8D5FAECEBB6618AEFC8A4C3004A154757A9836213150FF4CDFDD'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'19.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'SESSION'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2021.09.04.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(36327812147386458003)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'&APP_NAME.'
,p_app_builder_icon_name=>'app-icon.svg'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.2'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_deep_linking=>'Y'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Translate IR/IG Report Selector Plug-in Demo'
,p_last_updated_by=>'JLAINE'
,p_last_upd_yyyymmddhh24miss=>'20210925091359'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
,p_print_server_type=>'INSTANCE'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(31621176766460255293)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31621533555722255376)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(31621523262079255363)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31623187094212650804)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Finnish'
,p_list_item_link_target=>'f?p=&APP_ALIAS.:&APP_PAGE_ID.:&SESSION.:&REQUEST.:&DEBUG.:::&p_lang=fi'
,p_list_item_icon=>'fa-language'
,p_list_item_current_type=>'ALWAYS'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31622917508598290883)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'English'
,p_list_item_link_target=>'f?p=&APP_ALIAS.:&APP_PAGE_ID.:&SESSION.:&REQUEST.:&DEBUG.:::&p_lang=en'
,p_list_item_icon=>'fa-language'
,p_list_item_current_type=>'ALWAYS'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31621535050406255379)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31621535526417255379)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(31621535050406255379)
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31621535974884255379)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(31621535050406255379)
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files/app_icon_svg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667222076696577426F783D22302030203634203634222077696474683D22363422206865696768743D223634223E3C726563742077696474683D2231303025';
wwv_flow_api.g_varchar2_table(2) := '22206865696768743D2231303025222066696C6C3D222333303946444222202F3E3C67206F7061636974793D222E32223E3C7061746820643D224D333220323661322E3520322E3520302031203020322E3520322E3541322E35303320322E3530332030';
wwv_flow_api.g_varchar2_table(3) := '203020302033322032367A6D30203461312E3520312E3520302031203120312E352D312E3541312E35303220312E3530322030203020312033322033307A222F3E3C7061746820643D224D34322E3533362033362E3832386C2D322E3637332D322E3637';
wwv_flow_api.g_varchar2_table(4) := '324131382E3937332031382E39373320302030203020343020333263302D352E3835352D322E3732332D31312E3439332D372E3636382D31352E383734612E352E352030203020302D2E36363420304332362E3732332032302E3530372032342032362E';
wwv_flow_api.g_varchar2_table(5) := '3134352032342033326131382E3937332031382E393733203020302030202E31333720322E3135366C2D322E36373320322E36373341342E39363720342E3936372030203020302032302034302E3336345634372E35612E352E35203020302030202E35';
wwv_flow_api.g_varchar2_table(6) := '2E3568312E30373561332E30303220332E30303220302030203020312E3935322D2E3732326C342E332D332E363835632E3431312E3538322E38343720312E31353520312E33323220312E37313261322E30303120322E30303120302030203020312E35';
wwv_flow_api.g_varchar2_table(7) := '32372E363935682E38323476312E35612E352E3520302030203020312030563436682E38323461322E30303120322E30303120302030203020312E3532372D2E3639352032332E37382032332E373820302030203020312E3332332D312E3731326C342E';
wwv_flow_api.g_varchar2_table(8) := '32393820332E36383461332E30303220332E30303220302030203020312E3935332E3732334834332E35612E352E35203020302030202E352D2E35762D372E31333661342E393720342E39372030203020302D312E3436342D332E3533367A4D33322031';
wwv_flow_api.g_varchar2_table(9) := '372E3137334132322E3839372032322E3839372030203020312033362E363237203233682D392E3235344132322E3839372032322E3839372030203020312033322031372E3137337A4D32322E3837362034362E3532613220322030203020312D312E33';
wwv_flow_api.g_varchar2_table(10) := '2E343831483231762D362E36333661332E39373320332E39373320302030203120312E3137312D322E3832386C322E31342D322E31346132302E3330312032302E33303120302030203020322E39353920372E3335377A6D31312E3231342D312E383633';
wwv_flow_api.g_varchar2_table(11) := '61312E30313420312E3031342030203020312D2E3736362E3334344833322E35762D392E35612E352E352030203020302D312030563435682D2E38323461312E30313420312E3031342030203020312D2E3736362D2E3334344131392E342031392E3420';
wwv_flow_api.g_varchar2_table(12) := '30203020312032352033326131382E3434362031382E34343620302030203120312E3835382D386831302E3238344131382E3434362031382E3434362030203020312033392033326131392E342031392E342030203020312D342E39312031322E363536';
wwv_flow_api.g_varchar2_table(13) := '7A4D3433203437682D2E353735613220322030203020312D312E3330322D2E3438326C2D342E3339332D332E3736356132302E332032302E3320302030203020322E3935382D372E3335386C322E313420322E313441332E39373520332E393735203020';
wwv_flow_api.g_varchar2_table(14) := '3020312034332034302E3336347A222F3E3C2F673E3C7061746820643D224D33322031372E3137334132322E3839372032322E3839372030203020312033362E363237203233682D392E3235344132322E3839372032322E383937203020302031203332';
wwv_flow_api.g_varchar2_table(15) := '2031372E3137337A4D32322E3837362034362E3532613220322030203020312D312E332E343831483231762D362E36333661332E39373320332E39373320302030203120312E3137312D322E3832386C322E31342D322E31346132302E3330312032302E';
wwv_flow_api.g_varchar2_table(16) := '33303120302030203020322E39353920372E3335377A4D3433203437682D2E353735613220322030203020312D312E3330322D2E3438326C2D342E3339332D332E3736356132302E332032302E3320302030203020322E3935382D372E3335386C322E31';
wwv_flow_api.g_varchar2_table(17) := '3420322E313441332E39373520332E3937352030203020312034332034302E3336347A222066696C6C3D222366636662666122206F7061636974793D222E34222F3E3C7061746820643D224D33372E3134322032344832362E3835384131382E34343620';
wwv_flow_api.g_varchar2_table(18) := '31382E3434362030203020302032352033326131392E342031392E3420302030203020342E39312031322E36353620312E30313420312E303134203020302030202E3736362E333434682E383234762D392E35612E352E35203020302031203120305634';
wwv_flow_api.g_varchar2_table(19) := '35682E38323461312E30313420312E303134203020302030202E3736362D2E3334344131392E342031392E342030203020302033392033326131382E3434362031382E3434362030203020302D312E3835382D387A4D333220333161322E3520322E3520';
wwv_flow_api.g_varchar2_table(20) := '302031203120322E352D322E3541322E35303320322E3530332030203020312033322033317A222066696C6C3D222366666622206F7061636974793D222E3935222F3E3C7061746820643D224D333220333061312E3520312E3520302031203120312E35';
wwv_flow_api.g_varchar2_table(21) := '2D312E3541312E35303220312E3530322030203020312033322033307A222066696C6C3D222366636662666122206F7061636974793D222E36222F3E3C2F7376673E';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(31621524517360255366)
,p_file_name=>'app-icon.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/app_icon_css
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E6170702D69636F6E207B0A202020206261636B67726F756E642D696D6167653A2075726C286170702D69636F6E2E737667293B0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A202020206261636B67726F756E';
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20233330394644423B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(31621524884720255367)
,p_file_name=>'app-icon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(31621173296018255290)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'FULL'
,p_attribute_02=>'POPUP'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(31621173554499255290)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_JET'
,p_attribute_01=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_02=>'VISIBLE'
,p_attribute_03=>'15'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(31621173893499255291)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(31621174193139255291)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(31621174421959255291)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(31621174709756255291)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH_CB'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(31621175088010255291)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(31621175358196255291)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(31621175677234255292)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(31627359497884619924)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'PLUGIN_FI.JARIS.TRANSLATE_IR_REPORT_SELECTOR'
,p_attribute_01=>'IR_REPORT_ALIAS_'
,p_attribute_02=>'IG_REPORT_ALIAS_'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(31621526123046255368)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/job
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31629424175974027258)
,p_lov_name=>'JOB'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct apex_lang.lang(job) as d',
'  ,job as r',
'from emp'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31621528739140255372)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(31621528739140255372)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31621529187565255372)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Remember username'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(31621526790294255369)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(31621176282602255292)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(31621176484621255292)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31621177093235255293)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim t-PageTemplate--leftCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main class="t-Body-mainContent" id="main">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621177335273255293)
,p_page_template_id=>wwv_flow_api.id(31621177093235255293)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621177623868255294)
,p_page_template_id=>wwv_flow_api.id(31621177093235255293)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621177960913255294)
,p_page_template_id=>wwv_flow_api.id(31621177093235255293)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621178276161255294)
,p_page_template_id=>wwv_flow_api.id(31621177093235255293)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621178516267255294)
,p_page_template_id=>wwv_flow_api.id(31621177093235255293)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621178860704255294)
,p_page_template_id=>wwv_flow_api.id(31621177093235255293)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621179148024255294)
,p_page_template_id=>wwv_flow_api.id(31621177093235255293)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621179481638255294)
,p_page_template_id=>wwv_flow_api.id(31621177093235255293)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31621179868372255295)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim t-PageTemplate--leftRightCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621180157575255295)
,p_page_template_id=>wwv_flow_api.id(31621179868372255295)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621180464450255295)
,p_page_template_id=>wwv_flow_api.id(31621179868372255295)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621180725242255295)
,p_page_template_id=>wwv_flow_api.id(31621179868372255295)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621181029453255296)
,p_page_template_id=>wwv_flow_api.id(31621179868372255295)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621181320729255296)
,p_page_template_id=>wwv_flow_api.id(31621179868372255295)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621181612725255296)
,p_page_template_id=>wwv_flow_api.id(31621179868372255295)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621181987634255296)
,p_page_template_id=>wwv_flow_api.id(31621179868372255295)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621182208319255296)
,p_page_template_id=>wwv_flow_api.id(31621179868372255295)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621182519471255296)
,p_page_template_id=>wwv_flow_api.id(31621179868372255295)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31621182912905255296)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody--login t-PageTemplate--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-container">',
'  <header class="t-Login-containerHeader">#REGION_POSITION_01#</header>',
'  <main class="t-Login-containerBody" id="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</main>',
'  <footer class="t-Login-containerFooter">#REGION_POSITION_02#</footer>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621183299486255297)
,p_page_template_id=>wwv_flow_api.id(31621182912905255296)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621183504432255297)
,p_page_template_id=>wwv_flow_api.id(31621182912905255296)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621183829827255297)
,p_page_template_id=>wwv_flow_api.id(31621182912905255296)
,p_name=>'Body Footer'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31621185251770255298)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim t-PageTemplate--marquee #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-info" id="t_Body_info">#REGION_POSITION_02#</div>',
'        <div class="t-Body-contentInner" role="main">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621185551857255298)
,p_page_template_id=>wwv_flow_api.id(31621185251770255298)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621185822244255298)
,p_page_template_id=>wwv_flow_api.id(31621185251770255298)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621186171663255298)
,p_page_template_id=>wwv_flow_api.id(31621185251770255298)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621186456330255298)
,p_page_template_id=>wwv_flow_api.id(31621185251770255298)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621186719763255299)
,p_page_template_id=>wwv_flow_api.id(31621185251770255298)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621187022213255299)
,p_page_template_id=>wwv_flow_api.id(31621185251770255298)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621187348844255299)
,p_page_template_id=>wwv_flow_api.id(31621185251770255298)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621187634772255299)
,p_page_template_id=>wwv_flow_api.id(31621185251770255298)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621187978592255299)
,p_page_template_id=>wwv_flow_api.id(31621185251770255298)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31621188367439255299)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav t-PageTemplate--minimal" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621188648001255299)
,p_page_template_id=>wwv_flow_api.id(31621188367439255299)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621188921251255300)
,p_page_template_id=>wwv_flow_api.id(31621188367439255299)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621189264395255300)
,p_page_template_id=>wwv_flow_api.id(31621188367439255299)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621189525828255300)
,p_page_template_id=>wwv_flow_api.id(31621188367439255299)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621189864953255300)
,p_page_template_id=>wwv_flow_api.id(31621188367439255299)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621190106127255300)
,p_page_template_id=>wwv_flow_api.id(31621188367439255299)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621190447400255300)
,p_page_template_id=>wwv_flow_api.id(31621188367439255299)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31621190834087255300)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard t-PageTemplate--dialog #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621191158360255301)
,p_page_template_id=>wwv_flow_api.id(31621190834087255300)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621191443243255301)
,p_page_template_id=>wwv_flow_api.id(31621190834087255300)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621191738240255301)
,p_page_template_id=>wwv_flow_api.id(31621190834087255300)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31621192318937255301)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim t-PageTemplate--rightSideCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" aria-label="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button'
||'>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621192647895255301)
,p_page_template_id=>wwv_flow_api.id(31621192318937255301)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621192931829255302)
,p_page_template_id=>wwv_flow_api.id(31621192318937255301)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621193217731255302)
,p_page_template_id=>wwv_flow_api.id(31621192318937255301)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621193557719255302)
,p_page_template_id=>wwv_flow_api.id(31621192318937255301)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621193831992255302)
,p_page_template_id=>wwv_flow_api.id(31621192318937255301)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621194105245255302)
,p_page_template_id=>wwv_flow_api.id(31621192318937255301)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621194457071255302)
,p_page_template_id=>wwv_flow_api.id(31621192318937255301)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621194752889255302)
,p_page_template_id=>wwv_flow_api.id(31621192318937255301)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31621195171263255302)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim t-PageTemplate--standard #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621195477480255303)
,p_page_template_id=>wwv_flow_api.id(31621195171263255302)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621195751914255303)
,p_page_template_id=>wwv_flow_api.id(31621195171263255302)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621196082147255303)
,p_page_template_id=>wwv_flow_api.id(31621195171263255302)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621196367513255303)
,p_page_template_id=>wwv_flow_api.id(31621195171263255302)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621196682502255303)
,p_page_template_id=>wwv_flow_api.id(31621195171263255302)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621196931521255303)
,p_page_template_id=>wwv_flow_api.id(31621195171263255302)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621197229236255303)
,p_page_template_id=>wwv_flow_api.id(31621195171263255302)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31621197633132255304)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard t-PageTemplate--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621197916236255304)
,p_page_template_id=>wwv_flow_api.id(31621197633132255304)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621198294319255304)
,p_page_template_id=>wwv_flow_api.id(31621197633132255304)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621198507901255304)
,p_page_template_id=>wwv_flow_api.id(31621197633132255304)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(31621498338023255351)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidde'
||'n="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#"><span class="t-Icon #ICON_CSS_CLASSE'
||'S#" aria-hidden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(31621499050881255352)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(31621499165345255352)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31621199145235255304)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621199423254255305)
,p_plug_template_id=>wwv_flow_api.id(31621199145235255304)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31621402810378255307)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31621403089867255307)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621403399023255307)
,p_plug_template_id=>wwv_flow_api.id(31621403089867255307)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621403612802255307)
,p_plug_template_id=>wwv_flow_api.id(31621403089867255307)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31621403860380255307)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621404174371255307)
,p_plug_template_id=>wwv_flow_api.id(31621403860380255307)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621404439166255308)
,p_plug_template_id=>wwv_flow_api.id(31621403860380255307)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/cards_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31621406010362255308)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-CardsRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'  #BODY##SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Cards Container'
,p_internal_name=>'CARDS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>21
,p_default_template_options=>'u-colors'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2071277712695139743
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31621407086206255309)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Region-header">',
'    <div class="t-Region-headerItems t-Region-headerItems--title">',
'      <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'    </div>',
'    <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
'  </div>',
'  <div role="region" aria-label="#TITLE#" class="t-Region-bodyWrap">',
'    <div class="t-Region-buttons t-Region-buttons--top">',
'      <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'      <div class="t-Region-buttons-right">#NEXT#</div>',
'    </div>',
'    <div class="t-Region-body">',
'      #BODY#',
'      <div class="t-Region-carouselRegions">#SUB_REGIONS#</div>',
'    </div>',
'    <div class="t-Region-buttons t-Region-buttons--bottom">',
'      <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'      <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'    </div>',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621407367912255309)
,p_plug_template_id=>wwv_flow_api.id(31621407086206255309)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621407617312255309)
,p_plug_template_id=>wwv_flow_api.id(31621407086206255309)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31621414269373255312)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!HTML#" class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--controls"><button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button></div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" data-apex-heading>#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621414589446255312)
,p_plug_template_id=>wwv_flow_api.id(31621414269373255312)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621414855460255312)
,p_plug_template_id=>wwv_flow_api.id(31621414269373255312)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31621421693272255315)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header">',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--title">',
'      <span class="t-ContentBlock-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h1 class="t-ContentBlock-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h1>',
'      #EDIT#',
'    </div>',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--buttons">#CHANGE#</div>',
'  </div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31621424023109255316)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title" data-apex-heading>#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621424370999255316)
,p_plug_template_id=>wwv_flow_api.id(31621424023109255316)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31621426332576255317)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#" class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE!ATTR#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621426618177255318)
,p_plug_template_id=>wwv_flow_api.id(31621426332576255317)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_popup
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31621428611331255318)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#" class="t-DialogRegion #REGION_CSS_CLASSES# js-regionPopup" #REGION_ATTRIBUTES# style="display:none" title="#TITLE!ATTR#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Popup'
,p_internal_name=>'INLINE_POPUP'
,p_theme_id=>42
,p_theme_class_id=>24
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1483922538999385230
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621428927675255319)
,p_plug_template_id=>wwv_flow_api.id(31621428611331255318)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31621431967246255320)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31621432506200255320)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">#BODY#</div>',
'  <div class="t-Login-buttons">#NEXT#</div>',
'  <div class="t-Login-links">#EDIT##CREATE#</div>',
'  <div class="t-Login-subRegions">#SUB_REGIONS#</div>',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621432826676255320)
,p_plug_template_id=>wwv_flow_api.id(31621432506200255320)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31621433872064255321)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621434117850255321)
,p_plug_template_id=>wwv_flow_api.id(31621433872064255321)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621434471731255321)
,p_plug_template_id=>wwv_flow_api.id(31621433872064255321)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31621440660270255324)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">#SUB_REGIONS#</div>',
'</div>'))
,p_sub_plug_template=>'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">#SUB_REGION#</div>'
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621440948081255324)
,p_plug_template_id=>wwv_flow_api.id(31621440660270255324)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621441266376255324)
,p_plug_template_id=>wwv_flow_api.id(31621440660270255324)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31621443216507255325)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">#BODY#</div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText" data-apex-heading>#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31621444436522255326)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title" data-apex-heading>#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">#BODY#</div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">#SUB_REGIONS#</div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31621444711329255326)
,p_plug_template_id=>wwv_flow_api.id(31621444436522255326)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31621470702848255338)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31621474736640255340)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31621480311775255342)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31621481938974255343)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31621484725372255344)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31621485774064255345)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ iconType: ''fa'', callout: e.hasClass("js-menu-callout")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31621486358579255345)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" title="#A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" title="#A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#" title="#A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#" title="#A04#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_a04_label=>'Title Attribute'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31621486797529255345)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_default_template_options=>'js-defaultCollapsed'
,p_preset_template_options=>'js-navCollapsed--hidden:t-TreeNav--styleA'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31621488552874255346)
,p_list_template_current=>'<li class="t-Tabs-item is-active #A03#" id="#A01#"><a href="#LINK#" class="t-Tabs-link #A04#"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-Tabs-link #A04#"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_mega_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31621490246541255347)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_name=>'Top Navigation Mega Menu'
,p_internal_name=>'TOP_NAVIGATION_MEGA_MENU'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-MegaMenu #COMPONENT_CSS_CLASSES#" id="t_MenuNav" style="display:none;">',
'  <div class="a-Menu-content t-MegaMenu-container">',
'    <div class="t-MegaMenu-body">',
'    <ul class="t-MegaMenu-list t-MegaMenu-list--top">'))
,p_list_template_after_rows=>' </ul></div></div></div>'
,p_before_sub_list=>'<ul class="t-MegaMenu-list t-MegaMenu-list--sub">'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Description'
,p_a04_label=>'List Item Class'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_a07_label=>'Badge Class'
,p_a08_label=>'Menu Item Class'
,p_reference_id=>1665447133514362075
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31621492227555255348)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("#t_MenuNav", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="t_MenuNav"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31621493237772255348)
,p_list_template_current=>'<li class="t-NavTabs-item #A03# is-active" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class'
||'="t-NavTabs-badge #A05#">#A02#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-NavTabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class="t-NavTab'
||'s-badge #A05#">#A02#</span></a></li>'
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31621494872524255349)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></'
||'div></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>',
''))
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31621445724176255326)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31621445996595255327)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
' <span class="t-BadgeList-wrap u-color">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
' </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31621449991366255328)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31621455332738255331)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body">',
'        <div class="t-Comments-info">',
'            #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/content_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31621456531781255332)
,p_row_template_name=>'Content Row'
,p_internal_name=>'CONTENT_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-ContentRow-item #ITEM_CLASSES#">',
'  <div class="t-ContentRow-wrap">',
'    <div class="t-ContentRow-selection">#SELECTION#</div>',
'    <div class="t-ContentRow-iconWrap">',
'      <span class="t-ContentRow-icon #ICON_CLASS#">#ICON_HTML#</span>',
'    </div>',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        <h3 class="t-ContentRow-title">#TITLE#</h3>',
'        <div class="t-ContentRow-description">#DESCRIPTION#</div>',
'      </div>',
'      <div class="t-ContentRow-misc">#MISC#</div>',
'      <div class="t-ContentRow-actions">#ACTIONS#</div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-ContentRow #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1797843454948280151
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/contextual_info
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31621459742676255333)
,p_row_template_name=>'Contextual Info'
,p_internal_name=>'CONTEXTUAL_INFO'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContextualInfo-item">',
'  <span class="t-ContextualInfo-label">#COLUMN_HEADER#</span>',
'  <span class="t-ContextualInfo-value">#COLUMN_VALUE#</span>',
'</div>'))
,p_row_template_before_rows=>' <div class="t-ContextualInfo #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_reference_id=>2114325881116323585
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31621460784006255333)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_row_template_condition1=>':LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <div class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31621463716673255335)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31621463951478255335)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" id="report_table_#REGION_STATIC_ID#" aria-label="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(31621463951478255335)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31621466555958255336)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31621466974890255336)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31621468980436255337)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(31621496284501255350)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(31621496362403255350)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(31621496458531255350)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(31621496506754255350)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(31621496686327255350)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT##HELP_TEMPLATE#',
'  </div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>'))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(31621497312859255351)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer">',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT##HELP_TEMPLATE#',
'  </div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>'))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(31621497895150255351)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer">',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT##HELP_TEMPLATE#',
'  </div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>'))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(31621500425957255352)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(31621500622209255353)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(31621500598800255353)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(31621501885834255354)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(31621195171263255302)
,p_default_dialog_template=>wwv_flow_api.id(31621190834087255300)
,p_error_template=>wwv_flow_api.id(31621182912905255296)
,p_printer_friendly_template=>wwv_flow_api.id(31621195171263255302)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(31621182912905255296)
,p_default_button_template=>wwv_flow_api.id(31621499050881255352)
,p_default_region_template=>wwv_flow_api.id(31621433872064255321)
,p_default_chart_template=>wwv_flow_api.id(31621433872064255321)
,p_default_form_template=>wwv_flow_api.id(31621433872064255321)
,p_default_reportr_template=>wwv_flow_api.id(31621433872064255321)
,p_default_tabform_template=>wwv_flow_api.id(31621433872064255321)
,p_default_wizard_template=>wwv_flow_api.id(31621433872064255321)
,p_default_menur_template=>wwv_flow_api.id(31621443216507255325)
,p_default_listr_template=>wwv_flow_api.id(31621433872064255321)
,p_default_irr_template=>wwv_flow_api.id(31621431967246255320)
,p_default_report_template=>wwv_flow_api.id(31621463951478255335)
,p_default_label_template=>wwv_flow_api.id(31621496506754255350)
,p_default_menu_template=>wwv_flow_api.id(31621500425957255352)
,p_default_calendar_template=>wwv_flow_api.id(31621500598800255353)
,p_default_list_template=>wwv_flow_api.id(31621480311775255342)
,p_default_nav_list_template=>wwv_flow_api.id(31621492227555255348)
,p_default_top_nav_list_temp=>wwv_flow_api.id(31621492227555255348)
,p_default_side_nav_list_temp=>wwv_flow_api.id(31621486797529255345)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(31621403860380255307)
,p_default_dialogr_template=>wwv_flow_api.id(31621402810378255307)
,p_default_option_label=>wwv_flow_api.id(31621496506754255350)
,p_default_required_label=>wwv_flow_api.id(31621497895150255351)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(31621486358579255345)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/21.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(31621500865952255353)
,p_theme_id=>42
,p_name=>'Redwood Light'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_IMAGES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Redwood-Theme.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Redwood-Theme#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2596426436825065489
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(31621501049959255353)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(31621501236539255353)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(31621501447192255353)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(31621501665726255353)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621184163896255297)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND'
,p_display_name=>'Page Background'
,p_display_sequence=>20
,p_template_types=>'PAGE'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621184983884255298)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT'
,p_display_name=>'Page Layout'
,p_display_sequence=>10
,p_template_types=>'PAGE'
,p_null_text=>'Floating (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621199999243255305)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621400321635255306)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621400979526255306)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621401334857255306)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621404771578255308)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621405108863255308)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621407924895255309)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621408789727255310)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621409966609255310)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621411103100255311)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621411574795255311)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621413565301255312)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621418933060255314)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621419348145255314)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_ICON_POSITION'
,p_display_name=>'Collapsible Icon Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the position of the expand and collapse toggle for the region.'
,p_null_text=>'Start'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621420116013255315)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_BUTTON_ICONS'
,p_display_name=>'Collapsible Button Icons'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines which arrows to use to represent the icons for the collapse and expand button.'
,p_null_text=>'Arrows'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621422147452255316)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621422901227255316)
,p_theme_id=>42
,p_name=>'HEADING_FONT'
,p_display_name=>'Heading Font'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the font-family of the heading for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621423302208255316)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621424673007255317)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621425468689255317)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REGION'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Rounded Corners'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621427357557255318)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621429222451255319)
,p_theme_id=>42
,p_name=>'CALLOUT_POSITION'
,p_display_name=>'Callout Position'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Determines where the callout for the popup will be positioned relative to its parent.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621433157577255321)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER'
,p_display_name=>'Login Header'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the Login region header.'
,p_null_text=>'Icon and Title (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621441588580255325)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621441978272255325)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621442706876255325)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621445005861255326)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621446218992255327)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621446653922255327)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621448616566255328)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621450480100255329)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621452259473255330)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621453046746255330)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621454429717255331)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REPORT'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621455611221255331)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621456821397255332)
,p_theme_id=>42
,p_name=>'COL_ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>150
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621457252091255332)
,p_theme_id=>42
,p_name=>'CONTENT_ALIGNMENT'
,p_display_name=>'Content Alignment'
,p_display_sequence=>90
,p_template_types=>'REPORT'
,p_null_text=>'Center (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621457695451255332)
,p_theme_id=>42
,p_name=>'COL_CONTENT_DESCRIPTION'
,p_display_name=>'Description'
,p_display_sequence=>130
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621458047727255332)
,p_theme_id=>42
,p_name=>'COL_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>110
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621458435541255332)
,p_theme_id=>42
,p_name=>'COL_MISC'
,p_display_name=>'Misc'
,p_display_sequence=>140
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621458878451255333)
,p_theme_id=>42
,p_name=>'COL_SELECTION'
,p_display_name=>'Selection'
,p_display_sequence=>100
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621459475365255333)
,p_theme_id=>42
,p_name=>'COL_CONTENT_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>120
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621460044478255333)
,p_theme_id=>42
,p_name=>'DISPLAY_ITEMS'
,p_display_name=>'Display Items'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_null_text=>'Inline (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621460487741255333)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS'
,p_display_name=>'Display Labels'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_null_text=>'Inline (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621462461399255334)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621464201796255335)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621464851679255335)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621465293324255336)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621467202723255336)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621471087389255338)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621472248471255339)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621473496157255339)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621475284448255340)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621477230108255341)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621477803557255341)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621479271340255342)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'LIST'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621481497472255343)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621483670132255344)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621487401773255346)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE'
,p_display_name=>'Collapse Mode'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621493508711255348)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621494153841255349)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621495182178255349)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621496892450255350)
,p_theme_id=>42
,p_name=>'REQUIRED_INDICATOR'
,p_display_name=>'Required Indicator'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621498575510255351)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621499586418255352)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621502074751255354)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621503480869255355)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621503845487255355)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621505489103255356)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621505859957255356)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621507495641255357)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621507850864255357)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621509481923255357)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621509852869255357)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621511418431255358)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621511849157255358)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621512288524255358)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621512679366255358)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621513036793255359)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621513418512255359)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621513805561255359)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621515277019255359)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621516631574255360)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621517601397255360)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621518093634255360)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621518405401255361)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621518809850255361)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Spacing'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621519683403255361)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621520214317255361)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621520614081255362)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621521073098255362)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621521451848255362)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621522256559255362)
,p_theme_id=>42
,p_name=>'CONTENT_PADDING'
,p_display_name=>'Content Padding'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_help_text=>'Sets the Content Body padding for the page.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31621522630757255362)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621179712601255295)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(31621177093235255293)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621182821435255296)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(31621179868372255295)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621184341087255297)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_1'
,p_display_name=>'Background 1'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(31621182912905255296)
,p_css_classes=>'t-LoginPage--bg1'
,p_group_id=>wwv_flow_api.id(31621184163896255297)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621184599687255298)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_2'
,p_display_name=>'Background 2'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(31621182912905255296)
,p_css_classes=>'t-LoginPage--bg2'
,p_group_id=>wwv_flow_api.id(31621184163896255297)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621184779243255298)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_3'
,p_display_name=>'Background 3'
,p_display_sequence=>30
,p_page_template_id=>wwv_flow_api.id(31621182912905255296)
,p_css_classes=>'t-LoginPage--bg3'
,p_group_id=>wwv_flow_api.id(31621184163896255297)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621185100198255298)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT_SPLIT'
,p_display_name=>'Split'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(31621182912905255296)
,p_css_classes=>'t-LoginPage--split'
,p_group_id=>wwv_flow_api.id(31621184983884255298)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621188274080255299)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(31621185251770255298)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621190716469255300)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(31621188367439255299)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621192017097255301)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(31621190834087255300)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621192277345255301)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(31621190834087255300)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621195048594255302)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(31621192318937255301)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621197586306255304)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(31621195171263255302)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621198802024255304)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(31621197633132255304)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621199004919255304)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(31621197633132255304)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621199709303255305)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31621199145235255304)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621400148362255305)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621199145235255304)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(31621199999243255305)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621400521399255306)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621199145235255304)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(31621400321635255306)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621400733649255306)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621199145235255304)
,p_css_classes=>'t-Alert--removeHeading js-removeLandmark'
,p_group_id=>wwv_flow_api.id(31621400321635255306)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621401199828255306)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621199145235255304)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(31621400979526255306)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621401545323255306)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621199145235255304)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(31621401334857255306)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621401727388255306)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31621199145235255304)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(31621199999243255305)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621401942871255306)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31621199145235255304)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(31621400979526255306)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621402135764255306)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31621199145235255304)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(31621199999243255305)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621402369749255307)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621199145235255304)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(31621400979526255306)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621402562708255307)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621199145235255304)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(31621199999243255305)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621402733869255307)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621199145235255304)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(31621401334857255306)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621404986674255308)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31621403860380255307)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(31621404771578255308)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621405354395255308)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(31621403860380255307)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(31621405108863255308)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621405515964255308)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(31621403860380255307)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(31621404771578255308)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621405710773255308)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(31621403860380255307)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(31621405108863255308)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621405981113255308)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621403860380255307)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621406313296255309)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31621406010362255308)
,p_css_classes=>'u-colors'
,p_template_types=>'REGION'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621406507473255309)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621406010362255308)
,p_css_classes=>'t-CardsRegion--styleA'
,p_group_id=>wwv_flow_api.id(31621404771578255308)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621406774178255309)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621406010362255308)
,p_css_classes=>'t-CardsRegion--styleB'
,p_group_id=>wwv_flow_api.id(31621404771578255308)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621406996984255309)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Style C'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31621406010362255308)
,p_css_classes=>'t-CardsRegion--styleC'
,p_group_id=>wwv_flow_api.id(31621404771578255308)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621408121286255309)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(31621407924895255309)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621408337980255310)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(31621407924895255309)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621408569297255310)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(31621407924895255309)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621408977599255310)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(31621408789727255310)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621409172482255310)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(31621408789727255310)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621409386237255310)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(31621408789727255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621409585536255310)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(31621407924895255309)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621409704340255310)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(31621408789727255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621410183960255310)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621410355336255310)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621410567792255311)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621410742486255311)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621410903394255311)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621411370876255311)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(31621411103100255311)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621411740909255311)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(31621411574795255311)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621411973428255311)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(31621411103100255311)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621412149815255311)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621412312087255311)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(31621404771578255308)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621412588509255311)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621412703953255311)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(31621411574795255311)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621412963368255311)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621413106035255312)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621413385730255312)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621413744472255312)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(31621413565301255312)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621413993199255312)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(31621413565301255312)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621414161787255312)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621407086206255309)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(31621404771578255308)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621415169389255312)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(31621408789727255310)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621415304470255313)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(31621408789727255310)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621415562604255313)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(31621408789727255310)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621415762283255313)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(31621408789727255310)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621415914845255313)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621416196837255313)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621416352373255313)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621416522827255313)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621416766469255313)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621416957869255313)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621417176148255313)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621417349039255313)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621417522052255313)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621417755837255313)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621417952407255314)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621418183104255314)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621418399830255314)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621418579272255314)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621418720618255314)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621419134481255314)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(31621418933060255314)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621419565167255314)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_api.id(31621419348145255314)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621419717976255314)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(31621418933060255314)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621419926610255314)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(31621411574795255311)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621420396081255315)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_api.id(31621420116013255315)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621420595769255315)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621420772447255315)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(31621404771578255308)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621420998712255315)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621421146713255315)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(31621404771578255308)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621421305581255315)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(31621411574795255311)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621421552545255315)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621414269373255312)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(31621404771578255308)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621421905622255315)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621421693272255315)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621422360571255316)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621421693272255315)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(31621422147452255316)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621422529549255316)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Medium'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621421693272255315)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(31621422147452255316)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621422796280255316)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Small'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31621421693272255315)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(31621422147452255316)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621423108856255316)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31621421693272255315)
,p_css_classes=>'t-ContentBlock--headingFontAlt'
,p_group_id=>wwv_flow_api.id(31621422901227255316)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621423562228255316)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621421693272255315)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(31621423302208255316)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621423783955255316)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621421693272255315)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(31621423302208255316)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621423947946255316)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31621421693272255315)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621424800380255317)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621424023109255316)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(31621424673007255317)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621425010317255317)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621424023109255316)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(31621404771578255308)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621425201015255317)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31621424023109255316)
,p_css_classes=>'t-HeroRegion--headingFontAlt'
,p_group_id=>wwv_flow_api.id(31621422901227255316)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621425660998255317)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621424023109255316)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_api.id(31621425468689255317)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621425825293255317)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621424023109255316)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_api.id(31621425468689255317)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621426053880255317)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621424023109255316)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621426224574255317)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621424023109255316)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(31621404771578255308)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621426942069255318)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31621426332576255317)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621427165171255318)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621426332576255317)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621427587274255318)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31621426332576255317)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(31621427357557255318)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621427759247255318)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621426332576255317)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(31621427357557255318)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621427926841255318)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621426332576255317)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621428115390255318)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(31621426332576255317)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621428349497255318)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31621426332576255317)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621428501550255318)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621426332576255317)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(31621427357557255318)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621429452118255319)
,p_theme_id=>42
,p_name=>'ABOVE'
,p_display_name=>'Above'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31621428611331255318)
,p_css_classes=>'js-popup-pos-above'
,p_group_id=>wwv_flow_api.id(31621429222451255319)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout above or typically on top of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621429628411255319)
,p_theme_id=>42
,p_name=>'AFTER'
,p_display_name=>'After'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621428611331255318)
,p_css_classes=>'js-popup-pos-after'
,p_group_id=>wwv_flow_api.id(31621429222451255319)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout after or typically to the right of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621429847793255319)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31621428611331255318)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621430034060255319)
,p_theme_id=>42
,p_name=>'BEFORE'
,p_display_name=>'Before'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621428611331255318)
,p_css_classes=>'js-popup-pos-before'
,p_group_id=>wwv_flow_api.id(31621429222451255319)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout before or typically to the left of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621430264648255319)
,p_theme_id=>42
,p_name=>'BELOW'
,p_display_name=>'Below'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31621428611331255318)
,p_css_classes=>'js-popup-pos-below'
,p_group_id=>wwv_flow_api.id(31621429222451255319)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout below or typically to the bottom of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621430409326255319)
,p_theme_id=>42
,p_name=>'DISPLAY_POPUP_CALLOUT'
,p_display_name=>'Display Popup Callout'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31621428611331255318)
,p_css_classes=>'js-popup-callout'
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add display a callout for the popup. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621430699468255319)
,p_theme_id=>42
,p_name=>'INSIDE'
,p_display_name=>'Inside'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(31621428611331255318)
,p_css_classes=>'js-popup-pos-inside'
,p_group_id=>wwv_flow_api.id(31621429222451255319)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout inside of the parent. This is useful when the parent is sufficiently large, such as a report or large region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621430885997255320)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31621428611331255318)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(31621427357557255318)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621431038745255320)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621428611331255318)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(31621427357557255318)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621431288779255320)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31621428611331255318)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_api.id(31621427357557255318)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621431410429255320)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621428611331255318)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621431600535255320)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31621428611331255318)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621431838885255320)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621428611331255318)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(31621427357557255318)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621432206574255320)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621431967246255320)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621432412214255320)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621431967246255320)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621433363947255321)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621432506200255320)
,p_css_classes=>'t-Login-region--headerIcon'
,p_group_id=>wwv_flow_api.id(31621433157577255321)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Icon in the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621433593130255321)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621432506200255320)
,p_css_classes=>'t-Login-region--headerTitle js-removeLandmark'
,p_group_id=>wwv_flow_api.id(31621433157577255321)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Title in the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621433753818255321)
,p_theme_id=>42
,p_name=>'LOGO_HEADER_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31621432506200255320)
,p_css_classes=>'t-Login-region--headerHidden js-removeLandmark'
,p_group_id=>wwv_flow_api.id(31621433157577255321)
,p_template_types=>'REGION'
,p_help_text=>'Hides both the Region Icon and Title from the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621434720750255321)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(31621408789727255310)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621434922790255321)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(31621408789727255310)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621435139390255322)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(31621408789727255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621435386918255322)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(31621408789727255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621435522869255322)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621435736764255322)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621435980333255322)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621436182112255322)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621436326916255322)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621436560736255322)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621436719574255322)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621436904628255322)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621437190586255322)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621437392899255323)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621437507118255323)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621437782058255323)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621437940548255323)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621438175581255323)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621438383141255323)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(31621409966609255310)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621438580365255323)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--removeHeader js-removeLandmark'
,p_group_id=>wwv_flow_api.id(31621411103100255311)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621438738071255323)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(31621411574795255311)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621438990563255323)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(31621411103100255311)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621439141480255323)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621439367740255324)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(31621404771578255308)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621439508951255324)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(31621404771578255308)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621439755638255324)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(31621411574795255311)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621439975352255324)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621440121160255324)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621440329179255324)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(31621404771578255308)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621440517702255324)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31621433872064255321)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(31621404771578255308)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621441781924255325)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621440660270255324)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(31621441588580255325)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621442155481255325)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621440660270255324)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(31621441978272255325)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621442302818255325)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621440660270255324)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621442572885255325)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621440660270255324)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(31621441978272255325)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621442909498255325)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621440660270255324)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(31621442706876255325)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621443199534255325)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621440660270255324)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(31621442706876255325)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621443546100255325)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31621443216507255325)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(31621422147452255316)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621443709282255326)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31621443216507255325)
,p_css_classes=>'t-BreadcrumbRegion--headingFontAlt'
,p_group_id=>wwv_flow_api.id(31621422901227255316)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621443914712255326)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31621443216507255325)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621444147145255326)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31621443216507255325)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(31621422147452255316)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621444387498255326)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621443216507255325)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621445227394255326)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31621444436522255326)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(31621445005861255326)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621445490710255326)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621444436522255326)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(31621445005861255326)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621445691672255326)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31621444436522255326)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621446416152255327)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(31621445996595255327)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(31621446218992255327)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621446841196255327)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621445996595255327)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621447019374255327)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31621445996595255327)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(31621446218992255327)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621447293301255327)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31621445996595255327)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621447432449255327)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621445996595255327)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(31621446218992255327)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621447618765255327)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(31621445996595255327)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621447867071255328)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(31621445996595255327)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621448052197255328)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31621445996595255327)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(31621446218992255327)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621448221181255328)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(31621445996595255327)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(31621446218992255327)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621448465826255328)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31621445996595255327)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621448802681255328)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621445996595255327)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(31621448616566255328)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621449022324255328)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(31621445996595255327)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621449270605255328)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(31621445996595255327)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621449432321255328)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(31621445996595255327)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621449654815255328)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31621445996595255327)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(31621448616566255328)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621449833219255328)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31621445996595255327)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621450256514255329)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(31621449991366255328)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621450621165255329)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31621449991366255328)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(31621450480100255329)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621450839652255329)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621449991366255328)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621451025100255329)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621449991366255328)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(31621450480100255329)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621451219639255329)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31621449991366255328)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621451471159255329)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31621449991366255328)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(31621450480100255329)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621451604793255329)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(31621449991366255328)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621451843938255330)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31621449991366255328)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(31621448616566255328)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621452052915255330)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(31621449991366255328)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(31621448616566255328)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621452416660255330)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31621449991366255328)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(31621452259473255330)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621452641293255330)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621449991366255328)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(31621452259473255330)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621452835131255330)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621449991366255328)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(31621448616566255328)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621453281401255330)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31621449991366255328)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(31621453046746255330)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621453465261255330)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621449991366255328)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(31621453046746255330)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621453646148255330)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621449991366255328)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621453851570255330)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31621449991366255328)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(31621448616566255328)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621454050856255330)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(31621449991366255328)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621454281586255330)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(31621449991366255328)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(31621450480100255329)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621454661389255331)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31621449991366255328)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(31621454429717255331)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621454828835255331)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621449991366255328)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(31621454429717255331)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621455011878255331)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(31621449991366255328)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621455243027255331)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31621449991366255328)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621455846582255331)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31621455332738255331)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(31621455611221255331)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621456086387255331)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31621455332738255331)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_api.id(31621454429717255331)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621456234662255332)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621455332738255331)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_api.id(31621454429717255331)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621456452276255332)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621455332738255331)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(31621455611221255331)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621457040151255332)
,p_theme_id=>42
,p_name=>'ACTIONS_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(31621456531781255332)
,p_css_classes=>'t-ContentRow--hideActions'
,p_group_id=>wwv_flow_api.id(31621456821397255332)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Actions column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621457457376255332)
,p_theme_id=>42
,p_name=>'ALIGNMENT_TOP'
,p_display_name=>'Top'
,p_display_sequence=>100
,p_report_template_id=>wwv_flow_api.id(31621456531781255332)
,p_css_classes=>'t-ContentRow--alignTop'
,p_group_id=>wwv_flow_api.id(31621457252091255332)
,p_template_types=>'REPORT'
,p_help_text=>'Aligns the content to the top of the row. This is useful when you expect that yours rows will vary in height (e.g. some rows will have longer descriptions than others).'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621457873990255332)
,p_theme_id=>42
,p_name=>'DESCRIPTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(31621456531781255332)
,p_css_classes=>'t-ContentRow--hideDescription'
,p_group_id=>wwv_flow_api.id(31621457695451255332)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Description from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621458298781255332)
,p_theme_id=>42
,p_name=>'ICON_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621456531781255332)
,p_css_classes=>'t-ContentRow--hideIcon'
,p_group_id=>wwv_flow_api.id(31621458047727255332)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Icon from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621458605760255333)
,p_theme_id=>42
,p_name=>'MISC_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(31621456531781255332)
,p_css_classes=>'t-ContentRow--hideMisc'
,p_group_id=>wwv_flow_api.id(31621458435541255332)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Misc column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621459019882255333)
,p_theme_id=>42
,p_name=>'SELECTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31621456531781255332)
,p_css_classes=>'t-ContentRow--hideSelection'
,p_group_id=>wwv_flow_api.id(31621458878451255333)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Selection column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621459245503255333)
,p_theme_id=>42
,p_name=>'STYLE_COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(31621456531781255332)
,p_css_classes=>'t-ContentRow--styleCompact'
,p_group_id=>wwv_flow_api.id(31621448616566255328)
,p_template_types=>'REPORT'
,p_help_text=>'This option reduces the padding and font sizes to present a compact display of the same information.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621459628529255333)
,p_theme_id=>42
,p_name=>'TITLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31621456531781255332)
,p_css_classes=>'t-ContentRow--hideTitle'
,p_group_id=>wwv_flow_api.id(31621459475365255333)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Title from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621460221153255333)
,p_theme_id=>42
,p_name=>'DISPLAY_ITEMS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(31621459742676255333)
,p_css_classes=>'t-ContextualInfo-item--stacked'
,p_group_id=>wwv_flow_api.id(31621460044478255333)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621460640705255333)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(31621459742676255333)
,p_css_classes=>'t-ContextualInfo-label--stacked'
,p_group_id=>wwv_flow_api.id(31621460487741255333)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621461093226255334)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31621460784006255333)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621461238837255334)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621460784006255333)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621461431489255334)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31621460784006255333)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621461659960255334)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(31621460784006255333)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621461891669255334)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(31621460784006255333)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621462057853255334)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31621460784006255333)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(31621454429717255331)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621462251968255334)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621460784006255333)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(31621454429717255331)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621462651221255334)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621460784006255333)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(31621462461399255334)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621462850529255334)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31621460784006255333)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621463089180255334)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621460784006255333)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621463226920255335)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31621460784006255333)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621463498436255335)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(31621460784006255333)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621463686230255335)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(31621460784006255333)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621464498096255335)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621463951478255335)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(31621464201796255335)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621464629674255335)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31621463951478255335)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(31621464201796255335)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621465071447255335)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31621463951478255335)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(31621464851679255335)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621465479181255336)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621463951478255335)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(31621465293324255336)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621465602331255336)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31621463951478255335)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(31621465293324255336)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621465884726255336)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(31621463951478255335)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(31621465293324255336)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621466009876255336)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621463951478255335)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(31621464851679255335)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621466230391255336)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31621463951478255335)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621466472139255336)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621463951478255335)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(31621465293324255336)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621466813394255336)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(31621466555958255336)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(31621448616566255328)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621467491320255337)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31621466974890255336)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(31621467202723255336)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621467645473255337)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621466974890255336)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(31621467202723255336)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621467825745255337)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31621466974890255336)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(31621467202723255336)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621468082934255337)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31621466974890255336)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621468242205255337)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621466974890255336)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621468469280255337)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(31621466974890255336)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(31621467202723255336)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621468654704255337)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(31621466974890255336)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(31621467202723255336)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621468884240255337)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(31621466974890255336)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(31621467202723255336)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621469203100255337)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31621468980436255337)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(31621467202723255336)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621469446031255338)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621468980436255337)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(31621467202723255336)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621469648798255338)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31621468980436255337)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(31621467202723255336)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621469807544255338)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31621468980436255337)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621470088236255338)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31621468980436255337)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(31621446653922255327)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621470257274255338)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(31621468980436255337)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(31621467202723255336)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621470428562255338)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(31621468980436255337)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(31621467202723255336)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621470603019255338)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(31621468980436255337)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(31621467202723255336)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621471224663255338)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621470702848255338)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621471428689255338)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31621470702848255338)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621471644160255339)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(31621470702848255338)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621471894765255339)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(31621470702848255338)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621472058923255339)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621470702848255338)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621472443468255339)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621470702848255338)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(31621472248471255339)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621472641799255339)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(31621470702848255338)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621472867488255339)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(31621470702848255338)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621473035360255339)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(31621470702848255338)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621473220732255339)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31621470702848255338)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(31621472248471255339)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621473649849255339)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31621470702848255338)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(31621473496157255339)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621473860136255339)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621470702848255338)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(31621473496157255339)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621474097014255340)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621470702848255338)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(31621473496157255339)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621474280907255340)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621470702848255338)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621474444215255340)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(31621470702848255338)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(31621473496157255339)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621474669900255340)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(31621470702848255338)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(31621473496157255339)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621475005214255340)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621474736640255340)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621475430142255340)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621474736640255340)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(31621475284448255340)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621475680331255340)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621474736640255340)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621475830674255340)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621474736640255340)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(31621475284448255340)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621476099561255340)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31621474736640255340)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621476223481255340)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31621474736640255340)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(31621475284448255340)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621476468027255341)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(31621474736640255340)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621476628370255341)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621474736640255340)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(31621472248471255339)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621476841245255341)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(31621474736640255340)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(31621472248471255339)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621477075641255341)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(31621474736640255340)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621477436582255341)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621474736640255340)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(31621477230108255341)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621477683413255341)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621474736640255340)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(31621472248471255339)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621478074802255341)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621474736640255340)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(31621477803557255341)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621478252869255341)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621474736640255340)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(31621477803557255341)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621478434740255341)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621474736640255340)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621478666906255341)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31621474736640255340)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(31621472248471255339)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621478854570255341)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(31621474736640255340)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621479005258255342)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(31621474736640255340)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(31621475284448255340)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621479435782255342)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621474736640255340)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(31621479271340255342)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621479629274255342)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621474736640255340)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(31621479271340255342)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621479818304255342)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621474736640255340)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(31621477230108255341)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621480033174255342)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(31621474736640255340)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621480216065255342)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621474736640255340)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621480685921255342)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621480311775255342)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(31621472248471255339)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621480865134255342)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31621480311775255342)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621481030305255342)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621480311775255342)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621481240490255343)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621480311775255342)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621481695243255343)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621480311775255342)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(31621481497472255343)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621481845978255343)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621480311775255342)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(31621481497472255343)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621482245889255343)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621481938974255343)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621482434801255343)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621481938974255343)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621482631193255343)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31621481938974255343)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621482843020255343)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(31621481938974255343)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621483055537255343)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(31621481938974255343)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621483261603255343)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621481938974255343)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(31621479271340255342)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621483462436255343)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621481938974255343)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(31621479271340255342)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621483854539255344)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621481938974255343)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(31621483670132255344)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621484011534255344)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31621481938974255343)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621484255329255344)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621481938974255343)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621484404964255344)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621481938974255343)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621484692075255344)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(31621481938974255343)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621485061245255344)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(31621484725372255344)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621485243132255344)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621484725372255344)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621485453677255344)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(31621484725372255344)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621485693543255345)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31621484725372255344)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621486093388255345)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621485774064255345)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621486223194255345)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621485774064255345)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621486679068255345)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621486358579255345)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621487093977255345)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(31621486797529255345)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621487243791255346)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621486797529255345)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621487695694255346)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621486797529255345)
,p_css_classes=>'js-navCollapsed--hidden'
,p_group_id=>wwv_flow_api.id(31621487401773255346)
,p_template_types=>'LIST'
,p_help_text=>'Completely hide the navigation menu when it is collapsed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621487858211255346)
,p_theme_id=>42
,p_name=>'ICON_DEFAULT'
,p_display_name=>'Icon (Default)'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621486797529255345)
,p_css_classes=>'js-navCollapsed--default'
,p_group_id=>wwv_flow_api.id(31621487401773255346)
,p_template_types=>'LIST'
,p_help_text=>'Display icons when the navigation menu is collapsed for large screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621488015242255346)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621486797529255345)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_api.id(31621472248471255339)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621488297734255346)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31621486797529255345)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_api.id(31621472248471255339)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621488497506255346)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621486797529255345)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_api.id(31621472248471255339)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621488969005255346)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621488552874255346)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(31621477803557255341)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621489109648255346)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(31621488552874255346)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621489354006255346)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621488552874255346)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(31621477803557255341)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621489540819255346)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621488552874255346)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(31621483670132255344)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621489714491255347)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621488552874255346)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(31621472248471255339)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621489947719255347)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621488552874255346)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(31621472248471255339)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621490114112255347)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(31621488552874255346)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(31621483670132255344)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621490591560255347)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621490246541255347)
,p_css_classes=>'t-MegaMenu--layout2Cols'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621490734404255347)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621490246541255347)
,p_css_classes=>'t-MegaMenu--layout3Cols'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621490978030255347)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31621490246541255347)
,p_css_classes=>'t-MegaMenu--layout4Cols'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621491194519255347)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(31621490246541255347)
,p_css_classes=>'t-MegaMenu--layout5Cols'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621491306910255347)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(31621490246541255347)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621491598284255347)
,p_theme_id=>42
,p_name=>'CUSTOM'
,p_display_name=>'Custom'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(31621490246541255347)
,p_css_classes=>'t-MegaMenu--layoutCustom'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621491727265255347)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621490246541255347)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Displays a callout arrow that points to where the menu was activated from.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621491966660255348)
,p_theme_id=>42
,p_name=>'FULL_WIDTH'
,p_display_name=>'Full Width'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621490246541255347)
,p_css_classes=>'t-MegaMenu--fullWidth'
,p_template_types=>'LIST'
,p_help_text=>'Stretches the menu to fill the width of the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621492126845255348)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(31621490246541255347)
,p_css_classes=>'t-MegaMenu--layoutStacked'
,p_group_id=>wwv_flow_api.id(31621471087389255338)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621492551690255348)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(31621492227555255348)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621492740516255348)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(31621492227555255348)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621492990246255348)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(31621492227555255348)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621493163962255348)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(31621492227555255348)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621493726708255348)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(31621493237772255348)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(31621493508711255348)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621493929066255348)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(31621493237772255348)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(31621493508711255348)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621494352753255349)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621493237772255348)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(31621494153841255349)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621494519450255349)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621493237772255348)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(31621494153841255349)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621494727138255349)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31621493237772255348)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(31621494153841255349)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621495312816255349)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621494872524255349)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(31621495182178255349)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621495555963255349)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31621494872524255349)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(31621495182178255349)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621495798290255349)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31621494872524255349)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(31621495182178255349)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621495993325255350)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31621494872524255349)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621496161195255350)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(31621494872524255349)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621497095309255350)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_api.id(31621496686327255350)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_api.id(31621496892450255350)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621497213497255350)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_api.id(31621496686327255350)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_api.id(31621496892450255350)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621497557828255351)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_api.id(31621497312859255351)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_api.id(31621496892450255350)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621497790242255351)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_api.id(31621497312859255351)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_api.id(31621496892450255350)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621498051928255351)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_api.id(31621497895150255351)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_api.id(31621496892450255350)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621498236197255351)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_api.id(31621497895150255351)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_api.id(31621496892450255350)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621498764309255351)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(31621498338023255351)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(31621498575510255351)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621498957403255352)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(31621498338023255351)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(31621498575510255351)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621499341603255352)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(31621499165345255352)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621499720057255352)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(31621499165345255352)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(31621499586418255352)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621499982457255352)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(31621499165345255352)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(31621498575510255351)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621500129335255352)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(31621499165345255352)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(31621499586418255352)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621500362573255352)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(31621499165345255352)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(31621498575510255351)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621502226030255355)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_api.id(31621502074751255354)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621502493119255355)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_api.id(31621502074751255354)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621502637510255355)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_api.id(31621502074751255354)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621502887073255355)
,p_theme_id=>42
,p_name=>'H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_api.id(31621502074751255354)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621503001065255355)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_api.id(31621502074751255354)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621503241083255355)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_api.id(31621502074751255354)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621503652174255355)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(31621503480869255355)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621504082639255355)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(31621503845487255355)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621504268051255355)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(31621503480869255355)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621504434029255355)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(31621503845487255355)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621504674036255355)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(31621503480869255355)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621504826024255356)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(31621503845487255355)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621505039404255356)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(31621503480869255355)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621505289614255356)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(31621503845487255355)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621505665377255356)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(31621505489103255356)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621506038340255356)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(31621505859957255356)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621506271569255356)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(31621505489103255356)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621506448957255356)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(31621505859957255356)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621506632467255356)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(31621505489103255356)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621506830830255356)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(31621505859957255356)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621507053892255356)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(31621505489103255356)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621507224055255356)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(31621505859957255356)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621507645329255357)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(31621507495641255357)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621508015057255357)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(31621507850864255357)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621508203054255357)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(31621507495641255357)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621508483432255357)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(31621507850864255357)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621508676213255357)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(31621507495641255357)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621508827700255357)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(31621507850864255357)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621509092332255357)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(31621507495641255357)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621509245372255357)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(31621507850864255357)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621509648748255357)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(31621509481923255357)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621510019965255357)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(31621509852869255357)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621510208109255358)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(31621509481923255357)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621510482598255358)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(31621509852869255357)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621510659079255358)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(31621509481923255357)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621510835435255358)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(31621509852869255357)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621511065662255358)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(31621509481923255357)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621511240010255358)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(31621509852869255357)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621511649391255358)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(31621511418431255358)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621512038912255358)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(31621511849157255358)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621512401581255358)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(31621512288524255358)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621512870880255358)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(31621512679366255358)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621513204203255359)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(31621513036793255359)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621513693233255359)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(31621513418512255359)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621514091182255359)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(31621513805561255359)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621514225102255359)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(31621513805561255359)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621514493685255359)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(31621511849157255358)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621514695677255359)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(31621512288524255358)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621514858707255359)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(31621512679366255358)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621515047810255359)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(31621513036793255359)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621515444795255359)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(31621515277019255359)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621515673599255360)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(31621515277019255359)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621515880271255360)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(31621515277019255359)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621516061546255360)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(31621511418431255358)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621516226327255360)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(31621513805561255359)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621516435207255360)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(31621513418512255359)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621516876670255360)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(31621516631574255360)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621517018545255360)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(31621511418431255358)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621517228364255360)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(31621513418512255359)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621517481214255360)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(31621511418431255358)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621517813836255360)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(31621517601397255360)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621518219973255361)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(31621518093634255360)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621518684541255361)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(31621518405401255361)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621519005682255361)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'None'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(31621518809850255361)
,p_template_types=>'REGION'
,p_help_text=>'Removes spacing between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621519248487255361)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(31621518809850255361)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item spacing.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621519486463255361)
,p_theme_id=>42
,p_name=>'FORMSTANDARDPADDING'
,p_display_name=>'Standard'
,p_display_sequence=>5
,p_css_classes=>'t-Form--standardPadding'
,p_group_id=>wwv_flow_api.id(31621518809850255361)
,p_template_types=>'REGION'
,p_help_text=>'Uses the standard spacing between items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621519899961255361)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(31621519683403255361)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621520089932255361)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(31621518093634255360)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621520421468255361)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(31621520214317255361)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621520876693255362)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(31621520614081255362)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621521290184255362)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(31621521073098255362)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621521674133255362)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(31621521451848255362)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621521814307255362)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621522014577255362)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(31621520214317255361)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621522422107255362)
,p_theme_id=>42
,p_name=>'REMOVE_PADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>1
,p_css_classes=>'t-PageBody--noContentPadding'
,p_group_id=>wwv_flow_api.id(31621522256559255362)
,p_template_types=>'PAGE'
,p_help_text=>'Removes padding from the content region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31621522863540255362)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(31621522630757255362)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
end;
/
prompt --application/shared_components/globalization/language
begin
wwv_flow_api.create_language_map(
 p_id=>wwv_flow_api.id(31624693558398751867)
,p_translation_flow_id=>192102
,p_translation_flow_language_cd=>'fi'
,p_direction_right_to_left=>'N'
);
end;
/
prompt --application/shared_components/globalization/translations
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624715288159396959)
,p_page_id=>0
,p_translated_flow_id=>192102
,p_translate_to_id=>.192102
,p_translate_from_id=>0
,p_translate_column_id=>5
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Global Page - Desktop'
,p_translate_from_text=>'Global Page - Desktop'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624715334176396961)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>1.192102
,p_translate_from_id=>1
,p_translate_column_id=>5
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Koti'
,p_translate_from_text=>'Home'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624715526981396962)
,p_page_id=>9999
,p_translated_flow_id=>192102
,p_translate_to_id=>9999.192102
,p_translate_from_id=>9999
,p_translate_column_id=>5
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Kirjautumissivu'
,p_translate_from_text=>'Login Page'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624715769962396966)
,p_page_id=>0
,p_translated_flow_id=>192102
,p_translate_to_id=>.192102
,p_translate_from_id=>0
,p_translate_column_id=>6
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Global Page - Desktop'
,p_translate_from_text=>'Global Page - Desktop'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624715989539396967)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>1.192102
,p_translate_from_id=>1
,p_translate_column_id=>6
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Translate IR report selector plug-in demo'
,p_translate_from_text=>'Translate IR report selector plug-in demo'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624716160466396967)
,p_page_id=>9999
,p_translated_flow_id=>192102
,p_translate_to_id=>9999.192102
,p_translate_from_id=>9999
,p_translate_column_id=>6
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&APP_NAME. - Sign In'
,p_translate_from_text=>'&APP_NAME. - Sign In'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624716333773396987)
,p_page_id=>9999
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621530421352255373.192102)
,p_translate_from_id=>wwv_flow_api.id(31621530421352255373)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Kirjaudu sis\00E4\00E4n')
,p_translate_from_text=>'Sign In'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624716583290396992)
,p_page_id=>9999
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621528083576255371.192102)
,p_translate_from_id=>wwv_flow_api.id(31621528083576255371)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('K\00E4ytt\00E4j\00E4nimi')
,p_translate_from_text=>'Username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624716732829396992)
,p_page_id=>9999
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621528470837255372.192102)
,p_translate_from_id=>wwv_flow_api.id(31621528470837255372)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Salasana'
,p_translate_from_text=>'Password'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624716908152396992)
,p_page_id=>9999
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621529561260255373.192102)
,p_translate_from_id=>wwv_flow_api.id(31621529561260255373)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Muista k\00E4ytt\00E4j\00E4nimi')
,p_translate_from_text=>'Remember username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624717224891397012)
,p_page_id=>9999
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621527644074255371.192102)
,p_translate_from_id=>wwv_flow_api.id(31621527644074255371)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'&APP_NAME.'
,p_translate_from_text=>'&APP_NAME.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624717604736397013)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31245737182198934407.192102)
,p_translate_from_id=>wwv_flow_api.id(31245737182198934407)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('Ty\00F6ntekij\00E4t IR')
,p_translate_from_text=>'Employees IR'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624717855107397017)
,p_page_id=>9999
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621532307716255375.192102)
,p_translate_from_id=>wwv_flow_api.id(31621532307716255375)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'apex_lang.emit_language_selector_list;'
,p_translate_from_text=>'apex_lang.emit_language_selector_list;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624718000439397018)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31245737182198934407.192102)
,p_translate_from_id=>wwv_flow_api.id(31245737182198934407)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select empno',
'  ,ename',
'  ,job',
'  ,mgr',
'  ,hiredate',
'  ,sal',
'  ,comm',
'  ,deptno',
'from fi_jaris_emp'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select empno',
'  ,ename',
'  ,job',
'  ,mgr',
'  ,hiredate',
'  ,sal',
'  ,comm',
'  ,deptno',
'from fi_jaris_emp'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624718212003397041)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621533555722255376.192102)
,p_translate_from_id=>wwv_flow_api.id(31621533555722255376)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Koti'
,p_translate_from_text=>'Home'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624718381994397041)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621535050406255379.192102)
,p_translate_from_id=>wwv_flow_api.id(31621535050406255379)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&APP_USER.'
,p_translate_from_text=>'&APP_USER.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624718559214397041)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621535526417255379.192102)
,p_translate_from_id=>wwv_flow_api.id(31621535526417255379)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'---'
,p_translate_from_text=>'---'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624718709085397042)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621535974884255379.192102)
,p_translate_from_id=>wwv_flow_api.id(31621535974884255379)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Kirjaudu ulos'
,p_translate_from_text=>'Sign Out'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624718941127397042)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31622917508598290883.192102)
,p_translate_from_id=>wwv_flow_api.id(31622917508598290883)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Englanti'
,p_translate_from_text=>'English'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624719122625397042)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31623187094212650804.192102)
,p_translate_from_id=>wwv_flow_api.id(31623187094212650804)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Suomi'
,p_translate_from_text=>'Finnish'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624719373030397164)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621500622209255353.192102)
,p_translate_from_id=>wwv_flow_api.id(31621500622209255353)
,p_translate_column_id=>63
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Haku -valintaikkuna'
,p_translate_from_text=>'Search Dialog'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624719401605397176)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621500622209255353.192102)
,p_translate_from_id=>wwv_flow_api.id(31621500622209255353)
,p_translate_column_id=>66
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_translate_from_text=>'<div class="t-PopupLOV-actions t-Form--large">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624719603188397181)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621500622209255353.192102)
,p_translate_from_id=>wwv_flow_api.id(31621500622209255353)
,p_translate_column_id=>67
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'</div>'
,p_translate_from_text=>'</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624719811819397192)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621500622209255353.192102)
,p_translate_from_id=>wwv_flow_api.id(31621500622209255353)
,p_translate_column_id=>70
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-links">'
,p_translate_from_text=>'<div class="t-PopupLOV-links">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624720096097397197)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621500622209255353.192102)
,p_translate_from_id=>wwv_flow_api.id(31621500622209255353)
,p_translate_column_id=>71
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'</div>'
,p_translate_from_text=>'</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624720266495397201)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621500622209255353.192102)
,p_translate_from_id=>wwv_flow_api.id(31621500622209255353)
,p_translate_column_id=>72
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Etsi'
,p_translate_from_text=>'Search'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624720400094397205)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621500622209255353.192102)
,p_translate_from_id=>wwv_flow_api.id(31621500622209255353)
,p_translate_column_id=>73
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Sulje'
,p_translate_from_text=>'Close'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624720624289397209)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621500622209255353.192102)
,p_translate_from_id=>wwv_flow_api.id(31621500622209255353)
,p_translate_column_id=>74
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Seuraava &gt;'
,p_translate_from_text=>'Next &gt;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624720895943397213)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621500622209255353.192102)
,p_translate_from_id=>wwv_flow_api.id(31621500622209255353)
,p_translate_column_id=>75
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&lt; Edellinen'
,p_translate_from_text=>'&lt; Previous'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624721047614397228)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621526551439255368.192102)
,p_translate_from_id=>wwv_flow_api.id(31621526551439255368)
,p_translate_column_id=>79
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Haluatko suorittaa t\00E4m\00E4n poistotoiminnon?')
,p_translate_from_text=>'Would you like to perform this delete action?'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624721219391397232)
,p_translated_flow_id=>192102
,p_translate_to_id=>19212.192102
,p_translate_from_id=>19212
,p_translate_column_id=>80
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('IR/IG raportti valitsimen kielik\00E4\00E4nn\00F6s Plug-in Demo')
,p_translate_from_text=>'Translate IR/IG Report Selector Plug-in Demo'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624721639220397302)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621176484621255292.192102)
,p_translate_from_id=>wwv_flow_api.id(31621176484621255292)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Koti'
,p_translate_from_text=>'Home'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624721754147397314)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621529187565255372.192102)
,p_translate_from_id=>wwv_flow_api.id(31621529187565255372)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Muista k\00E4ytt\00E4j\00E4nimi')
,p_translate_from_text=>'Remember username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624721942335397346)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621529561260255373.192102)
,p_translate_from_id=>wwv_flow_api.id(31621529561260255373)
,p_translate_column_id=>111
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
unistr('Jos valitset t\00E4m\00E4n valintaruudun, sovellus tallentaa k\00E4ytt\00E4j\00E4nimesi pysyv\00E4\00E4n selaimen ev\00E4steeseen nimelt\00E4 "LOGIN_USERNAME_COOKIE".'),
'Kun seuraavan kerran siirryt kirjautumissivulle,',
unistr('k\00E4ytt\00E4j\00E4tunnuskentt\00E4 t\00E4ytet\00E4\00E4n automaattisesti t\00E4ll\00E4 arvolla.'),
'</p>',
'<p>',
unistr('Jos poistat t\00E4m\00E4n valintaruudun valinnan ja k\00E4ytt\00E4j\00E4nimesi on jo tallennettu ev\00E4steeseen,'),
unistr('sovellus korvaa sen tyhj\00E4ll\00E4 arvolla.'),
unistr('Voit my\00F6s poistaa ev\00E4steen selaimesi kehitt\00E4j\00E4ty\00F6kaluilla.'),
'</p>'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624722013190397350)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621500622209255353.192102)
,p_translate_from_id=>wwv_flow_api.id(31621500622209255353)
,p_translate_column_id=>112
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-pagination">Rivi(t) #FIRST_ROW# - #LAST_ROW#</div>'
,p_translate_from_text=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624722209013397411)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31245737182198934407.192102)
,p_translate_from_id=>wwv_flow_api.id(31245737182198934407)
,p_translate_column_id=>143
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Ty\00F6ntekij\00E4t IR')
,p_translate_from_text=>'Employees IR'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624722479349397439)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31245737381921934409.192102)
,p_translate_from_id=>wwv_flow_api.id(31245737381921934409)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Henkil\00F6numero')
,p_translate_from_text=>'Employee Number'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624722563812397439)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31245737462968934410.192102)
,p_translate_from_id=>wwv_flow_api.id(31245737462968934410)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Nimi'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624722702699397439)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31245737552805934411.192102)
,p_translate_from_id=>wwv_flow_api.id(31245737552805934411)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Ty\00F6')
,p_translate_from_text=>'Job'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624722924676397439)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31245737680554934412.192102)
,p_translate_from_id=>wwv_flow_api.id(31245737680554934412)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Esimies'
,p_translate_from_text=>'Manager'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624723123210397440)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31245737700123934413.192102)
,p_translate_from_id=>wwv_flow_api.id(31245737700123934413)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Palkattu'
,p_translate_from_text=>'Hired on'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624723343983397440)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31245737841020934414.192102)
,p_translate_from_id=>wwv_flow_api.id(31245737841020934414)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Palkka'
,p_translate_from_text=>'Salary'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624723561641397440)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31245737957291934415.192102)
,p_translate_from_id=>wwv_flow_api.id(31245737957291934415)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Komissio'
,p_translate_from_text=>'Commission'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624723772866397440)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31245738068738934416.192102)
,p_translate_from_id=>wwv_flow_api.id(31245738068738934416)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Osasto'
,p_translate_from_text=>'Department'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624724336949397445)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31245737381921934409.192102)
,p_translate_from_id=>wwv_flow_api.id(31245737381921934409)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Henkil\00F6numero')
,p_translate_from_text=>'Employee Number'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624724672090397445)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31245737462968934410.192102)
,p_translate_from_id=>wwv_flow_api.id(31245737462968934410)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Nimi'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624724856414397445)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31245737552805934411.192102)
,p_translate_from_id=>wwv_flow_api.id(31245737552805934411)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Ty\00F6')
,p_translate_from_text=>'Job'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624725165787397445)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31245737680554934412.192102)
,p_translate_from_id=>wwv_flow_api.id(31245737680554934412)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Esimies'
,p_translate_from_text=>'Manager'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624725394254397445)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31245737700123934413.192102)
,p_translate_from_id=>wwv_flow_api.id(31245737700123934413)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Palkattu'
,p_translate_from_text=>'Hired on'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624725571766397445)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31245737841020934414.192102)
,p_translate_from_id=>wwv_flow_api.id(31245737841020934414)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Palkka'
,p_translate_from_text=>'Salary'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624725726157397445)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31245737957291934415.192102)
,p_translate_from_id=>wwv_flow_api.id(31245737957291934415)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Komissio'
,p_translate_from_text=>'Commission'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624725967271397445)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31245738068738934416.192102)
,p_translate_from_id=>wwv_flow_api.id(31245738068738934416)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Osasto'
,p_translate_from_text=>'Department'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624726439915397811)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621526123046255368.192102)
,p_translate_from_id=>wwv_flow_api.id(31621526123046255368)
,p_translate_column_id=>257
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Riitt\00E4m\00E4tt\00F6m\00E4t oikeudet, k\00E4ytt\00E4j\00E4 ei ole j\00E4rjestelm\00E4nvalvoja')
,p_translate_from_text=>'Insufficient privileges, user is not an Administrator'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624726506321397856)
,p_page_id=>9999
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621528083576255371.192102)
,p_translate_from_id=>wwv_flow_api.id(31621528083576255371)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624726611797397856)
,p_page_id=>9999
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621528470837255372.192102)
,p_translate_from_id=>wwv_flow_api.id(31621528470837255372)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624726893302397857)
,p_page_id=>9999
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621529561260255373.192102)
,p_translate_from_id=>wwv_flow_api.id(31621529561260255373)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'1'
,p_translate_from_text=>'1'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624727068140397862)
,p_page_id=>9999
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621528083576255371.192102)
,p_translate_from_id=>wwv_flow_api.id(31621528083576255371)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624727474292397874)
,p_page_id=>9999
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621528083576255371.192102)
,p_translate_from_id=>wwv_flow_api.id(31621528083576255371)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624727693598397879)
,p_page_id=>9999
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621528083576255371.192102)
,p_translate_from_id=>wwv_flow_api.id(31621528083576255371)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624727848976397907)
,p_page_id=>9999
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621532073013255375.192102)
,p_translate_from_id=>wwv_flow_api.id(31621532073013255375)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CLEAR_CACHE_CURRENT_PAGE'
,p_translate_from_text=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624728134861397993)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621173296018255290.192102)
,p_translate_from_id=>wwv_flow_api.id(31621173296018255290)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'FULL'
,p_translate_from_text=>'FULL'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624728261054397994)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621173554499255290.192102)
,p_translate_from_id=>wwv_flow_api.id(31621173554499255290)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'MONTH-PICKER:YEAR-PICKER'
,p_translate_from_text=>'MONTH-PICKER:YEAR-PICKER'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624728482718397994)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621173893499255291.192102)
,p_translate_from_id=>wwv_flow_api.id(31621173893499255291)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624728623661397994)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621174193139255291.192102)
,p_translate_from_id=>wwv_flow_api.id(31621174193139255291)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624728845056397994)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621174421959255291.192102)
,p_translate_from_id=>wwv_flow_api.id(31621174421959255291)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'fa-star'
,p_translate_from_text=>'fa-star'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624729025283397994)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621174709756255291.192102)
,p_translate_from_id=>wwv_flow_api.id(31621174709756255291)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624729291636397994)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621175358196255291.192102)
,p_translate_from_id=>wwv_flow_api.id(31621175358196255291)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624729452440397994)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621175677234255292.192102)
,p_translate_from_id=>wwv_flow_api.id(31621175677234255292)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'IG'
,p_translate_from_text=>'IG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624729624777397998)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621173296018255290.192102)
,p_translate_from_id=>wwv_flow_api.id(31621173296018255290)
,p_translate_column_id=>299
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'POPUP'
,p_translate_from_text=>'POPUP'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624729891882397999)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621173554499255290.192102)
,p_translate_from_id=>wwv_flow_api.id(31621173554499255290)
,p_translate_column_id=>299
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'VISIBLE'
,p_translate_from_text=>'VISIBLE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624730052255397999)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621174193139255291.192102)
,p_translate_from_id=>wwv_flow_api.id(31621174193139255291)
,p_translate_column_id=>299
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624730253171398003)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621173554499255290.192102)
,p_translate_from_id=>wwv_flow_api.id(31621173554499255290)
,p_translate_column_id=>300
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'15'
,p_translate_from_text=>'15'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624730465356398003)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621174709756255291.192102)
,p_translate_from_id=>wwv_flow_api.id(31621174709756255291)
,p_translate_column_id=>300
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624730697367398007)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621174421959255291.192102)
,p_translate_from_id=>wwv_flow_api.id(31621174421959255291)
,p_translate_column_id=>301
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'#VALUE#'
,p_translate_from_text=>'#VALUE#'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624730869259398012)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621174709756255291.192102)
,p_translate_from_id=>wwv_flow_api.id(31621174709756255291)
,p_translate_column_id=>302
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'SWITCH_CB'
,p_translate_from_text=>'SWITCH_CB'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624731037048398033)
,p_page_id=>9999
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621527644074255371.192102)
,p_translate_from_id=>wwv_flow_api.id(31621527644074255371)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624731213477398038)
,p_page_id=>9999
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621527644074255371.192102)
,p_translate_from_id=>wwv_flow_api.id(31621527644074255371)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624731343605398043)
,p_page_id=>9999
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621527644074255371.192102)
,p_translate_from_id=>wwv_flow_api.id(31621527644074255371)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624731602168398178)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621526123046255368.192102)
,p_translate_from_id=>wwv_flow_api.id(31621526123046255368)
,p_translate_column_id=>343
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'return true;'
,p_translate_from_text=>'return true;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624732173162398316)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621535050406255379.192102)
,p_translate_from_id=>wwv_flow_api.id(31621535050406255379)
,p_translate_column_id=>377
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'has-username'
,p_translate_from_text=>'has-username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624732207787398393)
,p_page_id=>9999
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621528083576255371.192102)
,p_translate_from_id=>wwv_flow_api.id(31621528083576255371)
,p_translate_column_id=>396
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('K\00E4ytt\00E4j\00E4nimi')
,p_translate_from_text=>'Username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624732360872398393)
,p_page_id=>9999
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621528470837255372.192102)
,p_translate_from_id=>wwv_flow_api.id(31621528470837255372)
,p_translate_column_id=>396
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Salasana'
,p_translate_from_text=>'Password'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624732573581398398)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621523569879255363.192102)
,p_translate_from_id=>wwv_flow_api.id(31621523569879255363)
,p_translate_column_id=>397
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Ty\00F6p\00F6yt\00E4')
,p_translate_from_text=>'Desktop'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31624732724162398676)
,p_translated_flow_id=>192102
,p_translate_to_id=>19212.192102
,p_translate_from_id=>19212
,p_translate_column_id=>476
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&APP_NAME.'
,p_translate_from_text=>'&APP_NAME.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31627792651269982176)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31627359497884619924.192102)
,p_translate_from_id=>wwv_flow_api.id(31627359497884619924)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'IR_REPORT_ALIAS_'
,p_translate_from_text=>'IR_REPORT_ALIAS_'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31631062456844096374)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>1.192102
,p_translate_from_id=>1
,p_translate_column_id=>12
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Valitse navigointipalkista <strong>suomi</strong> tai <strong>englanti</strong>. IR -raportin valitsimen raporttien nimet k\00E4\00E4nnet\00E4\00E4n valitun kielen mukaan.')
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select <strong>Finnish</strong> or <strong>English</strong> from the navigation bar.',
'Then the report names of the IR report selector are also translated according to the selected language.'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(31631062506930096375)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31245738312375934419.192102)
,p_translate_from_id=>wwv_flow_api.id(31245738312375934419)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Ohje'
,p_translate_from_text=>'Help'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36321145919809266050)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31627359497884619924.192102)
,p_translate_from_id=>wwv_flow_api.id(31627359497884619924)
,p_translate_column_id=>299
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'IG_REPORT_ALIAS_'
,p_translate_from_text=>'IG_REPORT_ALIAS_'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36328354003629521085)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36327812147386458003.192102)
,p_translate_from_id=>wwv_flow_api.id(36327812147386458003)
,p_translate_column_id=>363
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'no_password_login'
,p_translate_from_text=>'no_password_login'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36328354152475521092)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36327812147386458003.192102)
,p_translate_from_id=>wwv_flow_api.id(36327812147386458003)
,p_translate_column_id=>365
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36328354662399521328)
,p_page_id=>9999
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(31621528083576255371.192102)
,p_translate_from_id=>wwv_flow_api.id(31621528083576255371)
,p_translate_column_id=>458
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Kirjautuminen ei vaadi salasanaa. Anna nimesi kirjautuaksesi sis\00E4\00E4n.')
,p_translate_from_text=>'Log In not require password. Enter your name to Log In.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329828807409583354)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287591587382641526.192102)
,p_translate_from_id=>wwv_flow_api.id(36287591587382641526)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('Ty\00F6ntekij\00E4t IG')
,p_translate_from_text=>'Employees IG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329828914859583355)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287591587382641526.192102)
,p_translate_from_id=>wwv_flow_api.id(36287591587382641526)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select empno',
'  ,ename',
'  ,job',
'  ,mgr',
'  ,hiredate',
'  ,sal',
'  ,comm',
'  ,deptno',
'from fi_jaris_emp'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select empno',
'  ,ename',
'  ,job',
'  ,mgr',
'  ,hiredate',
'  ,sal',
'  ,comm',
'  ,deptno',
'from fi_jaris_emp'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329829198423583363)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287591587382641526.192102)
,p_translate_from_id=>wwv_flow_api.id(36287591587382641526)
,p_translate_column_id=>143
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Ty\00F6ntekij\00E4t IG')
,p_translate_from_text=>'Employees IG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329829385759583378)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287592642969641537.192102)
,p_translate_from_id=>wwv_flow_api.id(36287592642969641537)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Henkil\00F6numero')
,p_translate_from_text=>'Employee Number'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329829459414583378)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287592704517641538.192102)
,p_translate_from_id=>wwv_flow_api.id(36287592704517641538)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Nimi'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329829692382583379)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287592894054641539.192102)
,p_translate_from_id=>wwv_flow_api.id(36287592894054641539)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Ty\00F6')
,p_translate_from_text=>'Job'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329829851756583379)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287592995872641540.192102)
,p_translate_from_id=>wwv_flow_api.id(36287592995872641540)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Esimies'
,p_translate_from_text=>'Manager'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329830075757583379)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287593023101641541.192102)
,p_translate_from_id=>wwv_flow_api.id(36287593023101641541)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Palkattu'
,p_translate_from_text=>'Hired on'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329830227618583379)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287593166497641542.192102)
,p_translate_from_id=>wwv_flow_api.id(36287593166497641542)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Palkka'
,p_translate_from_text=>'Salary'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329830418256583379)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287593217315641543.192102)
,p_translate_from_id=>wwv_flow_api.id(36287593217315641543)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Komissio'
,p_translate_from_text=>'Commission'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329830672705583379)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287593324741641544.192102)
,p_translate_from_id=>wwv_flow_api.id(36287593324741641544)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Osasto'
,p_translate_from_text=>'Department'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329830867537583380)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287593023101641541.192102)
,p_translate_from_id=>wwv_flow_api.id(36287593023101641541)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329831067862583380)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287593023101641541.192102)
,p_translate_from_id=>wwv_flow_api.id(36287593023101641541)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'POPUP'
,p_translate_from_text=>'POPUP'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329831260560583380)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287592642969641537.192102)
,p_translate_from_id=>wwv_flow_api.id(36287592642969641537)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329831434161583380)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287592995872641540.192102)
,p_translate_from_id=>wwv_flow_api.id(36287592995872641540)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329831630469583380)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287593023101641541.192102)
,p_translate_from_id=>wwv_flow_api.id(36287593023101641541)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329831864958583380)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287593166497641542.192102)
,p_translate_from_id=>wwv_flow_api.id(36287593166497641542)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329832065915583381)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287593217315641543.192102)
,p_translate_from_id=>wwv_flow_api.id(36287593217315641543)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329832231574583381)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287593324741641544.192102)
,p_translate_from_id=>wwv_flow_api.id(36287593324741641544)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329832422991583381)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287592704517641538.192102)
,p_translate_from_id=>wwv_flow_api.id(36287592704517641538)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329832601828583381)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287592894054641539.192102)
,p_translate_from_id=>wwv_flow_api.id(36287592894054641539)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329832845337583381)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287593023101641541.192102)
,p_translate_from_id=>wwv_flow_api.id(36287593023101641541)
,p_translate_column_id=>427
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329833095275583382)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287593023101641541.192102)
,p_translate_from_id=>wwv_flow_api.id(36287593023101641541)
,p_translate_column_id=>430
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36329833232144583382)
,p_page_id=>1
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(36287593023101641541.192102)
,p_translate_from_id=>wwv_flow_api.id(36287593023101641541)
,p_translate_column_id=>432
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(36396664004219588442)
,p_translated_flow_id=>192102
,p_translate_to_id=>wwv_flow_api.id(239108629808710110967.192102)
,p_translate_from_id=>wwv_flow_api.id(239108629808710110967)
,p_translate_column_id=>237
,p_translate_to_lang_code=>'fi'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Translate IR/IG Report Selector'
,p_translate_from_text=>'Translate IR/IG Report Selector'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(36328169101159469886)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622622189845281263)
,p_name=>'4150_COLUMN_NUMBER'
,p_message_language=>'fi'
,p_message_text=>'Sarake %0'
);
null;
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622588800948281247)
,p_name=>'APEX.ACTIONS.TOGGLE'
,p_message_language=>'fi'
,p_message_text=>'Vaihda %0'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622484721675281197)
,p_name=>'APEX.ACTIVE_STATE'
,p_message_language=>'fi'
,p_message_text=>'(Aktiivinen)'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622622431888281263)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.COUNTER'
,p_message_language=>'fi'
,p_message_text=>'Odota <span id="apex_login_throttle_sec">%0</span> sekuntia kirjautuaksesi uudelleen.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622658286852281280)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.ERROR'
,p_message_language=>'fi'
,p_message_text=>'Kirjautumisyritys on estetty.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622583172371281244)
,p_name=>'APEX.CLOSE_NOTIFICATION'
,p_message_language=>'fi'
,p_message_text=>'Sulje ilmoitus'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622498825344281204)
,p_name=>'APEX.COMBOBOX.LIST_OF_VALUES'
,p_message_language=>'fi'
,p_message_text=>'Arvolista'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622635398658281270)
,p_name=>'APEX.COMBOBOX.SHOW_ALL_VALUES'
,p_message_language=>'fi'
,p_message_text=>'Avaa lista: %0'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622566053085281236)
,p_name=>'APEX.COMPLETED_STATE'
,p_message_language=>'fi'
,p_message_text=>'(Valmistunut)'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622559599953281233)
,p_name=>'APEX.CORRECT_ERRORS'
,p_message_language=>'fi'
,p_message_text=>'Korjaa virheet ennen tallennusta.'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622470656160281190)
,p_name=>'APEX.DATA_HAS_CHANGED'
,p_message_language=>'fi'
,p_message_text=>'Tieto on muuttunut. Nykyinen tarkiste = "%0" sovelluksen tarkiste = "%1"'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622723604811281311)
,p_name=>'APEX.DATEPICKER.ICON_TEXT'
,p_message_language=>'fi'
,p_message_text=>'Popup kalenteri: %0'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622545199594281226)
,p_name=>'APEX.DATEPICKER_VALUE_GREATER_MAX_DATE'
,p_message_language=>'fi'
,p_message_text=>unistr('#LABEL# on my\00F6hemmin kuin m\00E4\00E4ritelty my\00F6h\00E4isin p\00E4iv\00E4m\00E4\00E4r\00E4 %0.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622545423153281226)
,p_name=>'APEX.DATEPICKER_VALUE_INVALID'
,p_message_language=>'fi'
,p_message_text=>'#LABEL# ei vastaa muotoilua %0.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622723963753281311)
,p_name=>'APEX.DATEPICKER_VALUE_LESS_MIN_DATE'
,p_message_language=>'fi'
,p_message_text=>unistr('#LABEL# on aiemmin kuin m\00E4\00E4ritelty aikaisin p\00E4iv\00E4m\00E4\00E4r\00E4 %0.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622545764954281226)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'fi'
,p_message_text=>unistr('#LABEL# ei ole arvov\00E4lill\00E4 %0 ja %1.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622724283678281312)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_IN_YEAR_RANGE'
,p_message_language=>'fi'
,p_message_text=>unistr('#LABEL# ei ole vuosiarvov\00E4lill\00E4 %0 ja %1.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622481722364281195)
,p_name=>'APEX.DIALOG.CANCEL'
,p_message_language=>'fi'
,p_message_text=>'Peruuta'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622698721329281299)
,p_name=>'APEX.DIALOG.CLOSE'
,p_message_language=>'fi'
,p_message_text=>'Sulje'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622499115850281204)
,p_name=>'APEX.DIALOG.HELP'
,p_message_language=>'fi'
,p_message_text=>'Ohje'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622569632651281238)
,p_name=>'APEX.DIALOG.OK'
,p_message_language=>'fi'
,p_message_text=>'OK'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622609813866281257)
,p_name=>'APEX.DIALOG.SAVE'
,p_message_language=>'fi'
,p_message_text=>'Tallenna'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622478108872281194)
,p_name=>'APEX.ERROR.PAGE_NOT_AVAILABLE'
,p_message_language=>'fi'
,p_message_text=>'Sivu ei ole saatavilla'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622477835916281194)
,p_name=>'APEX.ERROR_MESSAGE_HEADING'
,p_message_language=>'fi'
,p_message_text=>'Virheilmoitus'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622622761805281263)
,p_name=>'APEX.FILE_BROWSE.DOWNLOAD_LINK_TEXT'
,p_message_language=>'fi'
,p_message_text=>'Tallenna tiedostoksi.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622658546180281281)
,p_name=>'APEX.GO_TO_ERROR'
,p_message_language=>'fi'
,p_message_text=>'Virheeseen.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622697508608281299)
,p_name=>'APEX.GV.BREAK_COLLAPSE'
,p_message_language=>'fi'
,p_message_text=>'Sulje katkotaso'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622492894600281201)
,p_name=>'APEX.GV.BREAK_EXPAND'
,p_message_language=>'fi'
,p_message_text=>'Laajenna katkotaso'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622731750168281315)
,p_name=>'APEX.GV.DELETED_COUNT'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 rivi\00E4 poistettu')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622488920768281199)
,p_name=>'APEX.GV.DUP_REC_ID'
,p_message_language=>'fi'
,p_message_text=>'Tuplatunniste'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622667887092281285)
,p_name=>'APEX.GV.FIRST_PAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Ensimm\00E4inen')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622699366692281300)
,p_name=>'APEX.GV.LAST_PAGE'
,p_message_language=>'fi'
,p_message_text=>'Viimeinen'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622665442182281284)
,p_name=>'APEX.GV.LOAD_MORE'
,p_message_language=>'fi'
,p_message_text=>unistr('Lataa lis\00E4\00E4 rivej\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622706868904281303)
,p_name=>'APEX.GV.NEXT_PAGE'
,p_message_language=>'fi'
,p_message_text=>'Seuraava'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622639558244281272)
,p_name=>'APEX.GV.PAGE_RANGE_XY'
,p_message_language=>'fi'
,p_message_text=>'%0 - %1'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622479026846281194)
,p_name=>'APEX.GV.PAGE_RANGE_XYZ'
,p_message_language=>'fi'
,p_message_text=>'%0 - %1 %2:sta'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622627525609281266)
,p_name=>'APEX.GV.PREV_PAGE'
,p_message_language=>'fi'
,p_message_text=>'Edellinen'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622519017729281214)
,p_name=>'APEX.GV.ROW_ADDED'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4tty')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622564991413281236)
,p_name=>'APEX.GV.ROW_CHANGED'
,p_message_language=>'fi'
,p_message_text=>'Muutettu'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622553225129281230)
,p_name=>'APEX.GV.ROW_DELETED'
,p_message_language=>'fi'
,p_message_text=>'Poistettu'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622639816413281272)
,p_name=>'APEX.GV.SELECTION_COUNT'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 rivi\00E4 valittu')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622668180230281285)
,p_name=>'APEX.GV.SELECT_PAGE_N'
,p_message_language=>'fi'
,p_message_text=>'Sivu %0'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622607459496281256)
,p_name=>'APEX.GV.SORT_ASCENDING'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4rjest\00E4 nousevasti')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622636249596281270)
,p_name=>'APEX.GV.SORT_ASCENDING_ORDER'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4rjest\00E4 nousevasti %0')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622598479600281252)
,p_name=>'APEX.GV.SORT_DESCENDING'
,p_message_language=>'fi'
,p_message_text=>unistr('Laskeva j\00E4rjestys')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622634123728281269)
,p_name=>'APEX.GV.SORT_DESCENDING_ORDER'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4rjest\00E4 laskevasti %0')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622605601697281255)
,p_name=>'APEX.GV.SORT_OFF'
,p_message_language=>'fi'
,p_message_text=>unistr('\00C4l\00E4 j\00E4rjest\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622519308049281214)
,p_name=>'APEX.GV.TOTAL_PAGES'
,p_message_language=>'fi'
,p_message_text=>unistr('Yhteens\00E4 %0')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622529820683281219)
,p_name=>'APEX.IG.ACC_LABEL'
,p_message_language=>'fi'
,p_message_text=>'Interaktiivinen grid %0'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622607711633281256)
,p_name=>'APEX.IG.ACTIONS'
,p_message_language=>'fi'
,p_message_text=>'Toiminnot'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622675907389281289)
,p_name=>'APEX.IG.ADD'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622590691282281248)
,p_name=>'APEX.IG.ADD_ROW'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4 rivi')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622598724410281252)
,p_name=>'APEX.IG.AGGREGATE'
,p_message_language=>'fi'
,p_message_text=>'Kooste'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622634428884281269)
,p_name=>'APEX.IG.AGGREGATION'
,p_message_language=>'fi'
,p_message_text=>'Kooste'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622601176654281253)
,p_name=>'APEX.IG.ALL'
,p_message_language=>'fi'
,p_message_text=>'Kaikki'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622595130934281250)
,p_name=>'APEX.IG.ALL_TEXT_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>'Kaikki tekstisarakkeet'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622590997125281248)
,p_name=>'APEX.IG.ALTERNATIVE'
,p_message_language=>'fi'
,p_message_text=>'Vaihtoehtoinen'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622640116997281272)
,p_name=>'APEX.IG.AND'
,p_message_language=>'fi'
,p_message_text=>'ja'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622604491695281255)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT'
,p_message_language=>'fi'
,p_message_text=>unistr('Arvioi erillisten m\00E4\00E4r\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622676266547281289)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT_OVERALL'
,p_message_language=>'fi'
,p_message_text=>unistr('Erillisten tietojen arvioitu kokonaism\00E4\00E4r\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622742843102281320)
,p_name=>'APEX.IG.AREA'
,p_message_language=>'fi'
,p_message_text=>'Alue'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622530124511281219)
,p_name=>'APEX.IG.ASCENDING'
,p_message_language=>'fi'
,p_message_text=>'Nouseva'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622601435149281253)
,p_name=>'APEX.IG.AUTHORIZATION'
,p_message_language=>'fi'
,p_message_text=>'Valtuutus'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622744959334281321)
,p_name=>'APEX.IG.AUTO'
,p_message_language=>'fi'
,p_message_text=>'Auto'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622631434259281268)
,p_name=>'APEX.IG.AVG'
,p_message_language=>'fi'
,p_message_text=>'Keskiarvo'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622530415125281219)
,p_name=>'APEX.IG.AVG_OVERALL'
,p_message_language=>'fi'
,p_message_text=>'Kokonaiskeskiarvo'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622476907518281193)
,p_name=>'APEX.IG.AXIS_LABEL_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Nimikeakselin otsikko'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622489218472281199)
,p_name=>'APEX.IG.AXIS_VALUE_DECIMAL'
,p_message_language=>'fi'
,p_message_text=>'Desimaaleja'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622517895950281213)
,p_name=>'APEX.IG.AXIS_VALUE_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Arvoakselin otsikko'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622641972385281273)
,p_name=>'APEX.IG.BACKGROUND_COLOR'
,p_message_language=>'fi'
,p_message_text=>unistr('Taustav\00E4ri')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622521401194281215)
,p_name=>'APEX.IG.BAR'
,p_message_language=>'fi'
,p_message_text=>'Palkki'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622745251289281321)
,p_name=>'APEX.IG.BETWEEN'
,p_message_language=>'fi'
,p_message_text=>unistr('v\00E4lill\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622642294596281273)
,p_name=>'APEX.IG.BOTH'
,p_message_language=>'fi'
,p_message_text=>'Molemmat'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622525903900281217)
,p_name=>'APEX.IG.BUBBLE'
,p_message_language=>'fi'
,p_message_text=>'Kupla'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622745566930281321)
,p_name=>'APEX.IG.CANCEL'
,p_message_language=>'fi'
,p_message_text=>'Peruuta'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622667293696281285)
,p_name=>'APEX.IG.CASE_SENSITIVE'
,p_message_language=>'fi'
,p_message_text=>'Kirjainkoko merkitsee'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622624548728281264)
,p_name=>'APEX.IG.CASE_SENSITIVE_WITH_BRACKETS'
,p_message_language=>'fi'
,p_message_text=>'(Isot ja pienet kirjaimet)'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622694533373281297)
,p_name=>'APEX.IG.CHANGES_SAVED'
,p_message_language=>'fi'
,p_message_text=>'Muutokset talletettu'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622694270817281297)
,p_name=>'APEX.IG.CHANGE_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('Vaihda n\00E4kym\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622668441811281285)
,p_name=>'APEX.IG.CHART'
,p_message_language=>'fi'
,p_message_text=>'Kaavio'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622568125177281237)
,p_name=>'APEX.IG.CHART_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('Kaavion\00E4kym\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622673837254281288)
,p_name=>'APEX.IG.CLOSE_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Sulje'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622608066022281256)
,p_name=>'APEX.IG.COLORS'
,p_message_language=>'fi'
,p_message_text=>unistr('V\00E4rit')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622591229309281248)
,p_name=>'APEX.IG.COLOR_BLUE'
,p_message_language=>'fi'
,p_message_text=>'Sininen'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622526885974281218)
,p_name=>'APEX.IG.COLOR_GREEN'
,p_message_language=>'fi'
,p_message_text=>unistr('Vihre\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622733210050281316)
,p_name=>'APEX.IG.COLOR_ORANGE'
,p_message_language=>'fi'
,p_message_text=>'Oranssi'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622627855601281266)
,p_name=>'APEX.IG.COLOR_RED'
,p_message_language=>'fi'
,p_message_text=>'Punainen'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622674140505281288)
,p_name=>'APEX.IG.COLOR_YELLOW'
,p_message_language=>'fi'
,p_message_text=>'Keltainen'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622608376785281257)
,p_name=>'APEX.IG.COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Sarake'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622669042838281285)
,p_name=>'APEX.IG.COLUMNS'
,p_message_language=>'fi'
,p_message_text=>'Sarakkeet'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622527156588281218)
,p_name=>'APEX.IG.COLUMN_CONTEXT'
,p_message_language=>'fi'
,p_message_text=>'Sarake %0'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622631782876281268)
,p_name=>'APEX.IG.COLUMN_TYPE'
,p_message_language=>'fi'
,p_message_text=>'Sarakkeen tarkoitus'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622530749259281219)
,p_name=>'APEX.IG.COMPLEX'
,p_message_language=>'fi'
,p_message_text=>'Kompleksi'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622595400574281250)
,p_name=>'APEX.IG.COMPUTE'
,p_message_language=>'fi'
,p_message_text=>'Laske'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622710163908281305)
,p_name=>'APEX.IG.CONTAINS'
,p_message_language=>'fi'
,p_message_text=>unistr('sis\00E4lt\00E4\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622634728419281269)
,p_name=>'APEX.IG.CONTROL_BREAK'
,p_message_language=>'fi'
,p_message_text=>'Katkotaso'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622605945297281255)
,p_name=>'APEX.IG.COUNT'
,p_message_language=>'fi'
,p_message_text=>unistr('Lukum\00E4\00E4r\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622628105573281266)
,p_name=>'APEX.IG.COUNT_DISTINCT'
,p_message_language=>'fi'
,p_message_text=>'Laske erilaiset'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622670587213281286)
,p_name=>'APEX.IG.COUNT_DISTINCT_OVERALL'
,p_message_language=>'fi'
,p_message_text=>unistr('Erillisten arvojen kokonaism\00E4\00E4r\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622674461942281288)
,p_name=>'APEX.IG.COUNT_OVERALL'
,p_message_language=>'fi'
,p_message_text=>unistr('Kokonaislukum\00E4\00E4r\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622489570961281199)
,p_name=>'APEX.IG.CREATE_X'
,p_message_language=>'fi'
,p_message_text=>'Luo %0'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622670869578281286)
,p_name=>'APEX.IG.DATA'
,p_message_language=>'fi'
,p_message_text=>'Tieto'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622562854242281235)
,p_name=>'APEX.IG.DATA_TYPE'
,p_message_language=>'fi'
,p_message_text=>'Tietotyyppi'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622599024757281252)
,p_name=>'APEX.IG.DATE'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4iv\00E4m\00E4\00E4r\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622591542719281249)
,p_name=>'APEX.IG.DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('p\00E4ivi\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622674774079281288)
,p_name=>'APEX.IG.DEFAULT_SETTINGS'
,p_message_language=>'fi'
,p_message_text=>'Oletusasetukset'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622558973515281233)
,p_name=>'APEX.IG.DEFAULT_TYPE'
,p_message_language=>'fi'
,p_message_text=>'Oletustyyppi'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622702097905281301)
,p_name=>'APEX.IG.DELETE'
,p_message_language=>'fi'
,p_message_text=>'Poista'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622531033366281220)
,p_name=>'APEX.IG.DELETE_REPORT_CONFIRM'
,p_message_language=>'fi'
,p_message_text=>unistr('Oletko varma, ett\00E4 haluat poistaa t\00E4m\00E4n raportin ?')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622493196297281201)
,p_name=>'APEX.IG.DELETE_ROW'
,p_message_language=>'fi'
,p_message_text=>'Poista rivi'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622482672508281196)
,p_name=>'APEX.IG.DELETE_ROWS'
,p_message_language=>'fi'
,p_message_text=>'Poista rivit'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622707176691281303)
,p_name=>'APEX.IG.DESCENDING'
,p_message_language=>'fi'
,p_message_text=>'Laskeva'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622628482291281266)
,p_name=>'APEX.IG.DETAIL'
,p_message_language=>'fi'
,p_message_text=>'Yksityiskohta'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622522360380281215)
,p_name=>'APEX.IG.DETAIL_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('Yksityiskohtan\00E4kym\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622608680212281257)
,p_name=>'APEX.IG.DIRECTION'
,p_message_language=>'fi'
,p_message_text=>'Suunta'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622702367551281301)
,p_name=>'APEX.IG.DISABLED'
,p_message_language=>'fi'
,p_message_text=>'Estetty'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622624868637281264)
,p_name=>'APEX.IG.DOES_NOT_CONTAIN'
,p_message_language=>'fi'
,p_message_text=>unistr('ei sis\00E4ll\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622663917201281283)
,p_name=>'APEX.IG.DOES_NOT_START_WITH'
,p_message_language=>'fi'
,p_message_text=>'ei ala'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622489801660281199)
,p_name=>'APEX.IG.DONUT'
,p_message_language=>'fi'
,p_message_text=>'Donitsi'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622599327932281252)
,p_name=>'APEX.IG.DOWNLOAD'
,p_message_language=>'fi'
,p_message_text=>'Tallenna tiedostoksi'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622636534894281270)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT'
,p_message_language=>'fi'
,p_message_text=>'Valitse tiedostomuoto'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622568421086281237)
,p_name=>'APEX.IG.DUPLICATE_AGGREGATION'
,p_message_language=>'fi'
,p_message_text=>'Kaksoiskooste'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622694810928281297)
,p_name=>'APEX.IG.DUPLICATE_CONTROLBREAK'
,p_message_language=>'fi'
,p_message_text=>'Kopioi katkotaso'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622625103095281265)
,p_name=>'APEX.IG.DUPLICATE_ROW'
,p_message_language=>'fi'
,p_message_text=>'Kopioi rivi'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622560464311281234)
,p_name=>'APEX.IG.DUPLICATE_ROWS'
,p_message_language=>'fi'
,p_message_text=>unistr('Kopioi rivej\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622707492045281304)
,p_name=>'APEX.IG.EDIT'
,p_message_language=>'fi'
,p_message_text=>'Editoi'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622559280120281233)
,p_name=>'APEX.IG.EDIT_CHART'
,p_message_language=>'fi'
,p_message_text=>'Muuta kaaviota'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622733596821281316)
,p_name=>'APEX.IG.EDIT_GROUP_BY'
,p_message_language=>'fi'
,p_message_text=>unistr('Muuta ryhmittely\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622532567352281220)
,p_name=>'APEX.IG.EMAIL_BCC'
,p_message_language=>'fi'
,p_message_text=>'Tiedoksi muille ilmoittamatta (bcc)'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622737463630281318)
,p_name=>'APEX.IG.EMAIL_BODY'
,p_message_language=>'fi'
,p_message_text=>'Viesti'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622560780003281234)
,p_name=>'APEX.IG.EMAIL_CC'
,p_message_language=>'fi'
,p_message_text=>'Kopio (cc)'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622477246469281193)
,p_name=>'APEX.IG.EMAIL_SENT'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4hk\00F6posti l\00E4hetetty.')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622495890041281202)
,p_name=>'APEX.IG.EMAIL_SUBJECT'
,p_message_language=>'fi'
,p_message_text=>'Aihe'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622626314571281265)
,p_name=>'APEX.IG.EMAIL_TO'
,p_message_language=>'fi'
,p_message_text=>'Vastaanottaja'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622482934604281196)
,p_name=>'APEX.IG.ENABLED'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4yt\00F6ss\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622632373525281268)
,p_name=>'APEX.IG.EQUALS'
,p_message_language=>'fi'
,p_message_text=>unistr('yht\00E4suuri kuin')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622640459406281272)
,p_name=>'APEX.IG.EXAMPLE'
,p_message_language=>'fi'
,p_message_text=>'Esimerkki'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622487776137281198)
,p_name=>'APEX.IG.EXPRESSION'
,p_message_language=>'fi'
,p_message_text=>'Ilmaisu'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622628718428281266)
,p_name=>'APEX.IG.FD_TYPE'
,p_message_language=>'fi'
,p_message_text=>'Tyyppi'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622642569934281273)
,p_name=>'APEX.IG.FILTER'
,p_message_language=>'fi'
,p_message_text=>'Suodin'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622707706207281304)
,p_name=>'APEX.IG.FILTERS'
,p_message_language=>'fi'
,p_message_text=>'Suotimet'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622636854901281271)
,p_name=>'APEX.IG.FILTER_WITH_DOTS'
,p_message_language=>'fi'
,p_message_text=>'Suodata...'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622637149440281271)
,p_name=>'APEX.IG.FIRST'
,p_message_language=>'fi'
,p_message_text=>unistr('Ensimm\00E4inen')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622735946211281317)
,p_name=>'APEX.IG.FLASHBACK'
,p_message_language=>'fi'
,p_message_text=>'Takauma'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622733882686281316)
,p_name=>'APEX.IG.FORMAT'
,p_message_language=>'fi'
,p_message_text=>'Muotoilu'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622493410946281201)
,p_name=>'APEX.IG.FORMATMASK'
,p_message_language=>'fi'
,p_message_text=>'Muotoilumaski'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622702628063281301)
,p_name=>'APEX.IG.FORMAT_CSV'
,p_message_language=>'fi'
,p_message_text=>'CSV'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622591870652281249)
,p_name=>'APEX.IG.FORMAT_HTML'
,p_message_language=>'fi'
,p_message_text=>'HTML'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622518154138281213)
,p_name=>'APEX.IG.FREEZE'
,p_message_language=>'fi'
,p_message_text=>'Lukitse'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622526241296281217)
,p_name=>'APEX.IG.FUNCTIONS_AND_OPERATORS'
,p_message_language=>'fi'
,p_message_text=>'Funktiot ja operaattorit'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622606208704281256)
,p_name=>'APEX.IG.FUNNEL'
,p_message_language=>'fi'
,p_message_text=>'Suppilo'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622555913192281231)
,p_name=>'APEX.IG.GO'
,p_message_language=>'fi'
,p_message_text=>'Suorita'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622737761207281318)
,p_name=>'APEX.IG.GREATER_THAN'
,p_message_language=>'fi'
,p_message_text=>'suurempi kuin'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622498525013281204)
,p_name=>'APEX.IG.GREATER_THAN_OR_EQUALS'
,p_message_language=>'fi'
,p_message_text=>unistr('suurempi tai yht\00E4suuri kuin')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622493717225281201)
,p_name=>'APEX.IG.GRID'
,p_message_language=>'fi'
,p_message_text=>'Grid'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622608938762281257)
,p_name=>'APEX.IG.GRID_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('Grid n\00E4kym\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622483235779281196)
,p_name=>'APEX.IG.GROUP'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhm\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622595781352281250)
,p_name=>'APEX.IG.GROUP_BY'
,p_message_language=>'fi'
,p_message_text=>'Ryhmittely'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622700523427281300)
,p_name=>'APEX.IG.GROUP_BY_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhmittelyn\00E4kym\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622743102362281320)
,p_name=>'APEX.IG.HD_TYPE'
,p_message_language=>'fi'
,p_message_text=>'Ehtotyyppi'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622708020764281304)
,p_name=>'APEX.IG.HEADING'
,p_message_language=>'fi'
,p_message_text=>'Otsikko'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622596010865281251)
,p_name=>'APEX.IG.HEADING_ALIGN'
,p_message_language=>'fi'
,p_message_text=>'Otsakkeen tasaus'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622699648131281300)
,p_name=>'APEX.IG.HELP'
,p_message_language=>'fi'
,p_message_text=>'Ohje'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622695171246281298)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Voit lis\00E4t\00E4, p\00E4ivitt\00E4\00E4 ja poistaa tietoja suoraan t\00E4ss\00E4 interaktiivisessa taulukossa.</p>'),
unistr('<p>Lis\00E4\00E4 uusi rivi ''Lis\00E4\00E4 Rivi'' -painikkeesta.</p>'),
unistr('<p>Muuta tietoja tuplaklikkaamalla haluamaasi taulukon kentt\00E4\00E4. ''Editoi''-painikkeesta p\00E4\00E4see editointitilaan, jossa kentti\00E4 voi editoida liikkumalla hiirell\00E4 tai n\00E4pp\00E4imist\00F6ll\00E4.</p>'),
unistr('<p>Taulukon ''Valitut toiminnot''-valikosta voit kopioida ja poistaa rivej\00E4. ''Valitut toiminnot''-valikko on k\00E4ytett\00E4viss\00E4, kun yksi tai useampi rivi on valittu rivin valintaruudusta.</p>'),
'<p>Valitun rivin voi kopioida ''Valitut toiminnot''-valikon ''Kopioi rivit''-valinnasta. Valitut rivit voi poistaa ''Valitut toiminnot''-valikon ''Poista rivit''-valinnasta.</p>'))
);
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622743495673281321)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING_HEADING'
,p_message_language=>'fi'
,p_message_text=>'Editointivalmiudet'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622704792836281302)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Interaktiivinen grid on raportti, jonka tietojoukko on muokattavissa ja josta voi hakea tietoja. Voit rajoittaa ja muuttaa tietojoukon esityst\00E4.</p>'),
unistr('<p>K\00E4yt\00E4 hakukentt\00E4\00E4 tietojoukon suodattamiseen. Toimintovalikosta p\00E4\00E4set moniin modifiointivaihtoehtoihin. Sarakeotsikosta p\00E4\00E4see kunkin sarakkeen mahdollisiin muokkausvaihtoehtoihin.</p>'),
unistr('<p>Tekem\00E4si muutokset voi tallettaa raportiksi Raportti-valikossa. Voit my\00F6s ladata raportin tiedot tiedostoksi tai l\00E4hett\00E4\00E4 s\00E4hk\00F6postina.</p>'),
unistr('<p>Lis\00E4tietoja Using Interactive Grids <em>Oracle Application Express End User''s Guide</em>.</p>')))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622483550562281196)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO_HEADING'
,p_message_language=>'fi'
,p_message_text=>'Kuvaus'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622531385101281220)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Voit muokata interaktiivista gridi\00E4 n\00E4ytt\00E4m\00E4\00E4n tietoja monin eri tavoin k\00E4ytt\00E4en sen sis\00E4\00E4nrakennettuja ominaisuuksia.</p>'),
unistr('<p>K\00E4yt\00E4 sarakeotsikon valikkoja tai toimintovalikkoa p\00E4\00E4tt\00E4ess\00E4si mit\00E4 sarakkeita haluat n\00E4ytt\00E4\00E4, n\00E4ytt\00F6j\00E4rjestyksen ja lukitsemaan sarakkeet. Voit my\00F6s m\00E4\00E4ritell\00E4 erilaisia suotimia ja j\00E4rjest\00E4\00E4 tiedon haluamaasi j\00E4rjestykseen.</p>'),
unistr('<p>K\00E4yt\00E4 hakukent\00E4n vieress\00E4 olevia n\00E4kym\00E4painikkeita vaihtaaksesi sovelluskehitt\00E4j\00E4n m\00E4\00E4ritt\00E4miin muihin n\00E4kymiin. Voit my\00F6s luoda kaavion tai katsella olemassaolevaa kaaviota.</p>'),
unistr('<p><em>Huom. paina <strong>Ohje</strong> interaktiivisen gridin dialogeissa saadaksesi lis\00E4\00E4 yksityiskohtaista tietoa valitusta toiminnosta.</em></p>')))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622490168510281200)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING_HEADING'
,p_message_language=>'fi'
,p_message_text=>'Raportointivalmiudet'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622629017392281266)
,p_name=>'APEX.IG.HELP.ACTIONS_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Interaktiivinen Grid ohje'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622629315699281267)
,p_name=>'APEX.IG.HELP.AGGREGATE'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>T\00E4ll\00E4 dialogilla voit  muodostaa koosteita sarakkeista. Koostearvot n\00E4kyv\00E4t sarakkeen tietojen alla tai katkotason alla, jos katkotaso on m\00E4\00E4ritetty.</p>'),
'<p><strong>Kooste lista</strong><br>',
unistr('Listassa on m\00E4\00E4ritetyt koosteet. Koosteen voi est\00E4\00E4/sallia.<br>'),
unistr('Paina lis\00E4\00E4 (&plus;) lis\00E4t\00E4ksesi koosteen tai poista (&minus;) poistaaksesi koosteen.</p>'),
'<p><strong>Kooste asetus</strong><br>',
unistr('M\00E4\00E4rit\00E4 kooste.<br>'),
'Valitse sarake ja koostetyyppi.<br>',
'Voit antaa koosteelle vihjetekstin.<br>',
unistr('Jos katkotaso on m\00E4\00E4ritetty, valitsemalla <strong>N\00E4yt\00E4 kokonaisarvo</strong> tulee koko tietojoukon keskiarvo, summa tai vastaava arvo tietojen alle.</p>'),
unistr('<p><em>Huom. Kooste dialogiin p\00E4\00E4see toimintovalikosta tai valitsemalla sarakeotsikon ja avautuvasta valinnasta summa (&sum;).</em></p> ')))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622744638025281321)
,p_name=>'APEX.IG.HELP.AGGREGATE_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Koostaminen ohje'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622630870702281267)
,p_name=>'APEX.IG.HELP.CHART'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>T\00E4ll\00E4 dialogilla voit m\00E4\00E4ritell\00E4 kaavion, joka n\00E4ytet\00E4\00E4n erillisen\00E4 n\00E4kym\00E4n\00E4.<br>'),
'Valitse kaavion tyyppi, tee asetukset ja paina <strong>Tallenna</strong>.</p>',
'<p><strong>Kaavio asetus</strong><br>',
unistr('Kaavion asetusvalinnat vaihtelevat kaaviotyypin mukaisesti. Punaisella t\00E4hdell\00E4 merkityt asetukset ovat pakollisia.</p>'),
'<p>Alla kaikki erilaisten kaaviotyyppien asetukset:',
'<ul>',
'  <li>Koostaminen - valitse kaavion tietojen koostamistapa.</li>',
unistr('  <li>P\00E4\00E4t\00F6s - valitse sarake, jossa on osakkeen p\00E4iv\00E4n p\00E4\00E4t\00F6skurssi (vain osakekaavio).</li>'),
unistr('  <li>Desimaalit - anna desimaalinumeroiden lukum\00E4\00E4r\00E4, johon arvot py\00F6ristet\00E4\00E4n.</li>'),
unistr('  <li>Suunta - m\00E4\00E4rit\00E4 j\00E4rjest\00E4misen suunta, nouseva tai laskeva.</li>'),
unistr('  <li>Yl\00E4arvo - valitse sarake, jossa on yl\00E4arvo (vain arvov\00E4li- ja osakekaavioissa).</li>'),
'  <li>Nimike - valitse sarake, joka kuvaa kaavion dataa.</li>',
'  <li>Akseliotsikon nimike - anna akseliotsikko.</li>',
unistr('  <li>Ala-arvo - valitse sarake, jossa on ala-arvo (vain arvov\00E4li- ja osakekaavioissa).</li>'),
unistr('  <li>Tyhj\00E4t - m\00E4\00E4rit\00E4 miten tyhj\00E4-arvot hallitaan j\00E4rjest\00E4misess\00E4 suhteessa ei-tyhjiin arvoihin.</li>'),
unistr('  <li>Avaa - valitse sarake, jossa on p\00E4iv\00E4n avauskurssi (vain osakekaavio).</li>'),
'  <li>Suunta - valitse vaaka- tai pystysuuntainen esitys.</li>',
unistr('  <li>Sarja - valitse sarake, jota k\00E4ytet\00E4\00E4n monisarjaisessa dynaamisessa haussa.</li>'),
unistr('  <li>Pino - m\00E4\00E4rit\00E4 esitystapa pinotuksi.</li>'),
unistr('  <li>J\00E4rjest\00E4 - m\00E4\00E4rit\00E4 j\00E4rjestystapa: nimike vai arvo(t).</li>'),
unistr('  <li>Kohde - valitse kaavion kohdesarake. Kun asetettu, arvo-attribuutti m\00E4\00E4ritt\00E4\00E4 t\00E4ytetyn alueen viipaleessa ja kohde m\00E4\00E4ritt\00E4\00E4 koko viipaleen arvon (vain suppilokaavio).</li>'),
'  <li>Arvo - valitse kaavion arvosarake.</li>',
unistr('  <li>Arvon akseliotsikko - anna otsikko, joka n\00E4kyy arvoakselilla.</li>'),
unistr('  <li>Paljous - valitse sarake, jossa on p\00E4iv\00E4n osakekauppojen m\00E4\00E4r\00E4 (vain osakekaavioissa).</li>'),
'  <li>X - valitse kaavion x-akselin arvosarake (vain kupla- ja hajontakaavio).</li>',
'  <li>Y - valitse kaavion y-akselin arvosarake (vain kupla- ja hajontakaavio).</li>',
unistr('  <li>Z - valitse sarake, jossa on pylv\00E4\00E4n leveys tai kuplan s\00E4de (vain pylv\00E4s-, kupla- ja arvov\00E4likaavio).</li>'),
'</ul>',
'</p>'))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622598174476281252)
,p_name=>'APEX.IG.HELP.CHART_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Kaavio ohje'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622488312709281199)
,p_name=>'APEX.IG.HELP.COLUMNS'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>K\00E4yt\00E4 t\00E4t\00E4 dialogia valitaksesi n\00E4ytett\00E4v\00E4t sarakkeet ja niiden j\00E4rjestyksen.</p>'),
'<p>Piilota sarake poistamalla valinta.<br>',
unistr('Muuta sarakej\00E4rjestyst\00E4 painamalla siirr\00E4 yl\00F6s (&uarr;) tai siirr\00E4 alas (&darr;).<br>'),
unistr('K\00E4yt\00E4 alasvetovalintaa  listataksesi kaikki sarakkeet, n\00E4ytetyt sarakkeet tai ei-n\00E4ytett\00E4v\00E4t sarakkeet.</p>'),
unistr('<p>Joissakin tapauksissa voit m\00E4\00E4ritt\00E4\00E4 sarakkeen minimileveyden pikselein\00E4.</p>'),
unistr('<p><em>Huom. Voit muuttaa sarakej\00E4rjestyst\00E4 my\00F6s painamalla sarakeotsikon vetokuvaketta ja vet\00E4m\00E4ll\00E4 oikealle tai vasemmalle. Voit my\00F6s muuttaa sarakkeen leveytt\00E4 valitsemalla otsikossa sarakkeiden erottimen ja liikuttamalla sit\00E4 vasemmalle tai oikea')
||'lle.</em></p>'))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622559815107281233)
,p_name=>'APEX.IG.HELP.COLUMNS_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Sarakkeet ohje'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622555043829281231)
,p_name=>'APEX.IG.HELP.COMPUTE'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>T\00E4ss\00E4 dialogissa voit m\00E4\00E4ritell\00E4 lis\00E4sarakkeita, jotka perustuvat matemaattisiin- tai muihin funktioihin ja olemassaoleviin sarakkeisiin.</p>'),
'<p><strong>Lista laskennat</strong><br>',
unistr('Lista n\00E4ytt\00E4\00E4 m\00E4\00E4ritellyt laskennalliset sarakkeet (laskennat). Laskennan voi est\00E4\00E4/sallia valintaruudulla.<br>'),
unistr('Paina lis\00E4\00E4 (&plus;) lis\00E4t\00E4ksesi uuden laskennan, tai poista (&minus;) poistaaksesi olemassaolevan laskennan.</p>'),
'<p><strong>Laskenta asetukset</strong><br>',
unistr('M\00E4\00E4rit\00E4 laskenta.<br>'),
'Anna sarakkeiden asetuksia kuten otsake, nimike ja valitse tasausasetukset.<br>',
unistr('Tekstialueella voit antaa laskennan sarakkeet ja k\00E4ytetyt funktiot.<br>'),
'Valitse uuden sarakkeen tietotyyppi ja esityksen muotoilumaski.</p>'))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622497924305281203)
,p_name=>'APEX.IG.HELP.COMPUTE_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Laskenta ohje'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622678035811281290)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>K\00E4yt\00E4 t\00E4t\00E4 dialogia katkotason m\00E4\00E4ritt\00E4miseksi yhdelle tai useammalle sarakkeelle.</p>'),
'<p><strong>Katkotaso lista</strong><br>',
unistr('Katkotasolistassa on m\00E4\00E4ritetyt katkotasot. Katkotason voi est\00E4\00E4/sallia.<br>'),
unistr('Paina Lis\00E4\00E4 (&plus;) lis\00E4t\00E4ksesi uuden sarakkeen katkotasoon, tai Poista (&minus;) poistaaksesi sarakkeen katkotasosta.<br>'),
unistr('Sarakej\00E4rjestyksen muuttaminen tapahtuu painikkeista (&uarr;) ja (&darr;).</p>'),
'<p><strong>Katkotaso asetukset</strong><br>',
unistr('M\00E4\00E4rit\00E4 katkotasosarake.<br>'),
unistr('Valitulle katkotasosarakkeelle voi asettaa j\00E4rjest\00E4missuunnan ja null-arvon huomioiminen j\00E4rjest\00E4misess\00E4.</p>'),
unistr('<p><em>Huom: Interaktiivisessa gridiss\00E4 katkotason voi m\00E4\00E4ritt\00E4\00E4 my\00F6s sarakeotsikon katkotasoikonista.</em></p>')))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622696347883281298)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Katkotason ohje'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622703240385281302)
,p_name=>'APEX.IG.HELP.DOWNLOAD'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>K\00E4yt\00E4 t\00E4t\00E4 dialogia ladataksesi kaikki t\00E4m\00E4nhetkiset rivit ulkoiseen tiedostoon. Tiedostoon tulevat vain t\00E4ll\00E4 hetkell\00E4 n\00E4kyv\00E4t sarakkeet huomioiden k\00E4ytetyt suodattimet ja j\00E4rjest\00E4misasetukset.</p>'),
'<p>Valitse tiedoston tyyppi ja paina lataa.<br>',
unistr('Huom. CSV:ss\00E4 ei ole mukana muotoiluja, kuten koosteita tai katkotasoja.</p>'),
unistr('<p>L\00E4hett\00E4\00E4ksesi tiedoston s\00E4hk\00F6postina, valitse L\00E4het\00E4 s\00E4hk\00F6postina ja anna vastaanottaja, aihe ja viesti.</p>')))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622675624543281288)
,p_name=>'APEX.IG.HELP.DOWNLOAD_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Lataaminen ohje'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622664836406281284)
,p_name=>'APEX.IG.HELP.FILTER'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>T\00E4ss\00E4 dialogissa voit m\00E4\00E4ritell\00E4 suotimia rajoittamaan hakua.</p>'),
'<p><strong>Lista suotimet</strong><br>',
unistr('Lista n\00E4ytt\00E4\00E4 m\00E4\00E4ritellyt suotimet. Suotimen voi est\00E4\00E4/sallia.<br>'),
unistr('Paina lis\00E4\00E4 (&plus;) luodaksesi uuden suotimen, tai poista (&minus;) poistaaksesi olemassaolevan suotimen.</p>'),
'<p><strong>Suodin asetukset</strong><br>',
unistr('M\00E4\00E4rit\00E4 suotimen ominaisuudet.<br>'),
'Valitse sopiva suotimen tyyppi:<br>',
'&nbsp;&nbsp;&nbsp;Rivi - suodata annetulla suodatusehdolla kaikki suodatuskelpoiset sarakkeet.<br>',
unistr('&nbsp;&nbsp;&nbsp;Sarake - suodata vain annettu sarake m\00E4\00E4ritetyll\00E4 operaattorilla ja arvolla.</p>'),
unistr('<p><em>Huomaa: Interaktiivisessa gridiss\00E4 voit tehd\00E4 rivisuotimen suoraan hakukent\00E4ss\00E4. Hakukent\00E4n ''Valitse hakusarakkeet'' -toiminnosta (suurennuslasi) voit rajata haun koskemaan vain tietty\00E4 saraketta. Vaihtoehtoisesti sarakkeen otsikkovalikossa voi')
||' valita arvon sarakkeelle suotimeksi.</em></p>',
''))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622557735427281232)
,p_name=>'APEX.IG.HELP.FILTER_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Suodin ohje'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622742203231281320)
,p_name=>'APEX.IG.HELP.FLASHBACK'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>K\00E4yt\00E4 t\00E4t\00E4 dialogia n\00E4hd\00E4ksesi tiedon niin kuin se oli aiempana ajan hetken\00E4.</p>'),
unistr('<p>Anna haulle takauman minuuttilukum\00E4\00E4r\00E4.</p>')))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622732666810281316)
,p_name=>'APEX.IG.HELP.FLASHBACK_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Takauma ohje'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622492576400281201)
,p_name=>'APEX.IG.HELP.GROUP_BY_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Ryhmittely ohje'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622497650831281203)
,p_name=>'APEX.IG.HELP.HIGHLIGHT'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>K\00E4yt\00E4 t\00E4t\00E4 dialogia korostaaksesi rivej\00E4 tai sarakkeita antamiesi ehtojen mukaisesti.</p>'),
'<p><strong>Korosta lista</strong><br>',
unistr('Korosta lista n\00E4ytt\00E4\00E4 m\00E4\00E4ritetyt korostukset. Korostuksen voi est\00E4\00E4/sallia.<br>'),
unistr('Paina Lis\00E4\00E4 (&plus;) lis\00E4t\00E4ksesi uuden korostuksen tai Poista (&minus;) poistaaksesi olemassaolevan korostuksen.</p>'),
'<p><strong>Korosta asetukset</strong><br>',
unistr('M\00E4\00E4rit\00E4 korostuksen ominaisuudet.<br>'),
unistr('Anna nimi, valitse rivi tai sarake ja valitse HTML-v\00E4rikoodit taustalle ja tekstille.<br>'),
unistr('Valitse sopiva <strong>Ehtotyyppi</strong> korostamaan tietty\00E4 tietoa:<br>'),
unistr('&nbsp;&nbsp;&nbsp;Rivi - korosta miss\00E4 tahansa sarakkeessa.<br>'),
unistr('&nbsp;&nbsp;&nbsp;Sarake - korosta m\00E4\00E4ritellyll\00E4 operaattorilla ja arvolla m\00E4\00E4ritetyn sarakkeen tietoja.</p>')))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622558069142281232)
,p_name=>'APEX.IG.HELP.HIGHLIGHT_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Korosta ohje'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622486225078281198)
,p_name=>'APEX.IG.HELP.REPORT'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>K\00E4yt\00E4 t\00E4t\00E4 dialogia tallettaaksesi asettelu- ja asetusmuutoksesi.<br>'),
unistr('Sovelluskehitt\00E4j\00E4t voivat m\00E4\00E4ritt\00E4\00E4 useita asetteluvaihtoehtoja. Kun oikeutettua, loppuk\00E4ytt\00E4j\00E4 voi tallettaa raportin julkiseksi, joka asettaa raportin saataville kaikille k\00E4ytt\00E4jille. Raportin voi tallettaa my\00F6s yksityiseksi, jolloin vain tallettaj')
||unistr('a n\00E4kee sen.</p>'),
'<p>Valitse tyyppi ja anna nimi talletettavalle raportille.</p>'))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622558339993281232)
,p_name=>'APEX.IG.HELP.REPORT_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Raportti ohje'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622696608279281298)
,p_name=>'APEX.IG.HELP.SORT'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>T\00E4ll\00E4 dialogilla voit asettaa j\00E4rjestyksen.</p>'),
unistr('<p><strong>J\00E4rjestys lista</strong><br>'),
unistr('J\00E4rjestys dialogi n\00E4ytt\00E4\00E4 listan m\00E4\00E4ritellyist\00E4 j\00E4rjest\00E4miss\00E4\00E4nn\00F6ist\00E4.<br>'),
unistr('Paina lis\00E4\00E4 (&plus;) luodaksesi j\00E4rjest\00E4missarakkeen tai poista (&minus;) poistaaksesi j\00E4rjest\00E4missarakkeen.<br>'),
unistr('Paina siirr\00E4 yl\00F6s (&uarr;) ja siirr\00E4 alas (&darr;) siirt\00E4\00E4ksesi valitun j\00E4rjest\00E4missarakkeen suhteessa toisiin j\00E4rjest\00E4missarakkeisiin.</p>'),
unistr('<p><strong>J\00E4rjestys asetukset</strong><br>'),
unistr('Valitse j\00E4rjest\00E4missarake, j\00E4rjestyksen suunta ja tyhjien sarakkeiden (null) j\00E4rjestyksen.</p>'),
unistr('<p><em>Huomaa: Tietojoukon voi j\00E4rjest\00E4\00E4 n\00E4kym\00E4tt\00F6miss\00E4 olevien sarakkeiden mukaan. Toisaalta kaikki sarakkeet eiv\00E4t v\00E4ltt\00E4m\00E4tt\00E4 ole j\00E4rjest\00E4missarakkeita.</em><br>'),
unistr('<em>N\00E4kyviss\00E4 olevat sarakkeet voi j\00E4rjest\00E4\00E4 painamalla sarakeotsikon oikeassa laidassa olevia yl\00F6s (nouseva) tai alas (laskeva) nuolia. Sarakkeita voi lis\00E4t\00E4 j\00E4rjest\00E4miseen pit\00E4m\00E4ll\00E4 vaihtopainiketta (shift) painettuna ja painamalla yl\00F6s tai alas nu')
||'olia.</em></p>'))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622633853112281269)
,p_name=>'APEX.IG.HELP.SORT_TITLE'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4rjest\00E4 ohje')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622730263111281314)
,p_name=>'APEX.IG.HELP.SUBSCRIPTION_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Tilaus ohje'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622561006760281234)
,p_name=>'APEX.IG.HIDE'
,p_message_language=>'fi'
,p_message_text=>'Piilota'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622558689653281233)
,p_name=>'APEX.IG.HIGHLIGHT'
,p_message_language=>'fi'
,p_message_text=>'Korosta'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622569922197281238)
,p_name=>'APEX.IG.HIGH_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Korkein'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622499470387281204)
,p_name=>'APEX.IG.HORIZONTAL'
,p_message_language=>'fi'
,p_message_text=>'Vaakasuora'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622521117379281215)
,p_name=>'APEX.IG.HOURS'
,p_message_language=>'fi'
,p_message_text=>'tunnit'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622625749634281265)
,p_name=>'APEX.IG.ICON'
,p_message_language=>'fi'
,p_message_text=>'Ikoni'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622570277314281238)
,p_name=>'APEX.IG.ICON_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('Ikonin\00E4kym\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622478474268281194)
,p_name=>'APEX.IG.IN'
,p_message_language=>'fi'
,p_message_text=>'joukossa'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622706584196281303)
,p_name=>'APEX.IG.INACTIVE_SETTING'
,p_message_language=>'fi'
,p_message_text=>'Ei toiminnassa oleva asetus'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622700205806281300)
,p_name=>'APEX.IG.INACTIVE_SETTINGS'
,p_message_language=>'fi'
,p_message_text=>unistr('Asetukset ei k\00E4yt\00F6ss\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622672034441281287)
,p_name=>'APEX.IG.INTERNAL_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Sis\00E4inen virhe prosessoitaessa interaktiivista gridi\00E4.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622626991053281265)
,p_name=>'APEX.IG.INVALID_DATE_FORMAT'
,p_message_language=>'fi'
,p_message_text=>unistr('Virheellinen p\00E4iv\00E4m\00E4\00E4r\00E4muoto')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622557159804281232)
,p_name=>'APEX.IG.INVALID_SETTING'
,p_message_language=>'fi'
,p_message_text=>'Virheellinen asetus'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622566973282281237)
,p_name=>'APEX.IG.INVALID_SETTINGS'
,p_message_language=>'fi'
,p_message_text=>unistr('Ep\00E4kelvot asetukset')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622692765509281297)
,p_name=>'APEX.IG.INVALID_SORT_BY'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4rjest\00E4minen asetettu %0:lle, mutta %0:lla ei ole valittu saraketta.')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622475701786281193)
,p_name=>'APEX.IG.INVALID_VALUE'
,p_message_language=>'fi'
,p_message_text=>'Virheellinen arvo'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622624226034281264)
,p_name=>'APEX.IG.INVISIBLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Ei n\00E4ytet\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622524134999281216)
,p_name=>'APEX.IG.IN_THE_LAST'
,p_message_language=>'fi'
,p_message_text=>unistr('viimeisess\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622626022454281265)
,p_name=>'APEX.IG.IN_THE_NEXT'
,p_message_language=>'fi'
,p_message_text=>'seuraavassa'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622693030872281297)
,p_name=>'APEX.IG.IS_NOT_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('ei ole tyhj\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622480587495281195)
,p_name=>'APEX.IG.IS_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('on tyhj\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622703563142281302)
,p_name=>'APEX.IG.LABEL'
,p_message_language=>'fi'
,p_message_text=>'Nimike'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622736563042281317)
,p_name=>'APEX.IG.LABEL_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Nimike'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622632025492281268)
,p_name=>'APEX.IG.LAST'
,p_message_language=>'fi'
,p_message_text=>'Viimeinen'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622557430803281232)
,p_name=>'APEX.IG.LAST.DAY'
,p_message_language=>'fi'
,p_message_text=>unistr('Viimeinen p\00E4iv\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622736857870281317)
,p_name=>'APEX.IG.LAST.HOUR'
,p_message_language=>'fi'
,p_message_text=>'Viimeinen tunti'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622486532854281198)
,p_name=>'APEX.IG.LAST.MINUTE'
,p_message_language=>'fi'
,p_message_text=>'Viimeinen minuutti'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622480848570281195)
,p_name=>'APEX.IG.LAST.MONTH'
,p_message_language=>'fi'
,p_message_text=>'Viimeinen kuukausi'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622532202363281220)
,p_name=>'APEX.IG.LAST.WEEK'
,p_message_language=>'fi'
,p_message_text=>'Viime viikko'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622560152651281233)
,p_name=>'APEX.IG.LAST.X_DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('Viimeiset %0 p\00E4iv\00E4\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622701737414281301)
,p_name=>'APEX.IG.LAST.X_HOURS'
,p_message_language=>'fi'
,p_message_text=>'Viimeiset %0 tuntia'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622627204137281266)
,p_name=>'APEX.IG.LAST.X_MINUTES'
,p_message_language=>'fi'
,p_message_text=>'Viimeiset %0 minuuttia'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622600884177281253)
,p_name=>'APEX.IG.LAST.X_MONTHS'
,p_message_language=>'fi'
,p_message_text=>'Viimeiset %0 kuukautta'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622665150606281284)
,p_name=>'APEX.IG.LAST.X_WEEKS'
,p_message_language=>'fi'
,p_message_text=>'Edelliset %0 viikkoa'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622555305827281231)
,p_name=>'APEX.IG.LAST.X_YEARS'
,p_message_language=>'fi'
,p_message_text=>'Edelliset %0 vuotta'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622641374773281273)
,p_name=>'APEX.IG.LAST.YEAR'
,p_message_language=>'fi'
,p_message_text=>'Viime vuosi'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622495578833281202)
,p_name=>'APEX.IG.LAYOUT_ALIGN'
,p_message_language=>'fi'
,p_message_text=>'Solun tasaus'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622564669562281236)
,p_name=>'APEX.IG.LAYOUT_USEGROUPFOR'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4yt\00E4 ryhm\00E4\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622476033996281193)
,p_name=>'APEX.IG.LESS_THAN'
,p_message_language=>'fi'
,p_message_text=>'pienempi kuin'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622603222357281254)
,p_name=>'APEX.IG.LESS_THAN_OR_EQUALS'
,p_message_language=>'fi'
,p_message_text=>unistr('pienempi tai yht\00E4 suuri kuin')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622730597106281314)
,p_name=>'APEX.IG.LINE'
,p_message_language=>'fi'
,p_message_text=>'Viiva'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622663319110281283)
,p_name=>'APEX.IG.LINE_WITH_AREA'
,p_message_language=>'fi'
,p_message_text=>'Aluekaavio'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622703865387281302)
,p_name=>'APEX.IG.LISTAGG'
,p_message_language=>'fi'
,p_message_text=>'Koostelista'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622638949850281272)
,p_name=>'APEX.IG.LOW_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Alaraja'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622696964583281298)
,p_name=>'APEX.IG.MAILADRESSES_COMMASEP'
,p_message_language=>'fi'
,p_message_text=>'Useammat osoitteet pilkulla eroteltuina'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622737100029281318)
,p_name=>'APEX.IG.MATCHES_REGULAR_EXPRESSION'
,p_message_language=>'fi'
,p_message_text=>'on ilmaisun mukainen'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622478722492281194)
,p_name=>'APEX.IG.MAX'
,p_message_language=>'fi'
,p_message_text=>'Maksimi'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622693309724281297)
,p_name=>'APEX.IG.MAX_OVERALL'
,p_message_language=>'fi'
,p_message_text=>unistr('Yhteenlaskettu enimm\00E4ism\00E4\00E4r\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622663618406281283)
,p_name=>'APEX.IG.MEDIAN'
,p_message_language=>'fi'
,p_message_text=>'Mediaani'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622486869111281198)
,p_name=>'APEX.IG.MEDIAN_OVERALL'
,p_message_language=>'fi'
,p_message_text=>'Kokonaismediaani'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622524407714281216)
,p_name=>'APEX.IG.MIN'
,p_message_language=>'fi'
,p_message_text=>'Minimi'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622567259265281237)
,p_name=>'APEX.IG.MINUTES'
,p_message_language=>'fi'
,p_message_text=>'minuutit'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622704141809281302)
,p_name=>'APEX.IG.MINUTES_AGO'
,p_message_language=>'fi'
,p_message_text=>'Minuutteja sitten'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622590019783281248)
,p_name=>'APEX.IG.MIN_OVERALL'
,p_message_language=>'fi'
,p_message_text=>'Kaikista pienin'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622481137026281195)
,p_name=>'APEX.IG.MONTHS'
,p_message_language=>'fi'
,p_message_text=>'kuukaudet'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622730817967281315)
,p_name=>'APEX.IG.MORE_DATA_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('Tulosjoukossa on enemm\00E4n kuin %0 rivi\00E4, joka ylitt\00E4\00E4 enimm\00E4ism\00E4\00E4r\00E4n. Lis\00E4\00E4 suodin n\00E4hd\00E4ksesi tuloksen.')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622731106147281315)
,p_name=>'APEX.IG.NAME'
,p_message_language=>'fi'
,p_message_text=>'Nimi'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622481424484281195)
,p_name=>'APEX.IG.NAMED_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Nimetyt raportit'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622668707858281285)
,p_name=>'APEX.IG.NEXT.DAY'
,p_message_language=>'fi'
,p_message_text=>unistr('Seuraava p\00E4iv\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622529232980281219)
,p_name=>'APEX.IG.NEXT.HOUR'
,p_message_language=>'fi'
,p_message_text=>'Seuraava tunti'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622587027250281246)
,p_name=>'APEX.IG.NEXT.MINUTE'
,p_message_language=>'fi'
,p_message_text=>'Seuraava minuutti'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622520837250281214)
,p_name=>'APEX.IG.NEXT.MONTH'
,p_message_language=>'fi'
,p_message_text=>'Seuraava kuukausi'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622739273969281318)
,p_name=>'APEX.IG.NEXT.WEEK'
,p_message_language=>'fi'
,p_message_text=>'Ensi viikolla'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622603533303281254)
,p_name=>'APEX.IG.NEXT.X_DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('Seuraavat %0 p\00E4iv\00E4\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622555614118281231)
,p_name=>'APEX.IG.NEXT.X_HOURS'
,p_message_language=>'fi'
,p_message_text=>'Seuraavat %0 tuntia'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622739522233281319)
,p_name=>'APEX.IG.NEXT.X_MINUTES'
,p_message_language=>'fi'
,p_message_text=>'Seuraavat %0 minuuttia'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622561313388281234)
,p_name=>'APEX.IG.NEXT.X_MONTHS'
,p_message_language=>'fi'
,p_message_text=>'Seuraavat %0 kuukautta'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622742595268281320)
,p_name=>'APEX.IG.NEXT.X_WEEKS'
,p_message_language=>'fi'
,p_message_text=>'Seuraavat %0 viikkoa'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622739842104281319)
,p_name=>'APEX.IG.NEXT.X_YEARS'
,p_message_language=>'fi'
,p_message_text=>'Seuraavat %0 vuotta'
,p_is_js_message=>true
);
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622740189042281319)
,p_name=>'APEX.IG.NEXT.YEAR'
,p_message_language=>'fi'
,p_message_text=>'Ensi vuonna'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622487136891281198)
,p_name=>'APEX.IG.NOT_BETWEEN'
,p_message_language=>'fi'
,p_message_text=>unistr('ei v\00E4lill\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622735397461281317)
,p_name=>'APEX.IG.NOT_EQUALS'
,p_message_language=>'fi'
,p_message_text=>unistr('ei yht\00E4suuri kuin')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622709244175281304)
,p_name=>'APEX.IG.NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>unistr('Alue tunnuksella %0 ei ole interaktiivinen grid tai sit\00E4 ei ole sovelluksessa %1.')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622476341498281193)
,p_name=>'APEX.IG.NOT_IN'
,p_message_language=>'fi'
,p_message_text=>'ei joukossa'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622482044359281196)
,p_name=>'APEX.IG.NOT_IN_THE_LAST'
,p_message_language=>'fi'
,p_message_text=>unistr('ei viimeisess\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622729362656281314)
,p_name=>'APEX.IG.NOT_IN_THE_NEXT'
,p_message_language=>'fi'
,p_message_text=>'ei seuraavassa'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622552649555281230)
,p_name=>'APEX.IG.NO_DATA_FOUND'
,p_message_language=>'fi'
,p_message_text=>'Ei tietoja'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622587338344281247)
,p_name=>'APEX.IG.NULLS'
,p_message_language=>'fi'
,p_message_text=>'Null:eja'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622590369522281248)
,p_name=>'APEX.IG.NUMBER'
,p_message_language=>'fi'
,p_message_text=>'Numeerinen'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622641602127281273)
,p_name=>'APEX.IG.OFF'
,p_message_language=>'fi'
,p_message_text=>'Pois'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622498216328281204)
,p_name=>'APEX.IG.ON'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4\00E4lle')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622731450875281315)
,p_name=>'APEX.IG.ONE_MINUTE_AGO'
,p_message_language=>'fi'
,p_message_text=>'1 minuutti sitten'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622639223878281272)
,p_name=>'APEX.IG.OPEN_COLORPICKER'
,p_message_language=>'fi'
,p_message_text=>unistr('Avaa v\00E4rivalitsin: %0')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622524782479281216)
,p_name=>'APEX.IG.OPEN_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Avaa'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622735693810281317)
,p_name=>'APEX.IG.OPERATOR'
,p_message_language=>'fi'
,p_message_text=>'Operaattori'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622672338376281287)
,p_name=>'APEX.IG.ORIENTATION'
,p_message_language=>'fi'
,p_message_text=>'Suunta'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622709556759281305)
,p_name=>'APEX.IG.PIE'
,p_message_language=>'fi'
,p_message_text=>'Piirakka'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622672679937281287)
,p_name=>'APEX.IG.PIVOT'
,p_message_language=>'fi'
,p_message_text=>'Pivot'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622594856046281250)
,p_name=>'APEX.IG.PIVOT_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('Pivot n\00E4kym\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622487497898281198)
,p_name=>'APEX.IG.PLACEHOLDER_INVALUES'
,p_message_language=>'fi'
,p_message_text=>'Erottele arvot "%0":lla'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622729693557281314)
,p_name=>'APEX.IG.POLAR'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4dekaavio (polar)')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622693681998281297)
,p_name=>'APEX.IG.POSITION_CENTER'
,p_message_language=>'fi'
,p_message_text=>unistr('Keskell\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622693985510281297)
,p_name=>'APEX.IG.POSITION_END'
,p_message_language=>'fi'
,p_message_text=>'Lopussa'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622603802190281254)
,p_name=>'APEX.IG.POSITION_START'
,p_message_language=>'fi'
,p_message_text=>'Alku'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622740445734281319)
,p_name=>'APEX.IG.PRIMARY'
,p_message_language=>'fi'
,p_message_text=>'Ensisijainen'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622525084392281216)
,p_name=>'APEX.IG.PRIMARY_DEFAULT'
,p_message_language=>'fi'
,p_message_text=>'Varsinainen oletus'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622729988243281314)
,p_name=>'APEX.IG.PRIMARY_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Ensisijainen raportti'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622697245101281299)
,p_name=>'APEX.IG.RADAR'
,p_message_language=>'fi'
,p_message_text=>'Tutka'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622525320224281217)
,p_name=>'APEX.IG.RANGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Arvov\00E4li')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622704453871281302)
,p_name=>'APEX.IG.REFRESH'
,p_message_language=>'fi'
,p_message_text=>unistr('Virkist\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622522034748281215)
,p_name=>'APEX.IG.REFRESH_ROW'
,p_message_language=>'fi'
,p_message_text=>unistr('Virkist\00E4 rivi')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622740761680281319)
,p_name=>'APEX.IG.REFRESH_ROWS'
,p_message_language=>'fi'
,p_message_text=>unistr('Virkist\00E4 rivit')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622525692616281217)
,p_name=>'APEX.IG.REMOVE_CONTROL'
,p_message_language=>'fi'
,p_message_text=>'Poista %0'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622709870651281305)
,p_name=>'APEX.IG.REPORT'
,p_message_language=>'fi'
,p_message_text=>'Raportti'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622567587893281237)
,p_name=>'APEX.IG.REPORT.DELETED'
,p_message_language=>'fi'
,p_message_text=>'Raportti poistettu'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622488623553281199)
,p_name=>'APEX.IG.REPORT.SAVED.ALTERNATIVE'
,p_message_language=>'fi'
,p_message_text=>unistr('Vaihtoehtoinen raportti talletettu kaikkien k\00E4ytett\00E4v\00E4ksi')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622529515086281219)
,p_name=>'APEX.IG.REPORT.SAVED.DEFAULT'
,p_message_language=>'fi'
,p_message_text=>unistr('Oletusraportti tallennettu kaikille k\00E4ytt\00E4jille')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622635915689281270)
,p_name=>'APEX.IG.REPORT.SAVED.PRIVATE'
,p_message_language=>'fi'
,p_message_text=>'Yksityinen raportti talletettu'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622732912125281316)
,p_name=>'APEX.IG.REPORT.SAVED.PUBLIC'
,p_message_language=>'fi'
,p_message_text=>unistr('Julkinen raportti talletettu kaikille k\00E4ytt\00E4jille')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622605301745281255)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF.X.MINUTES_AGO'
,p_message_language=>'fi'
,p_message_text=>'Raportin tieto %0 minuuttia sitten'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622604153111281255)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF_ONE_MINUTE_AGO'
,p_message_language=>'fi'
,p_message_text=>'Raportti 1 minuutin takaisilla tiedoilla'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622706268274281303)
,p_name=>'APEX.IG.REPORT_EDIT'
,p_message_language=>'fi'
,p_message_text=>'Raportti - Editoi'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622482376245281196)
,p_name=>'APEX.IG.REPORT_SAVE_AS'
,p_message_language=>'fi'
,p_message_text=>unistr('Raportti - talleta nimell\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622561616253281234)
,p_name=>'APEX.IG.REPORT_SETTINGS'
,p_message_language=>'fi'
,p_message_text=>'Raportti asetukset'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622631169033281268)
,p_name=>'APEX.IG.REPORT_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>'Talletettu interaktiivinen grid tunnuksella %0 ei ole olemassa.'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622476683130281193)
,p_name=>'APEX.IG.REPORT_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('Raporttin\00E4kym\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622567825974281237)
,p_name=>'APEX.IG.RESET'
,p_message_language=>'fi'
,p_message_text=>'Alkutila'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622552925085281230)
,p_name=>'APEX.IG.REVERT_CHANGES'
,p_message_language=>'fi'
,p_message_text=>'Kumoa muutokset'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622642899231281273)
,p_name=>'APEX.IG.REVERT_ROWS'
,p_message_language=>'fi'
,p_message_text=>'Palauta rivit'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622697805217281299)
,p_name=>'APEX.IG.ROW'
,p_message_language=>'fi'
,p_message_text=>'Rivi'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622741014357281319)
,p_name=>'APEX.IG.ROWS_PER_PAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Rivej\00E4 sivulla')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622601733529281254)
,p_name=>'APEX.IG.ROW_ACTIONS'
,p_message_language=>'fi'
,p_message_text=>'Rivitoiminnot'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622477547739281194)
,p_name=>'APEX.IG.ROW_ACTIONS_FOR'
,p_message_language=>'fi'
,p_message_text=>'Toiminnot riville %0'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622664201558281283)
,p_name=>'APEX.IG.ROW_COLUMN_CONTEXT'
,p_message_language=>'fi'
,p_message_text=>'Rivi %0 sarake %1'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622698128564281299)
,p_name=>'APEX.IG.ROW_CONTEXT'
,p_message_language=>'fi'
,p_message_text=>'Rivi %0'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622705070033281303)
,p_name=>'APEX.IG.SAVE'
,p_message_language=>'fi'
,p_message_text=>'Tallenna'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622637450804281271)
,p_name=>'APEX.IG.SAVED_REPORTS'
,p_message_language=>'fi'
,p_message_text=>'Tallennetut raportit'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622672960777281287)
,p_name=>'APEX.IG.SAVED_REPORT_DEFAULT'
,p_message_language=>'fi'
,p_message_text=>'Oletus'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622587648627281247)
,p_name=>'APEX.IG.SAVED_REPORT_PRIVATE'
,p_message_language=>'fi'
,p_message_text=>'Yksityinen'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622587921935281247)
,p_name=>'APEX.IG.SAVED_REPORT_PUBLIC'
,p_message_language=>'fi'
,p_message_text=>'Julkinen'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622490479032281200)
,p_name=>'APEX.IG.SAVE_AS'
,p_message_language=>'fi'
,p_message_text=>unistr('Talleta nimell\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622527476115281218)
,p_name=>'APEX.IG.SAVE_REPORT_SETTINGS'
,p_message_language=>'fi'
,p_message_text=>'Tallenna raportin asetukset'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622599688727281252)
,p_name=>'APEX.IG.SCATTER'
,p_message_language=>'fi'
,p_message_text=>'Hajonta'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622588201238281247)
,p_name=>'APEX.IG.SEARCH'
,p_message_language=>'fi'
,p_message_text=>'Etsi'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622602082182281254)
,p_name=>'APEX.IG.SEARCH.ALL_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>'Etsi: kaikki tekstisarakkeet'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622488033098281198)
,p_name=>'APEX.IG.SEARCH.COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Etsi: %0'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622479397975281194)
,p_name=>'APEX.IG.SEARCH.ORACLE_TEXT'
,p_message_language=>'fi'
,p_message_text=>'Etsi: koko teksti'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622665748935281284)
,p_name=>'APEX.IG.SEARCH_FOR.X'
,p_message_language=>'fi'
,p_message_text=>'Etsi ''%0'''
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622522628281281215)
,p_name=>'APEX.IG.SELECT'
,p_message_language=>'fi'
,p_message_text=>'- Valitse -'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622553836069281230)
,p_name=>'APEX.IG.SELECT_1_ROW_IN_MASTER'
,p_message_language=>'fi'
,p_message_text=>unistr('Valitse 1 rivi is\00E4alueessa')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622695471093281298)
,p_name=>'APEX.IG.SELECT_COLUMNS_TO_SEARCH'
,p_message_language=>'fi'
,p_message_text=>unistr('Valitse etsitt\00E4v\00E4t sarakkeet')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622553549473281230)
,p_name=>'APEX.IG.SEL_ACTIONS'
,p_message_language=>'fi'
,p_message_text=>'Valitut toiminnot'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622602396340281254)
,p_name=>'APEX.IG.SEND_AS_EMAIL'
,p_message_language=>'fi'
,p_message_text=>unistr('L\00E4het\00E4 s\00E4hk\00F6postina')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622666940170281285)
,p_name=>'APEX.IG.SERIES_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Sarja'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622522991395281215)
,p_name=>'APEX.IG.SHOW_OVERALL_VALUE'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4 kokonaisarvo')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622734185767281316)
,p_name=>'APEX.IG.SINGLE_ROW_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('Yhden rivin n\00E4kym\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622666029629281284)
,p_name=>'APEX.IG.SORT'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4rjest\00E4minen')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622592150305281249)
,p_name=>'APEX.IG.SORT_BY'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4rjest\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622637757521281271)
,p_name=>'APEX.IG.SORT_ONLY_ONE_PER_COLUMN'
,p_message_language=>'fi'
,p_message_text=>unistr('Voit m\00E4\00E4ritell\00E4 vain yhden j\00E4rjest\00E4misen saraketta kohti.')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622523299882281216)
,p_name=>'APEX.IG.SRV_CHANGE_MENU'
,p_message_language=>'fi'
,p_message_text=>'Muutosvalikko'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622479634671281194)
,p_name=>'APEX.IG.STACK'
,p_message_language=>'fi'
,p_message_text=>'Pino'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622531638805281220)
,p_name=>'APEX.IG.STARTS_WITH'
,p_message_language=>'fi'
,p_message_text=>'alkaa'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622676554702281289)
,p_name=>'APEX.IG.STOCK'
,p_message_language=>'fi'
,p_message_text=>'Osake'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622519620041281214)
,p_name=>'APEX.IG.SUBSCRIPTION'
,p_message_language=>'fi'
,p_message_text=>'Tilaus'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622632617924281268)
,p_name=>'APEX.IG.SUM'
,p_message_language=>'fi'
,p_message_text=>'Summa'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622698453467281299)
,p_name=>'APEX.IG.SUMMARY'
,p_message_language=>'fi'
,p_message_text=>unistr('Interaktiivinen Grid. Raportti: %0, N\00E4kym\00E4: %1.')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622519988736281214)
,p_name=>'APEX.IG.SUM_OVERALL'
,p_message_language=>'fi'
,p_message_text=>'Kokonaissumma'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622666363023281284)
,p_name=>'APEX.IG.TARGET_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Kohde'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622599996679281253)
,p_name=>'APEX.IG.TEXT_COLOR'
,p_message_language=>'fi'
,p_message_text=>unistr('Tekstin v\00E4ri')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622640781407281272)
,p_name=>'APEX.IG.TOGGLE'
,p_message_language=>'fi'
,p_message_text=>'Vaihda'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622568795957281238)
,p_name=>'APEX.IG.TOOLTIP'
,p_message_language=>'fi'
,p_message_text=>'Vihje'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622705399109281303)
,p_name=>'APEX.IG.TYPE'
,p_message_language=>'fi'
,p_message_text=>'Tyyppi'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622565132200281236)
,p_name=>'APEX.IG.UNFREEZE'
,p_message_language=>'fi'
,p_message_text=>'Vapauta'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622675038896281288)
,p_name=>'APEX.IG.UNIT'
,p_message_language=>'fi'
,p_message_text=>unistr('Yksikk\00F6')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622699951092281300)
,p_name=>'APEX.IG.UNSAVED_CHANGES_CONTINUE_CONFIRM'
,p_message_language=>'fi'
,p_message_text=>'Tallettamattomia muutoksia. Haluatko jatkaa ?'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622496134101281202)
,p_name=>'APEX.IG.VALUE'
,p_message_language=>'fi'
,p_message_text=>'Arvo'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622745897397281322)
,p_name=>'APEX.IG.VALUE_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Arvo'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622629623741281267)
,p_name=>'APEX.IG.VALUE_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>'Arvo vaadittu.'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622565420446281236)
,p_name=>'APEX.IG.VARCHAR2'
,p_message_language=>'fi'
,p_message_text=>'Teksti'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622527739840281218)
,p_name=>'APEX.IG.VERTICAL'
,p_message_language=>'fi'
,p_message_text=>'Pysty'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622734488024281316)
,p_name=>'APEX.IG.VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4kym\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622673212832281287)
,p_name=>'APEX.IG.VISIBLE'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4kyvill\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622490735753281200)
,p_name=>'APEX.IG.VOLUME_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Paljous'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622609206553281257)
,p_name=>'APEX.IG.WEEKS'
,p_message_language=>'fi'
,p_message_text=>'viikkoja'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622556229170281231)
,p_name=>'APEX.IG.WIDTH'
,p_message_language=>'fi'
,p_message_text=>unistr('Sarakkeen minimileveys (pikseleit\00E4)')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622491058528281200)
,p_name=>'APEX.IG.X.BETWEEN.Y.AND.Z'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 %1:n ja %2:n v\00E4lill\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622635094156281270)
,p_name=>'APEX.IG.X.CONTAINS.Y'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 sis\00E4lt\00E4\00E4 %1')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622494064986281201)
,p_name=>'APEX.IG.X.DOES_NOT_CONTAIN.Y'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei sis\00E4ll\00E4 %1')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622491365422281200)
,p_name=>'APEX.IG.X.EQUALS.Y'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 on yht\00E4 suuri kuin %1')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622629954815281267)
,p_name=>'APEX.IG.X.GREATER_THAN.Y'
,p_message_language=>'fi'
,p_message_text=>'%0 suurempi kuin %1'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622592454349281249)
,p_name=>'APEX.IG.X.GREATER_THAN_OR_EQUALS.Y'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 suurempi tai yht\00E4 suuri kuin %1')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622523516720281216)
,p_name=>'APEX.IG.X.IN.Y'
,p_message_language=>'fi'
,p_message_text=>'%0 %1:ssa'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622700879900281301)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 edellisten %1 p\00E4iv\00E4n aikana')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622496408292281203)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.HOURS'
,p_message_language=>'fi'
,p_message_text=>'%0 edellisten %1 tunnin aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622521770710281215)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MINUTES'
,p_message_language=>'fi'
,p_message_text=>'%0 edellisten %1 minuutin aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622705639130281303)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MONTHS'
,p_message_language=>'fi'
,p_message_text=>'%0 viimeisten %1 kuukauden aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622632968090281269)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.WEEKS'
,p_message_language=>'fi'
,p_message_text=>'%0 edellisten %1 viikon aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622596321386281251)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.YEARS'
,p_message_language=>'fi'
,p_message_text=>'%0 edellisten %1 vuoden aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622738002948281318)
,p_name=>'APEX.IG.X.IN_THE_LAST_DAY'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 viimeisen p\00E4iv\00E4n aikana')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622702926053281301)
,p_name=>'APEX.IG.X.IN_THE_LAST_HOUR'
,p_message_language=>'fi'
,p_message_text=>'%0 viimeisen tunnin aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622523838618281216)
,p_name=>'APEX.IG.X.IN_THE_LAST_MINUTE'
,p_message_language=>'fi'
,p_message_text=>'%0 edellisen minuutin aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622561989352281234)
,p_name=>'APEX.IG.X.IN_THE_LAST_MONTH'
,p_message_language=>'fi'
,p_message_text=>'%0 viimeisen kuukauden aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622701167562281301)
,p_name=>'APEX.IG.X.IN_THE_LAST_WEEK'
,p_message_language=>'fi'
,p_message_text=>'%0 edellisen viikon aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622565719572281236)
,p_name=>'APEX.IG.X.IN_THE_LAST_YEAR'
,p_message_language=>'fi'
,p_message_text=>'%0 viime vuonna'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622671183789281287)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 seuraavien %1 p\00E4iv\00E4n aikana')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622671486703281287)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.HOURS'
,p_message_language=>'fi'
,p_message_text=>'%0 seuraavien %1 tunnin aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622746194424281322)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'fi'
,p_message_text=>'%0 seuraavien %1 minuutin aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622633278370281269)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'fi'
,p_message_text=>'%0 seuraavien %1 kuukauden aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622594240815281250)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 sis\00E4ltyy seuraavaan %1 viikkoon')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622480297338281195)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.YEARS'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 sis\00E4ltyy seuraavaan %1 vuoteen')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622592723347281249)
,p_name=>'APEX.IG.X.IN_THE_NEXT_DAY'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 seuraavana p\00E4iv\00E4n\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622738348413281318)
,p_name=>'APEX.IG.X.IN_THE_NEXT_HOUR'
,p_message_language=>'fi'
,p_message_text=>'%0 seuraavan tunnin aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622734733513281317)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MINUTE'
,p_message_language=>'fi'
,p_message_text=>'%0 seuraavan minuutin aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622483893587281196)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MONTH'
,p_message_language=>'fi'
,p_message_text=>'%0 seuraavan kuukauden aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622491642362281200)
,p_name=>'APEX.IG.X.IN_THE_NEXT_WEEK'
,p_message_language=>'fi'
,p_message_text=>'%0 seuraavan viikon aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622667536179281285)
,p_name=>'APEX.IG.X.IN_THE_NEXT_YEAR'
,p_message_language=>'fi'
,p_message_text=>'%0 seuraavana vuonna'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622606575671281256)
,p_name=>'APEX.IG.X.IS_NOT_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei ole tyhj\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622520203135281214)
,p_name=>'APEX.IG.X.IS_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 on tyhj\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622743794157281321)
,p_name=>'APEX.IG.X.LESS_THAN.Y'
,p_message_language=>'fi'
,p_message_text=>'%0 pienempi kuin %1'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622609572806281257)
,p_name=>'APEX.IG.X.LESS_THAN_OR_EQUALS.Y'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 v\00E4hemm\00E4n tai yht\00E4suuri kuin %1')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622563118905281235)
,p_name=>'APEX.IG.X.LIKE.Y'
,p_message_language=>'fi'
,p_message_text=>'%0 kuten %1'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622626652856281265)
,p_name=>'APEX.IG.X.MATCHES_REGULAR_EXPRESSION.Y'
,p_message_language=>'fi'
,p_message_text=>'%0 vastaa ilmaisua %1'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622738601216281318)
,p_name=>'APEX.IG.X.MINUTES_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0 minuuttia sitten'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622699030241281300)
,p_name=>'APEX.IG.X.NOT_BETWEEN.Y.AND.Z'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei ole v\00E4lill\00E4 %1 ja %2')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622556832517281232)
,p_name=>'APEX.IG.X.NOT_EQUALS.Y'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei ole yht\00E4suuri kuin %1')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622494369004281201)
,p_name=>'APEX.IG.X.NOT_IN.Y'
,p_message_language=>'fi'
,p_message_text=>'%0 ei joukossa %1'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622744050300281321)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei edellisten %1 p\00E4iv\00E4n aikana')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622638017154281271)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.HOURS'
,p_message_language=>'fi'
,p_message_text=>'%0 ei edellisten %1 tunnin aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622643132071281273)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MINUTES'
,p_message_language=>'fi'
,p_message_text=>'%0 ei edellisten %1 minuutin aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622554141623281230)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MONTHS'
,p_message_language=>'fi'
,p_message_text=>'%0 ei ole edellisten %1 kuukauden aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622479951022281195)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.WEEKS'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei ole %1 viimeisess\00E4 viikossa')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622596691006281251)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.YEARS'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei %1 edellisen\00E4 vuonna')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622520540105281214)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_DAY'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei ole viimeisen\00E4 p\00E4iv\00E4n\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622593090111281249)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_HOUR'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei ole viimeisess\00E4 tunnissa')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622736289766281317)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MINUTE'
,p_message_language=>'fi'
,p_message_text=>'%0 ei edellisen minuutin aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622746413118281322)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MONTH'
,p_message_language=>'fi'
,p_message_text=>'%0 ei edellisen kuukauden aikana'
,p_is_js_message=>true
);
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622563488395281235)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_WEEK'
,p_message_language=>'fi'
,p_message_text=>'%0 ei viime viikolla'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622588544544281247)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_YEAR'
,p_message_language=>'fi'
,p_message_text=>'%0 ei viime vuonna'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622600288971281253)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei seuraavien %1 p\00E4iv\00E4n aikana')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622526585639281217)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.HOURS'
,p_message_language=>'fi'
,p_message_text=>'%0 ei seuraavien %1 tunnin aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622630291078281267)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'fi'
,p_message_text=>'%0 ei seuraavien %1 minuutin aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622484104874281197)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'fi'
,p_message_text=>'%0 ei seuraavien %1 kuukauden aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622695710506281298)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei sis\00E4lly seuraavaan %1 viikkoon')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622732088038281315)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.YEARS'
,p_message_language=>'fi'
,p_message_text=>'%0 ei ole seuraavien %1 vuosien aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622496750208281203)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_DAY'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei seuraavana p\00E4iv\00E4n\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622676804604281289)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_HOUR'
,p_message_language=>'fi'
,p_message_text=>'%0 ei seuraavan tunnin aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622569032630281238)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MINUTE'
,p_message_language=>'fi'
,p_message_text=>'%0 ei seuraavan minuutin aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622491968921281200)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MONTH'
,p_message_language=>'fi'
,p_message_text=>'%0 ei seuraavan kuukauden aikana'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622563763085281235)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_WEEK'
,p_message_language=>'fi'
,p_message_text=>'%0 ei seuraavalla viikolla'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622497015752281203)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_YEAR'
,p_message_language=>'fi'
,p_message_text=>'%0 ei seuraavana vuonna'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622593308747281249)
,p_name=>'APEX.IG.X.NOT_LIKE.Y'
,p_message_language=>'fi'
,p_message_text=>'%0 ei kuten %1'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622528006416281218)
,p_name=>'APEX.IG.X.STARTS_WITH.Y'
,p_message_language=>'fi'
,p_message_text=>'%0 alkaa %1:lla'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622562275156281235)
,p_name=>'APEX.IG.X_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'X'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622638333536281271)
,p_name=>'APEX.IG.YEARS'
,p_message_language=>'fi'
,p_message_text=>'vuodet'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622564068310281235)
,p_name=>'APEX.IG.Y_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Y'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622677180734281289)
,p_name=>'APEX.IG.Z_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Z'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622569353591281238)
,p_name=>'APEX.IG_FORMAT_SAMPLE_1'
,p_message_language=>'fi'
,p_message_text=>'Maanantai, 12 tammikuuta, 2016'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622625448317281265)
,p_name=>'APEX.IG_FORMAT_SAMPLE_2'
,p_message_language=>'fi'
,p_message_text=>'Tammikuu'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622484407432281197)
,p_name=>'APEX.IG_FORMAT_SAMPLE_3'
,p_message_language=>'fi'
,p_message_text=>'16 tuntia sitten'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622708393709281304)
,p_name=>'APEX.IG_FORMAT_SAMPLE_4'
,p_message_language=>'fi'
,p_message_text=>'16 h:ssa'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622604705462281255)
,p_name=>'APEX.ITEM.HELP_TEXT'
,p_message_language=>'fi'
,p_message_text=>'Ohje: %0'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622630525613281267)
,p_name=>'APEX.ITEM.NOT_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('Nimikett\00E4 %0 ei l\00F6ydy.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622583485195281245)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'fi'
,p_message_text=>unistr('#LABEL# ei ole arvov\00E4lill\00E4 %0 ja %1.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622724567251281312)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_MULTIPLE_OF_STEP'
,p_message_language=>'fi'
,p_message_text=>'#LABEL# ei ole %0 :n monikerta.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622658849820281281)
,p_name=>'APEX.ITEM_TYPE.YES_NO.INVALID_VALUE'
,p_message_language=>'fi'
,p_message_text=>unistr('#LABEL# pit\00E4\00E4 olla joko %0 tai %1.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622546050355281227)
,p_name=>'APEX.ITEM_TYPE.YES_NO.NO_LABEL'
,p_message_language=>'fi'
,p_message_text=>'Ei'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622724837060281312)
,p_name=>'APEX.ITEM_TYPE.YES_NO.YES_LABEL'
,p_message_language=>'fi'
,p_message_text=>unistr('Kyll\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622638634860281271)
,p_name=>'APEX.MENU.CURRENT_MENU'
,p_message_language=>'fi'
,p_message_text=>unistr('t\00E4m\00E4nhetkinen')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622701461034281301)
,p_name=>'APEX.MENU.OVERFLOW_LABEL'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4...')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622664510639281283)
,p_name=>'APEX.MENU.PROCESSING'
,p_message_language=>'fi'
,p_message_text=>'Lataa'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622659146976281281)
,p_name=>'APEX.NUMBER_FIELD.VALUE_GREATER_MAX_VALUE'
,p_message_language=>'fi'
,p_message_text=>unistr('#LABEL# on suurempi kuin m\00E4\00E4ritelty maksimi %0.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622725165245281312)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID'
,p_message_language=>'fi'
,p_message_text=>unistr('#LABEL# pit\00E4\00E4 olla numeerinen.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622470905766281190)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID2'
,p_message_language=>'fi'
,p_message_text=>unistr('#LABEL# ei vastaa numeerista muotoilua %0 (esim.\00A0%1).')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622688850057281295)
,p_name=>'APEX.NUMBER_FIELD.VALUE_LESS_MIN_VALUE'
,p_message_language=>'fi'
,p_message_text=>unistr('#LABEL# on pienempi kuin m\00E4\00E4ritelty minimi %0.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622725449789281312)
,p_name=>'APEX.NUMBER_FIELD.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'fi'
,p_message_text=>unistr('#LABEL# ei ole arvov\00E4lill\00E4 %0 ja %1.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622546346418281227)
,p_name=>'APEX.PAGE_ITEM_IS_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>unistr('#LABEL# :lla/ll\00E4 pit\00E4\00E4 olla arvo.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622471285511281191)
,p_name=>'APEX.POPUP_LOV.ICON_TEXT'
,p_message_language=>'fi'
,p_message_text=>'Popup arvolista: %0.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622528626708281218)
,p_name=>'APEX.PROCESSING'
,p_message_language=>'fi'
,p_message_text=>'Suorittaa'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622659407250281281)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.LOAD_MORE'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622689111140281295)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.SEARCH'
,p_message_language=>'fi'
,p_message_text=>'Haku'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622669919637281286)
,p_name=>'APEX.RICH_TEXT_EDITOR.ACCESSIBLE_LABEL'
,p_message_language=>'fi'
,p_message_text=>'%0, tekstieditori'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622600569003281253)
,p_name=>'APEX.RV.DELETE'
,p_message_language=>'fi'
,p_message_text=>'Poista'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622593631988281250)
,p_name=>'APEX.RV.EXCLUDE_HIDDEN'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4ytett\00E4v\00E4t sarakkeet')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622708697377281304)
,p_name=>'APEX.RV.EXCLUDE_NULL'
,p_message_language=>'fi'
,p_message_text=>'Rajaa pois null-arvot'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622596903610281251)
,p_name=>'APEX.RV.INSERT'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622708918773281304)
,p_name=>'APEX.RV.NEXT_RECORD'
,p_message_language=>'fi'
,p_message_text=>'Seuraava'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622669330389281286)
,p_name=>'APEX.RV.NOT_GROUPED_LABEL'
,p_message_language=>'fi'
,p_message_text=>'Muut sarakkeet'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622741331716281320)
,p_name=>'APEX.RV.PREV_RECORD'
,p_message_language=>'fi'
,p_message_text=>'Edellinen'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622643415188281274)
,p_name=>'APEX.RV.REC_X'
,p_message_language=>'fi'
,p_message_text=>'Rivi %0'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622532821842281220)
,p_name=>'APEX.RV.REC_XY'
,p_message_language=>'fi'
,p_message_text=>'Rivi %0 / %1'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622606805840281256)
,p_name=>'APEX.RV.SETTINGS_MENU'
,p_message_language=>'fi'
,p_message_text=>'Asetukset-valikko'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622725757408281312)
,p_name=>'APEX.SESSION.EXPIRED'
,p_message_language=>'fi'
,p_message_text=>'Istuntosi on vanhentunut'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622546648611281227)
,p_name=>'APEX.SESSION.EXPIRED.NEW_SESSION'
,p_message_language=>'fi'
,p_message_text=>unistr('Luo <a href="%0">t\00E4st\00E4</a> uusi istunto.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622546976527281227)
,p_name=>'APEX.SESSION_STATE.SSP_VIOLATION'
,p_message_language=>'fi'
,p_message_text=>unistr('Istunnon suojausrikkomus: Rikkomus voi johtua muuttuneesta URL:st\00E4, jossa on tarkiste tai k\00E4yt\00F6ss\00E4 on ollut linkki ilman tai v\00E4\00E4r\00E4ll\00E4 tarkisteella. Jos et tied\00E4 virhetilanteen aiheuttajaa, ota yhteytt\00E4 sovelluksen yll\00E4pit\00E4j\00E4\00E4n.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622732392975281315)
,p_name=>'APEX.SINCE.SHORT.DAYS_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0 pv'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622741689546281320)
,p_name=>'APEX.SINCE.SHORT.DAYS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 pv:ss\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622705932710281303)
,p_name=>'APEX.SINCE.SHORT.HOURS_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0 h'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622607154968281256)
,p_name=>'APEX.SINCE.SHORT.HOURS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 h p\00E4\00E4st\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622494959338281202)
,p_name=>'APEX.SINCE.SHORT.MINUTES_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0 min'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622554490081281230)
,p_name=>'APEX.SINCE.SHORT.MINUTES_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 min. p\00E4\00E4st\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622602937633281254)
,p_name=>'APEX.SINCE.SHORT.MONTHS_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0kk'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622531981889281220)
,p_name=>'APEX.SINCE.SHORT.MONTHS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 kk p\00E4\00E4st\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622492298182281200)
,p_name=>'APEX.SINCE.SHORT.SECONDS_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0s'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622602660180281254)
,p_name=>'APEX.SINCE.SHORT.SECONDS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>'%0s:ssa'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622589486595281248)
,p_name=>'APEX.SINCE.SHORT.WEEKS_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0 vko'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622605065804281255)
,p_name=>'APEX.SINCE.SHORT.WEEKS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>'%0 vk:ssa'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622677447879281289)
,p_name=>'APEX.SINCE.SHORT.YEARS_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0 v'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622556578568281232)
,p_name=>'APEX.SINCE.SHORT.YEARS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>'%0 v aikana'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622566395049281236)
,p_name=>'APEX.SUCCESS_MESSAGE_HEADING'
,p_message_language=>'fi'
,p_message_text=>'Onnistumisviesti'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622589189316281247)
,p_name=>'APEX.TABS.NEXT'
,p_message_language=>'fi'
,p_message_text=>'Seuraava'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622735027420281317)
,p_name=>'APEX.TABS.PREVIOUS'
,p_message_language=>'fi'
,p_message_text=>'Edellinen'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622593954516281250)
,p_name=>'APEX.TB.TOOLBAR'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6kalupalkki')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622485360370281197)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_NAV_LABEL'
,p_message_language=>'fi'
,p_message_text=>'Laajenna/Supista navigointia'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622485625069281197)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_SIDE_COL_LABEL'
,p_message_language=>'fi'
,p_message_text=>'Laajenna/Supista sivusaraketta'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622589773597281248)
,p_name=>'APEX.THEMES.INVALID_THEME_NUMBER'
,p_message_language=>'fi'
,p_message_text=>unistr('Teeman numero on v\00E4\00E4r\00E4 tai ei ole k\00E4yt\00F6ss\00E4 oleva UI teema.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622671779540281287)
,p_name=>'APEX.UI.BACK_TO_TOP'
,p_message_language=>'fi'
,p_message_text=>'Sivun alku'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622554772873281231)
,p_name=>'APEX.VALUE_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>'Pakollinen arvo'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622673514373281288)
,p_name=>'APEX.WAIT_UNTIL_PAGE_LOADED'
,p_message_language=>'fi'
,p_message_text=>unistr('Odota kunnes sivu on t\00E4ysin latautunut ja yrit\00E4 uudestaan.')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622515435589281212)
,p_name=>'APEXIR_3D'
,p_message_language=>'fi'
,p_message_text=>'3D'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622471568145281191)
,p_name=>'APEXIR_ACTIONS'
,p_message_language=>'fi'
,p_message_text=>'Toiminnot'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622515752394281212)
,p_name=>'APEXIR_ACTIONS_MENU'
,p_message_language=>'fi'
,p_message_text=>'Toiminnot valikko'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622471824361281191)
,p_name=>'APEXIR_ADD'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622726099922281312)
,p_name=>'APEXIR_ADD_FUNCTION'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4 funktio')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622516044363281212)
,p_name=>'APEXIR_ADD_GROUP_BY_COLUMN'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4 ryhmittelysarake')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622689422963281295)
,p_name=>'APEXIR_ADD_PIVOT_COLUMN'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4 pivot-sarake')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622689708232281295)
,p_name=>'APEXIR_ADD_ROW_COLUMN'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4 rivisarake')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622659781698281281)
,p_name=>'APEXIR_ADD_SUBSCRIPTION'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4 tilaus')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622660019740281281)
,p_name=>'APEXIR_AGGREGATE'
,p_message_language=>'fi'
,p_message_text=>'Koosta'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622584080650281245)
,p_name=>'APEXIR_AGGREGATE_DESCRIPTION'
,p_message_language=>'fi'
,p_message_text=>unistr('Koosteet n\00E4ytet\00E4\00E4n jokaisen katkotason j\00E4lkeen ja raportin lopussa.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622660372594281281)
,p_name=>'APEXIR_AGGREGATION'
,p_message_language=>'fi'
,p_message_text=>'Kooste'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622472121537281191)
,p_name=>'APEXIR_AGG_AVG'
,p_message_language=>'fi'
,p_message_text=>'Keskiarvo'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622547291265281227)
,p_name=>'APEXIR_AGG_COUNT'
,p_message_language=>'fi'
,p_message_text=>unistr('Lukum\00E4\00E4r\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622516309056281212)
,p_name=>'APEXIR_AGG_MAX'
,p_message_language=>'fi'
,p_message_text=>'Maksimi'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622547582501281227)
,p_name=>'APEXIR_AGG_MEDIAN'
,p_message_language=>'fi'
,p_message_text=>'Mediaani'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622547832279281227)
,p_name=>'APEXIR_AGG_MIN'
,p_message_language=>'fi'
,p_message_text=>'Minimi'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622548137741281227)
,p_name=>'APEXIR_AGG_MODE'
,p_message_language=>'fi'
,p_message_text=>'Moodi'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622583755586281245)
,p_name=>'APEXIR_AGG_SUM'
,p_message_language=>'fi'
,p_message_text=>'Summa'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622623035413281263)
,p_name=>'APEXIR_ALL'
,p_message_language=>'fi'
,p_message_text=>'Kaikki'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622690035848281295)
,p_name=>'APEXIR_ALL_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>'Kaikki sarakkeet'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622548450111281228)
,p_name=>'APEXIR_ALL_ROWS'
,p_message_language=>'fi'
,p_message_text=>'Kaikki rivit'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622623366888281264)
,p_name=>'APEXIR_ALTERNATIVE'
,p_message_language=>'fi'
,p_message_text=>'Vaihtoehtoinen'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622726334967281312)
,p_name=>'APEXIR_ALTERNATIVE_DEFAULT_NAME'
,p_message_language=>'fi'
,p_message_text=>'Vaihtoehtoinen oletus: %0'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622584384145281245)
,p_name=>'APEXIR_AND'
,p_message_language=>'fi'
,p_message_text=>'ja'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622548771257281228)
,p_name=>'APEXIR_APPLY'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4yt\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622660636292281282)
,p_name=>'APEXIR_ASCENDING'
,p_message_language=>'fi'
,p_message_text=>'Nouseva'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622726602176281313)
,p_name=>'APEXIR_AS_OF'
,p_message_language=>'fi'
,p_message_text=>'%0 alkaen'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622549076545281228)
,p_name=>'APEXIR_AVERAGE_X'
,p_message_language=>'fi'
,p_message_text=>unistr('Keskim\00E4\00E4rin %0')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622472467561281191)
,p_name=>'APEXIR_BETWEEN'
,p_message_language=>'fi'
,p_message_text=>unistr('v\00E4lill\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622516672388281212)
,p_name=>'APEXIR_BGCOLOR'
,p_message_language=>'fi'
,p_message_text=>unistr('Taustav\00E4ri')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622472791584281191)
,p_name=>'APEXIR_BLUE'
,p_message_language=>'fi'
,p_message_text=>'sininen'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622726953769281313)
,p_name=>'APEXIR_BOTTOM'
,p_message_language=>'fi'
,p_message_text=>'Alaosa'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622660997997281282)
,p_name=>'APEXIR_CALENDAR'
,p_message_language=>'fi'
,p_message_text=>'Kalenteri'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622584666555281245)
,p_name=>'APEXIR_CANCEL'
,p_message_language=>'fi'
,p_message_text=>'Peruuta'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622623627517281264)
,p_name=>'APEXIR_CATEGORY'
,p_message_language=>'fi'
,p_message_text=>'Kategoria'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622727235173281313)
,p_name=>'APEXIR_CELL'
,p_message_language=>'fi'
,p_message_text=>'Solu'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622727509393281313)
,p_name=>'APEXIR_CHART'
,p_message_language=>'fi'
,p_message_text=>'Kaavio'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622549386362281228)
,p_name=>'APEXIR_CHART_INITIALIZING'
,p_message_language=>'fi'
,p_message_text=>'Alustaa...'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622549686092281228)
,p_name=>'APEXIR_CHART_LABEL_NOT_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('Kaavion nimike pit\00E4\00E4 olla m\00E4\00E4ritetty')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622623921363281264)
,p_name=>'APEXIR_CHART_MAX_ROW_CNT'
,p_message_language=>'fi'
,p_message_text=>unistr('Kaavion kyselyn maksimirivim\00E4\00E4r\00E4 rajoittaa rivien m\00E4\00E4r\00E4\00E4 peruskyselyss\00E4, ei n\00E4ytett\00E4vien rivien lukum\00E4\00E4r\00E4\00E4. Peruskyselysi rivien lukum\00E4\00E4r\00E4 ylitt\00E4\00E4 maksimirivilukum\00E4\00E4r\00E4n %0. K\00E4yt\00E4 suodinta rajoittamaan tietueiden lukum\00E4\00E4r\00E4\00E4 peruskyselyss\00E4si.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622690386622281295)
,p_name=>'APEXIR_CHART_TYPE'
,p_message_language=>'fi'
,p_message_text=>'Kaaviotyyppi'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622727831088281313)
,p_name=>'APEXIR_CHECK_ALL'
,p_message_language=>'fi'
,p_message_text=>'Valitse kaikki'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622661250827281282)
,p_name=>'APEXIR_CHOOSE_DOWNLOAD_FORMAT'
,p_message_language=>'fi'
,p_message_text=>'Valitse raportin tallennuksen tiedostoformaatti'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622690694775281295)
,p_name=>'APEXIR_CLEAR'
,p_message_language=>'fi'
,p_message_text=>unistr('tyhj\00E4\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622473077669281191)
,p_name=>'APEXIR_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Sarake'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622473627318281192)
,p_name=>'APEXIR_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>'Sarakkeet'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622549959284281228)
,p_name=>'APEXIR_COLUMN_FILTER'
,p_message_language=>'fi'
,p_message_text=>'Suodata...'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622550211144281228)
,p_name=>'APEXIR_COLUMN_HEADING'
,p_message_language=>'fi'
,p_message_text=>'Sarakeotsikko'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622584905000281245)
,p_name=>'APEXIR_COLUMN_HEADING_MENU'
,p_message_language=>'fi'
,p_message_text=>'Sarakeotsikkovalikko'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622473316317281192)
,p_name=>'APEXIR_COLUMN_INFO'
,p_message_language=>'fi'
,p_message_text=>'Sarakkeen tiedot'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622661507769281282)
,p_name=>'APEXIR_COLUMN_N'
,p_message_language=>'fi'
,p_message_text=>'Sarake %0'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622550594422281229)
,p_name=>'APEXIR_COMPARISON_CONTAINS'
,p_message_language=>'fi'
,p_message_text=>unistr('sis\00E4lt\00E4\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622661845649281282)
,p_name=>'APEXIR_COMPARISON_DOESNOT_CONTAIN'
,p_message_language=>'fi'
,p_message_text=>unistr('ei sis\00E4ll\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622690955204281296)
,p_name=>'APEXIR_COMPARISON_IN'
,p_message_language=>'fi'
,p_message_text=>'joukossa'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622517245024281213)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_LAST'
,p_message_language=>'fi'
,p_message_text=>unistr('ei ole viimeisess\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622473918487281192)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_NEXT'
,p_message_language=>'fi'
,p_message_text=>'ei ole seuraavassa'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622662147332281282)
,p_name=>'APEXIR_COMPARISON_IS_IN_LAST'
,p_message_language=>'fi'
,p_message_text=>unistr('viimeisess\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622662461836281282)
,p_name=>'APEXIR_COMPARISON_IS_IN_NEXT'
,p_message_language=>'fi'
,p_message_text=>'seuraavassa'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622516958676281213)
,p_name=>'APEXIR_COMPARISON_IS_NOT_NULL'
,p_message_language=>'fi'
,p_message_text=>'ei null'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622550821962281229)
,p_name=>'APEXIR_COMPARISON_IS_NULL'
,p_message_language=>'fi'
,p_message_text=>'null'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622551143776281229)
,p_name=>'APEXIR_COMPARISON_LIKE'
,p_message_language=>'fi'
,p_message_text=>'kaltainen'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622474246307281192)
,p_name=>'APEXIR_COMPARISON_NOT_IN'
,p_message_language=>'fi'
,p_message_text=>'ei joukossa'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622728114905281313)
,p_name=>'APEXIR_COMPARISON_NOT_LIKE'
,p_message_language=>'fi'
,p_message_text=>'ei kaltainen'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622551405944281229)
,p_name=>'APEXIR_COMPARISON_REGEXP_LIKE'
,p_message_language=>'fi'
,p_message_text=>'vastaa ilmaisua'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622585272799281246)
,p_name=>'APEXIR_COMPUTATION'
,p_message_language=>'fi'
,p_message_text=>'Laskenta'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622474590689281192)
,p_name=>'APEXIR_COMPUTATION_EXPRESSION'
,p_message_language=>'fi'
,p_message_text=>'Lauseke'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622551798578281229)
,p_name=>'APEXIR_COMPUTATION_FOOTER'
,p_message_language=>'fi'
,p_message_text=>unistr('Luo laskenta k\00E4ytt\00E4en sarakealiaksia.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622691212015281296)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E1'
,p_message_language=>'fi'
,p_message_text=>'(B+C)*100'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622728438803281313)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E2'
,p_message_language=>'fi'
,p_message_text=>'INITCAP(B)||'''', ''''||INITCAP(C)'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622691589123281296)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E3'
,p_message_language=>'fi'
,p_message_text=>'CASE WHEN A = 10 THEN B + C ELSE B END'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622552096322281229)
,p_name=>'APEXIR_COMPUTE'
,p_message_language=>'fi'
,p_message_text=>'Laske'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622662728383281283)
,p_name=>'APEXIR_CONTROL_BREAK'
,p_message_language=>'fi'
,p_message_text=>'Katkotaso'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622474877715281192)
,p_name=>'APEXIR_CONTROL_BREAKS'
,p_message_language=>'fi'
,p_message_text=>'Katkotasot'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622585576912281246)
,p_name=>'APEXIR_CONTROL_BREAK_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>'Katkotaso sarakkeet'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622517523449281213)
,p_name=>'APEXIR_COUNT_DISTINCT'
,p_message_language=>'fi'
,p_message_text=>'Laske erilliset'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622691877563281296)
,p_name=>'APEXIR_COUNT_DISTINCT_X'
,p_message_language=>'fi'
,p_message_text=>'Laske erillinen'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622585856315281246)
,p_name=>'APEXIR_COUNT_X'
,p_message_language=>'fi'
,p_message_text=>'Laske %0'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622692194644281296)
,p_name=>'APEXIR_DAILY'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4ivitt\00E4inen')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622528380458281218)
,p_name=>'APEXIR_DATA'
,p_message_language=>'fi'
,p_message_text=>'Tietojoukko'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622728779720281314)
,p_name=>'APEXIR_DATA_AS_OF'
,p_message_language=>'fi'
,p_message_text=>'Raportin tieto %0 minuuttia sitten.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622475184158281192)
,p_name=>'APEXIR_DATE'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4iv\00E4m\00E4\00E4r\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622729034759281314)
,p_name=>'APEXIR_DAY'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4iv\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622586134646281246)
,p_name=>'APEXIR_DEFAULT'
,p_message_language=>'fi'
,p_message_text=>'Oletus'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622552351389281229)
,p_name=>'APEXIR_DEFAULT_REPORT_TYPE'
,p_message_language=>'fi'
,p_message_text=>'Oletusraporttityyppi'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622692452517281296)
,p_name=>'APEXIR_DELETE'
,p_message_language=>'fi'
,p_message_text=>'Poista'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622475480222281193)
,p_name=>'APEXIR_DELETE_CHECKED'
,p_message_language=>'fi'
,p_message_text=>'Poista valitut'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622663097953281283)
,p_name=>'APEXIR_DELETE_CONFIRM'
,p_message_language=>'fi'
,p_message_text=>unistr('Haluatko poistaa n\00E4m\00E4 raporttiasetukset?')
);
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622586444739281246)
,p_name=>'APEXIR_DELETE_CONFIRM_JS_DIALOG'
,p_message_language=>'fi'
,p_message_text=>unistr('Haluatko suorittaa t\00E4m\00E4n poistotoimenpiteen?')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622586733319281246)
,p_name=>'APEXIR_DELETE_DEFAULT_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Poista oletusraportti'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622719491096281309)
,p_name=>'APEXIR_DELETE_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Poista raportti'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622542405469281225)
,p_name=>'APEXIR_DESCENDING'
,p_message_language=>'fi'
,p_message_text=>'Laskeva'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622719752518281310)
,p_name=>'APEXIR_DESCRIPTION'
,p_message_language=>'fi'
,p_message_text=>'Kuvaus'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622542783729281225)
,p_name=>'APEXIR_DETAIL_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('Yhden rivin n\00E4kym\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622685527642281293)
,p_name=>'APEXIR_DIRECTION'
,p_message_language=>'fi'
,p_message_text=>'Suunta'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622580129607281243)
,p_name=>'APEXIR_DISABLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Est\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622618505185281261)
,p_name=>'APEXIR_DISABLED'
,p_message_language=>'fi'
,p_message_text=>'Estetty'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622655511059281279)
,p_name=>'APEXIR_DISPLAY'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622467385591281189)
,p_name=>'APEXIR_DISPLAYED'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4ytetty')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622720036412281310)
,p_name=>'APEXIR_DISPLAYED_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4ytetyt sarakkeet')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622543011442281225)
,p_name=>'APEXIR_DISPLAY_IN_REPORT'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4 raportissa')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622543379103281225)
,p_name=>'APEXIR_DOWN'
,p_message_language=>'fi'
,p_message_text=>'Alas'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622655849059281279)
,p_name=>'APEXIR_DOWNLOAD'
,p_message_language=>'fi'
,p_message_text=>'Tallenna tiedostoksi'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622467652103281189)
,p_name=>'APEXIR_DO_NOT_AGGREGATE'
,p_message_language=>'fi'
,p_message_text=>unistr('- \00C4l\00E4 koosta -')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622510273127281209)
,p_name=>'APEXIR_DO_NOT_DISPLAY'
,p_message_language=>'fi'
,p_message_text=>unistr('\00C4l\00E4 n\00E4yt\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622580443695281243)
,p_name=>'APEXIR_DUPLICATE_PIVOT_COLUMN'
,p_message_language=>'fi'
,p_message_text=>unistr('Pivot sarake tuplana. Pivot-sarakkeen t\00E4ytyy olla uniikki.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622720374813281310)
,p_name=>'APEXIR_EDIT'
,p_message_language=>'fi'
,p_message_text=>'Editoi'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622510556043281210)
,p_name=>'APEXIR_EDIT_ALTERNATIVE_DEFAULT'
,p_message_language=>'fi'
,p_message_text=>'Editoi vahtoehtoinen oletus'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622467953495281189)
,p_name=>'APEXIR_EDIT_CHART'
,p_message_language=>'fi'
,p_message_text=>'Editoi kaavion asetuksia'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622685811913281293)
,p_name=>'APEXIR_EDIT_CHART2'
,p_message_language=>'fi'
,p_message_text=>'Editoi kaaviota'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622510809554281210)
,p_name=>'APEXIR_EDIT_FILTER'
,p_message_language=>'fi'
,p_message_text=>'Editoi suodin'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622468220001281189)
,p_name=>'APEXIR_EDIT_GROUP_BY'
,p_message_language=>'fi'
,p_message_text=>'Editoi ryhmittely'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622686133853281293)
,p_name=>'APEXIR_EDIT_HIGHLIGHT'
,p_message_language=>'fi'
,p_message_text=>'Editoi korostus'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622511223976281210)
,p_name=>'APEXIR_EDIT_PIVOT'
,p_message_language=>'fi'
,p_message_text=>'Editoi pivot'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622618804985281261)
,p_name=>'APEXIR_EMAIL'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4hk\00F6posti')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622656182594281280)
,p_name=>'APEXIR_EMAIL_ADDRESS'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4hk\00F6postiosoite')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622580703102281243)
,p_name=>'APEXIR_EMAIL_BCC'
,p_message_language=>'fi'
,p_message_text=>'Piilokopio'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622720682083281310)
,p_name=>'APEXIR_EMAIL_BODY'
,p_message_language=>'fi'
,p_message_text=>'Viesti'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622720963429281310)
,p_name=>'APEXIR_EMAIL_CC'
,p_message_language=>'fi'
,p_message_text=>'Kopio'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622581095817281243)
,p_name=>'APEXIR_EMAIL_FREQUENCY'
,p_message_language=>'fi'
,p_message_text=>'Toistetaan'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622468542862281189)
,p_name=>'APEXIR_EMAIL_NOT_CONFIGURED'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4hk\00F6postiasetuksia ei ole tehty t\00E4lle sovellukselle. Ota yhteytt\00E4 sovelluksen yll\00E4pit\00E4j\00E4\00E4n.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622511501067281210)
,p_name=>'APEXIR_EMAIL_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4hk\00F6postiosoite puuttuu.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622686414497281293)
,p_name=>'APEXIR_EMAIL_SEE_ATTACHED'
,p_message_language=>'fi'
,p_message_text=>unistr('Katso liitett\00E4.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622511863492281210)
,p_name=>'APEXIR_EMAIL_SUBJECT'
,p_message_language=>'fi'
,p_message_text=>'Aihe'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622581324595281244)
,p_name=>'APEXIR_EMAIL_SUBJECT_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4hk\00F6postin aihe puuttuu.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622543666388281225)
,p_name=>'APEXIR_EMAIL_TO'
,p_message_language=>'fi'
,p_message_text=>'Kenelle'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622656434630281280)
,p_name=>'APEXIR_ENABLE'
,p_message_language=>'fi'
,p_message_text=>'Salli'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622469165312281190)
,p_name=>'APEXIR_ENABLED'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4yt\00F6ss\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622468820387281189)
,p_name=>'APEXIR_ENABLE_DISABLE_ALT'
,p_message_language=>'fi'
,p_message_text=>unistr('Salli/Est\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622512193574281210)
,p_name=>'APEXIR_ERROR'
,p_message_language=>'fi'
,p_message_text=>'Virhe'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622543997330281226)
,p_name=>'APEXIR_EXAMPLES'
,p_message_language=>'fi'
,p_message_text=>'Esimerkit'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622721233938281310)
,p_name=>'APEXIR_EXAMPLES_WITH_COLON'
,p_message_language=>'fi'
,p_message_text=>'Esimerkit:'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622656763484281280)
,p_name=>'APEXIR_EXCLUDE_NULL'
,p_message_language=>'fi'
,p_message_text=>'Rajaa pois null-arvot'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622721567070281310)
,p_name=>'APEXIR_EXPAND_COLLAPSE_ALT'
,p_message_language=>'fi'
,p_message_text=>'Laajenna/Supista'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622581692812281244)
,p_name=>'APEXIR_EXPRESSION'
,p_message_language=>'fi'
,p_message_text=>'Ilmaisu'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622619143560281262)
,p_name=>'APEXIR_FILTER'
,p_message_language=>'fi'
,p_message_text=>'Suodin'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622512456658281210)
,p_name=>'APEXIR_FILTERS'
,p_message_language=>'fi'
,p_message_text=>'Suotimet'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622686715069281294)
,p_name=>'APEXIR_FILTER_EXPRESSION'
,p_message_language=>'fi'
,p_message_text=>'Suodinlauseke'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622666688850281284)
,p_name=>'APEXIR_FILTER_EXPR_TOO_LONG'
,p_message_language=>'fi'
,p_message_text=>unistr('Suotimen ilmaisu on liian pitk\00E4.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622687015851281294)
,p_name=>'APEXIR_FILTER_TYPE'
,p_message_language=>'fi'
,p_message_text=>'Suodintyyppi'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622619441215281262)
,p_name=>'APEXIR_FINDER_ALT'
,p_message_language=>'fi'
,p_message_text=>'Valitse sarakkeet hakuun'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622721816989281310)
,p_name=>'APEXIR_FLASHBACK'
,p_message_language=>'fi'
,p_message_text=>'Takauma'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622687326849281294)
,p_name=>'APEXIR_FLASHBACK_DESCRIPTION'
,p_message_language=>'fi'
,p_message_text=>unistr('Takaumakyselyll\00E4 n\00E4et tiedon niin kuin se oli menneisyydess\00E4.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622581934626281244)
,p_name=>'APEXIR_FLASHBACK_ERROR_MSG'
,p_message_language=>'fi'
,p_message_text=>unistr('Takaumapyynt\00F6\00E4 ei voi suorittaa')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622513069435281211)
,p_name=>'APEXIR_FORMAT'
,p_message_language=>'fi'
,p_message_text=>'Muotoilu'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622512730938281211)
,p_name=>'APEXIR_FORMAT_MASK'
,p_message_language=>'fi'
,p_message_text=>'Muotoilumaski'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622469428909281190)
,p_name=>'APEXIR_FUNCTION'
,p_message_language=>'fi'
,p_message_text=>'Funktio'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622619736228281262)
,p_name=>'APEXIR_FUNCTIONS'
,p_message_language=>'fi'
,p_message_text=>'Funktiot'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622513324251281211)
,p_name=>'APEXIR_FUNCTIONS_OPERATORS'
,p_message_language=>'fi'
,p_message_text=>'Funktiot / Operaattorit'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622687629261281294)
,p_name=>'APEXIR_FUNCTION_N'
,p_message_language=>'fi'
,p_message_text=>'Funktio %0'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622620066040281262)
,p_name=>'APEXIR_GO'
,p_message_language=>'fi'
,p_message_text=>'Suorita'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622513628255281211)
,p_name=>'APEXIR_GREEN'
,p_message_language=>'fi'
,p_message_text=>unistr('vihre\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622657004487281280)
,p_name=>'APEXIR_GROUP_BY'
,p_message_language=>'fi'
,p_message_text=>'Ryhmittele'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622582230622281244)
,p_name=>'APEXIR_GROUP_BY_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Ryhmittelysarake'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622469732011281190)
,p_name=>'APEXIR_GROUP_BY_COL_NOT_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhmittelysarake pit\00E4\00E4 m\00E4\00E4ritell\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622620338358281262)
,p_name=>'APEXIR_GROUP_BY_MAX_ROW_CNT'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhmittelykyselyn maksimirivim\00E4\00E4r\00E4 rajoittaa rivien m\00E4\00E4r\00E4\00E4 peruskyselyss\00E4, ei n\00E4ytett\00E4vien rivien lukum\00E4\00E4r\00E4\00E4. Peruskyselysi rivien lukum\00E4\00E4r\00E4 ylitt\00E4\00E4 maksimirivilukum\00E4\00E4r\00E4n %0. K\00E4yt\00E4 suodinta rajoittamaan tietueiden lukum\00E4\00E4r\00E4\00E4 peruskyselyss\00E4si.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622620619218281262)
,p_name=>'APEXIR_GROUP_BY_SORT'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhmittelyj\00E4rjestys')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622582542778281244)
,p_name=>'APEXIR_GROUP_BY_SORT_ORDER'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhmittelyj\00E4rjestyksen suunta')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622722111768281311)
,p_name=>'APEXIR_HCOLUMN'
,p_message_language=>'fi'
,p_message_text=>'Vaakasuunnan sarake'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622687923056281294)
,p_name=>'APEXIR_HELP'
,p_message_language=>'fi'
,p_message_text=>'Apua'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622722410274281311)
,p_name=>'APEXIR_HELP_01'
,p_message_language=>'fi'
,p_message_text=>unistr('Interaktiivinen raportti n\00E4ytt\00E4\00E4 ennaltam\00E4\00E4ritetyn joukon sarakkeita. Raporttia voi muokata suotimilla, j\00E4rjest\00E4m\00E4ll\00E4, katkotasoilla, korostuksilla, laskentakaavoilla, koosteilla ja kaavioilla. Raporttia voi jatkojalostaa ja tuloksia voi tarkastella,')
||unistr(' ladata itselle ja raporttim\00E4\00E4rityksen voi tallentaa my\00F6hemp\00E4\00E4 k\00E4ytt\00F6\00E4 varten. <p/> Interaktiivista raporttia voi muokata hakupalkista, toimintovalikosta ja sarakeotsikon valikosta.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622688255446281294)
,p_name=>'APEXIR_HELP_ACTIONS_MENU'
,p_message_language=>'fi'
,p_message_text=>unistr('Toimintovalikkoa k\00E4ytet\00E4\00E4n interaktiivisen raportin ilmiasun muokkaamiseen.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622722773331281311)
,p_name=>'APEXIR_HELP_AGGREGATE'
,p_message_language=>'fi'
,p_message_text=>unistr('Koosteet ovat sarakkeisiin kohdistuvia laskentatoimintoja. Koosteiden tulokset n\00E4ytet\00E4\00E4n jokaisen katkotason j\00E4lkeen ja raportin lopussa sen sarakkeen yhteydess\00E4, jolle ne on m\00E4\00E4ritelty. <p/><ul><li><b>kooste</b> mahdollistaa koosteen editoimisen.</l')
||unistr('i><li><b>Funktio</b> on suoritettava funktio (kuten summa, minimi).</li><li><b>Sarake</b> on koostefunktion sarake. Vain numeeriset sarakkeet n\00E4ytet\00E4\00E4n.</li></ul>')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622723096639281311)
,p_name=>'APEXIR_HELP_CHART'
,p_message_language=>'fi'
,p_message_text=>unistr('Interaktiivisessa raportissa voi olla yksi kaavio. Voit siirty\00E4 kaavio- ja raporttin\00E4kym\00E4n v\00E4lill\00E4 hakupalkin alla olevilla linkeill\00E4.<p/><ul><li><b>Kaaviotyyppi</b> m\00E4\00E4ritt\00E4\00E4 kaavion tyypin. Valitse vaakapylv\00E4s, pystypylv\00E4s, piirakka tai k\00E4yr\00E4.</li>')
||unistr('<li><b>Nimike</b> valitse sarake nimikkeeksi.</li><li><b>Akselin otsikko nimikkeelle</b> on otsikko joka n\00E4kyy nimikkeen sarakkeen akselilla. T\00E4t\00E4 ei ole piirakkakaaviolle.</li><li><b>Arvo</b> valitse sarake kaavion arvoksi. Jos funktio on lukum\00E4\00E4r\00E4,')
||unistr(' arvoa ei tarvitse valita.</li><li><b>Arvon akseliotsikko</b> on otsikko joka n\00E4kyy arvon sarakkeen akselilla. T\00E4t\00E4 ei ole piirakkakaaviolle.</li><li><b>Funktio</b> on valinnainen toiminto arvosarakkeelle.</li><li><b>J\00E4rjest\00E4</b> j\00E4rjest\00E4\00E4 tulosjouko')
||'n.</li></ul>'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622620976994281263)
,p_name=>'APEXIR_HELP_COLUMN_HEADING_MENU'
,p_message_language=>'fi'
,p_message_text=>unistr('Sarakkeen otsikko on linkki otsikkovalikkoon.<p/><ul><li><b>J\00E4rjest\00E4 nousevasti ikoni</b j\00E4rjest\00E4\00E4 raportin sarakkeen arvon mukaan nousevasti.</li><li><b>J\00E4rjest\00E4 laskevasti ikoni</b> j\00E4rjest\00E4\00E4 raportin sarakkeen arvon mukaan laskevasti.</li><li><b>P')
||unistr('iilota sarake</b> piilottaa sarakkeen.</li><li><b>Katkotaso</b> luo katkotason sarakkeen perusteella. T\00E4m\00E4 tekee sarakkeesta raportin katkotason otsikkotietueen.</li><li><b>Sarakkeen tietoja</b> n\00E4ytt\00E4\00E4 sarakkeen avusteen, jos on.</li><li><b>Tekstike')
||unistr('ntt\00E4</b>  on hakuehtokentt\00E4. Isoilla ja pienill\00E4 kirjaimilla ei ole eroa, eik\00E4 jokereita tarvita. Sy\00F6tetty arvo lyhent\00E4\00E4 sarakkeen valikon arvolistaa. Voit valita arvon ja siit\00E4 tehd\00E4\00E4 suodin k\00E4ytt\00E4en "=" (sarake = "ABC"). Vaihtoehtoisesti voit valit')
||unistr('a taskulamppuikonin ja annetusta arvosta tehd\00E4\00E4n suodin "LIKE" operaattorilla (sarake LIKE "%ABC%").<li><b>Lista erillisist\00E4 arvoista</b> sis\00E4lt\00E4\00E4 500 ensimm\00E4ist\00E4 suotimen mukaista erillist\00E4 arvoa. Jos sarake on p\00E4iv\00E4m\00E4\00E4r\00E4sarake, lista p\00E4iv\00E4m\00E4\00E4r\00E4jaks')
||unistr('oista n\00E4ytet\00E4\00E4n erillisten arvojen sijasta. Jos valitset arvon, suodin luodaan k\00E4ytt\00E4en "=" (sarake = "ABC").</li></ul>')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622657976439281280)
,p_name=>'APEXIR_HELP_COMPUTE'
,p_message_language=>'fi'
,p_message_text=>unistr('Laskennat mahdollistavat laskukaavasarakkeiden lis\00E4\00E4misen raporttiin. Laskennat voivat olla laskukaavoja (TUNNIT/24) tai Oraclen vakiofunktioita, jotka on lis\00E4tty olemassaoleviin sarakkeisiin (joitakin esimerkkej\00E4 n\00E4kyvill\00E4, muita, kuten TO_DATE, voi')
||unistr(' my\00F6s k\00E4ytt\00E4\00E4).<p/><ul><li><b>Laskenta</b> editoi laskentaa.</li><li><b>Sarakeotsikko</b> on sarakeotsikko uudelle sarakkeelle.</li><li><b>Muotoilumaski</b> on Oraclen muotoilumaski sarakkeille (esim. S9999).</li><li><b>Lauseke</b> suoritettava lasku')
||unistr('lauseke. Sarakkeisiin viitataan sarakealiaksilla.</li></ul><p/>Alla laskenta, kyselyn sarakkeet n\00E4kyv\00E4t aliaksina. Sarakkeen nimen tai aliaksen linkki vie sen lausekkeeseen. Sarakkeiden vieress\00E4 on n\00E4pp\00E4imist\00F6, joka on oikopolku yleisimmin k\00E4ytettyih')
||unistr('in n\00E4pp\00E4imiin. Oikeassa reunassa ovat funktiot.<p/>Esimerkkilaskentana on kokonaiskompensaatio:<p/><pre>CASE WHEN A = "sales" THEN B + C ELSE B END</pre>(A on ORGANIZATION, B on SALARY ja C on COMMISSION)')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622582898107281244)
,p_name=>'APEXIR_HELP_CONTROL_BREAK'
,p_message_language=>'fi'
,p_message_text=>unistr('Luo katkotasoryhm\00E4 yhdest\00E4 tai useasta sarakkeesta. Valitut sarakkeet muodostavat katkotason otsikkotietueen.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622723359773281311)
,p_name=>'APEXIR_HELP_DETAIL_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4hd\00E4ksesi yksitt\00E4isen rivin tietoja, k\00E4yt\00E4 rivill\00E4 olevaa yksitt\00E4isen rivin n\00E4kym\00E4ikonia. Jos m\00E4\00E4ritelty, yksitt\00E4isen rivin n\00E4kym\00E4n linkki on aina ensimm\00E4isell\00E4 sarakkeella. Riippuen interaktiivisen raportin m\00E4\00E4rityksist\00E4, yksitt\00E4isen rivin n\00E4kym\00E4 o')
||unistr('n joko standardi n\00E4kym\00E4 tai erikseen tehty sivu, jolta voi p\00E4ivitt\00E4\00E4 tietoja.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622470064848281190)
,p_name=>'APEXIR_HELP_DOWNLOAD'
,p_message_language=>'fi'
,p_message_text=>unistr('Tallenna tulosjoukko tiedostoksi. Tallennusformaatit vaihtelevat asennuksen ja raportin m\00E4\00E4ritysten mukaisesti, mutta voivat olla CSV, XLS, PDF tai RTF.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622470360472281190)
,p_name=>'APEXIR_HELP_FILTER'
,p_message_language=>'fi'
,p_message_text=>unistr('Muuttaa kyselyn hakuehtoja. Valitse ensin sarake (sarakkeen ei tarvitse olla n\00E4kyvill\00E4), valitse listalta Oraclen standardioperaattori (=, !=, ei joukossa, v\00E4lill\00E4), ja anna vertailukohde. Vertailun kohteen kirjoitusasun kirjainkoolla on merkityst\00E4 j')
||unistr('a voit k\00E4ytt\00E4\00E4 %:a korvaamaan merkkijonon (esimerkiksi STATE_NAME kaltainen A%).')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622514850026281212)
,p_name=>'APEXIR_HELP_FLASHBACK'
,p_message_language=>'fi'
,p_message_text=>unistr('Suorittaa takaumakyselyn (flashback) n\00E4hd\00E4ksesi tiedon menneen\00E4 ajanhetken\00E4. Oletustakauma-aika on kolme tuntia (180 minuuttia), mutta aika vaihtelee tietokannan mukaan.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622621822613281263)
,p_name=>'APEXIR_HELP_FORMAT'
,p_message_language=>'fi'
,p_message_text=>unistr('<p>Muotoilu-valikosta voit muuttaa raportin ulkoasua. Muotoilu-valikossa on seuraavat alavalikot:</p> <ul><li>J\00E4rjest\00E4</li> <li>Katkotaso</li> <li>Korosta</li> <li>Laske</li> <li>Koosta</li> <li>Kaavio</li> <li>Ryhmittele</li> <li>Pivot</li> </ul>')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622515189781281212)
,p_name=>'APEXIR_HELP_GROUP_BY'
,p_message_language=>'fi'
,p_message_text=>unistr('Voit m\00E4\00E4ritell\00E4 yhden ryhmittelyn\00E4kym\00E4n raporttia kohden. Voit vaihdella ryhmittely- ja raporttin\00E4kymien v\00E4lill\00E4 hakupalkin ikoneilla. Luodaksesi ryhmittelyn\00E4kym\00E4n valitse: <p></p><ul> <li>ryhmittelysarakkeet</li> <li>koostettavat sarakkeet ja kooste')
||unistr('funktio (keskiarvo, summa, lukum\00E4\00E4r\00E4, jne.)</li> </ul>')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622688585360281294)
,p_name=>'APEXIR_HELP_HIGHLIGHT'
,p_message_language=>'fi'
,p_message_text=>unistr('Korostamalla voit tehd\00E4 suotimen. Rivit jotka vastaavat suodinta korostetaan suotimelle m\00E4\00E4ritellyn korostuksen mukaisesti.<p/><ul><li><b>Nimi</b> k\00E4yt\00F6ss\00E4 vain n\00E4kym\00E4ss\00E4.</li><li><b>Sekvenssi</b> m\00E4\00E4rittelee sekvenssin mihin s\00E4\00E4nt\00F6j\00E4 verrataan.</li>')
||unistr('<li><b>K\00E4yt\00F6ss\00E4</b> onko s\00E4\00E4nt\00F6 k\00E4yt\00F6ss\00E4 vai ei.</li><li><b>Korostustyyppi</b> m\00E4\00E4rittelee joko rivi- tai solukorostuksen. Jos solu on valittu, korostusehdoissa viitattu sarake on korostettu.</li><li><b>Taustav\00E4ri</b> on korostetun alueen taustav\00E4ri.')
||unistr('</li><li><b>Tekstin v\00E4ri</b> on korostetun alueen tekstin v\00E4ri.</li><li><b>Korostusehto</b> m\00E4\00E4ritt\00E4\00E4 suotimen ehdon.</li></ul>')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622544297068281226)
,p_name=>'APEXIR_HELP_PIVOT'
,p_message_language=>'fi'
,p_message_text=>unistr('Voi m\00E4\00E4ritell\00E4 yhden pivot-n\00E4kym\00E4n per tallennettu raportti. Voit vaihdella pivot-raportti- ja raporttin\00E4kymien v\00E4lill\00E4 hakupalkin ikoneilla. Pivot-raportin luomiseksi valitse: <p></p> <ul> <li>pivotiin haluamasi sarakkeet</li> <li>sarakkeet riveiksi')
||unistr('</li> <li>koostesarakkeet ja suoritettava funktio (keskiarvo, summa, lukum\00E4\00E4r\00E4, jne.)</li> </ul>')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622621290456281263)
,p_name=>'APEXIR_HELP_REPORT_SETTINGS'
,p_message_language=>'fi'
,p_message_text=>unistr('Jos olet muokannut interaktiivista raporttiasi, raportin asetukset ovat n\00E4kyviss\00E4 hakupalkin ja raportin v\00E4liss\00E4.<p/>Raportin asetuksia voit:<ul><li><b>Editoida</b> raportin nimest\00E4.</li><li><b>Est\00E4\00E4/Sallia</b> valintaruudulla voit tilap\00E4isesti est\00E4\00E4')
||unistr('/sallia asetukset.</li><li><b>Poistaa</b> asetuksen.</li></ul><p/>Jos olet luonut kaavion, ryhmittelyn tai pivotin, voit vaihdella raportin ja niiden v\00E4lill\00E4 oikealla olevilla n\00E4kym\00E4linkeill\00E4. Jos tarkastelet kaaviota, ryhmittely\00E4 tai pivotia, voit e')
||unistr('ditoida asetuksia kunkin ''Editoi xxx'' -linkist\00E4.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622513975146281211)
,p_name=>'APEXIR_HELP_RESET'
,p_message_language=>'fi'
,p_message_text=>'Palauttaa raportin oletusasetuksiin poistaen kaikki muokkaukset, jotka olet tehnyt.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622657365575281280)
,p_name=>'APEXIR_HELP_ROWS_PER_PAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Asettaa kerrallaan sivulla n\00E4ytett\00E4vien tietueiden lukum\00E4\00E4r\00E4n.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622657624718281280)
,p_name=>'APEXIR_HELP_SAVE_REPORT'
,p_message_language=>'fi'
,p_message_text=>unistr('Tallentaa muokatun raportin tulevaa k\00E4ytt\00F6\00E4 varten. Anna nimi ja vaihtoehtoinen kuvaus, sek\00E4 m\00E4\00E4rit\00E4 tyyppi. Voit tallentaa nelj\00E4n tyyppisi\00E4 interaktiivisia raportteja:<ul><li><b>Ensisijainen</b> (vain kehitt\00E4j\00E4). Ensisijainen raportti on raportti jo')
||unistr('ka n\00E4kyy, kun raporttisivu avataan. Ensisijaista raporttia ei voi nimet\00E4 uudelleen, eik\00E4 poistaa.</li><li><b>Vaihtoehtoinen</b> (vain kehitt\00E4j\00E4). Kehitt\00E4j\00E4 voi tehd\00E4 useita raportteja. Vain kehitt\00E4j\00E4 voi tallentaa, nimet\00E4 tai poistaa vaihtoehtoisen r')
||unistr('aportin.</li><li><b>Julkinen nimetty raportti</b> (loppuk\00E4ytt\00E4j\00E4). Loppuk\00E4ytt\00E4j\00E4, joka on raportin tehnyt, voi tallentaa, nimet\00E4 tai poistaa. Muut k\00E4ytt\00E4j\00E4t voivat katsella ja tallentaa raportin toiselle nimelle.</li><li><b>Yksityinen nimetty raportt')
||unistr('i</b> (loppuk\00E4ytt\00E4j\00E4). Vain raportin tehnyt k\00E4ytt\00E4j\00E4 n\00E4kee, voi tallentaa, voi nimet\00E4 ja voi poistaa raportin.</li></ul>')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622514240895281211)
,p_name=>'APEXIR_HELP_SEARCH_BAR'
,p_message_language=>'fi'
,p_message_text=>unistr('Jokaisen raportin yl\00E4osassa on hakualue. Hakualueessa on seuraavat toiminnot:<p/><ul><li><b>Valitse sarakkeet -ikonista</b> voit valita mink\00E4 sarakkeiden perusteella hakea (voit valita vaikka kaikki).</li><li><b>Tekstialue</b> on hakukriteeri\00E4 varten')
||unistr('. Kirjasinkoolla ei ole merkityst\00E4 (jokereita ei tarvita).</li><li><b>Rivit</b> n\00E4ytett\00E4vien rivien lukum\00E4\00E4r\00E4 per sivu.</li><li><b>[Suorita] painike</b> suorittaa haun.</li><li><b>Toiminnot valikko ikoni</b> n\00E4ytt\00E4\00E4 toiminnot valikon.</li></ul><p/>Hu')
||unistr('omaa, ett\00E4 kaikki ominaisuudet eiv\00E4t ole saatavilla kaikille raporteille.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622621514647281263)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ACTIONS_MENU'
,p_message_language=>'fi'
,p_message_text=>'<li><b>Toiminnot valikosta</b> voi muokata raporttia. Katso seuraavat osiot.</li>'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622544525745281226)
,p_name=>'APEXIR_HELP_SEARCH_BAR_FINDER'
,p_message_language=>'fi'
,p_message_text=>unistr('<li><b>Valitse sarakkeet -ikonista</b> voit valita mink\00E4 sarakkeiden perusteella hakea (voit valita vaikka kaikki).</li>')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622514595146281211)
,p_name=>'APEXIR_HELP_SEARCH_BAR_REPORTS'
,p_message_language=>'fi'
,p_message_text=>unistr('<li><b>Raportit</b> n\00E4ytt\00E4\00E4 vaihtoehtoisen oletusraportin ja tallennetut omat tai julkiset raportit.</li>')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622544875305281226)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ROWS'
,p_message_language=>'fi'
,p_message_text=>unistr('<li><b>Rivit</b> n\00E4ytett\00E4vien rivien lukum\00E4\00E4r\00E4 per sivu.</li>')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622502474861281206)
,p_name=>'APEXIR_HELP_SEARCH_BAR_TEXTBOX'
,p_message_language=>'fi'
,p_message_text=>unistr('<li><b>Tekstialue</b> voit sy\00F6tt\00E4\00E4 kirjasinkoosta riippumattoman hakukriteerin (jokerimerkit tulkitaan merkeikseen, ei jokereiksi).</li> <li><b>Suorita painike</b> suorittaa haun. Enterin painaminen suorittaa haun my\00F6s, kun kursori on tekstialueella.')
||'</li>'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622610134946281257)
,p_name=>'APEXIR_HELP_SEARCH_BAR_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('<li><b>N\00E4kym\00E4 ikonit</b> vaihtaa raportin n\00E4kym\00E4\00E4 ikoni, raportti, yksityiskohta, kaavio, ryhmittely ja pivot v\00E4lill\00E4 jos erilaisia raportteja on m\00E4\00E4ritelty.</li>')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622643753815281274)
,p_name=>'APEXIR_HELP_SELECT_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4ritet\00E4\00E4n n\00E4ytett\00E4v\00E4t sarakkeet. Oikealla olevat sarakkeet ovat n\00E4kyviss\00E4. Vasemmalla olevat sarakkeet ovat piilossa. Voit muuttaa n\00E4ytett\00E4vien sarakkeiden j\00E4rjestyst\00E4 oikealla olevilla nuolilla. Laskennallisten sarakkeiden edess\00E4 on <b>**</b>.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622457546781281179)
,p_name=>'APEXIR_HELP_SORT'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4ritet\00E4\00E4n j\00E4rjest\00E4missarakkeet ja j\00E4rjestyksen suunta (nouseva/laskeva). Voit my\00F6s m\00E4\00E4ritell\00E4 null-arvojen k\00E4sittelyn (oletus, n\00E4yt\00E4 lopuksi, n\00E4yt\00E4 alussa). J\00E4rjest\00E4minen n\00E4kyy sarakeotsikkojen oikealla puolella tulosraportilla.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622457711536281183)
,p_name=>'APEXIR_HELP_SUBSCRIPTION'
,p_message_language=>'fi'
,p_message_text=>unistr('Tilauksessa on s\00E4hk\00F6postiosoite (tai useampia pilkulla eroteltuina), s\00E4hk\00F6postin aihe, toistotaajuus ja aloitus ja lopetusp\00E4iv\00E4. S\00E4hk\00F6posti on tulosraportti HTML-muotoisena sis\00E4lt\00E4en tilaushetken raporttiasetusten mukaiset tiedot.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622533173235281221)
,p_name=>'APEXIR_HIDE_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Piilota Sarake'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622499747681281204)
,p_name=>'APEXIR_HIGHLIGHT'
,p_message_language=>'fi'
,p_message_text=>'Korosta'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622534011398281221)
,p_name=>'APEXIR_HIGHLIGHTS'
,p_message_language=>'fi'
,p_message_text=>'Korostukset'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622533444773281221)
,p_name=>'APEXIR_HIGHLIGHT_CONDITION'
,p_message_language=>'fi'
,p_message_text=>'Korostusehto'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622533710897281221)
,p_name=>'APEXIR_HIGHLIGHT_TYPE'
,p_message_language=>'fi'
,p_message_text=>'Korostustyyppi'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622644098284281274)
,p_name=>'APEXIR_HIGHLIGHT_WHEN'
,p_message_language=>'fi'
,p_message_text=>'Korosta kun'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622644385469281274)
,p_name=>'APEXIR_INACTIVE_SETTING'
,p_message_language=>'fi'
,p_message_text=>'1 ei toiminnassa oleva asetus'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622570512293281238)
,p_name=>'APEXIR_INACTIVE_SETTINGS'
,p_message_language=>'fi'
,p_message_text=>'%0 ei toiminnassa olevaa asetusta'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622534306224281221)
,p_name=>'APEXIR_INTERACTIVE_REPORT_HELP'
,p_message_language=>'fi'
,p_message_text=>'Interaktiivisen raportin avuste'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622710477202281305)
,p_name=>'APEXIR_INVALID'
,p_message_language=>'fi'
,p_message_text=>unistr('Ep\00E4kelpo')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622534687351281221)
,p_name=>'APEXIR_INVALID_COMPUTATION'
,p_message_language=>'fi'
,p_message_text=>unistr('Ep\00E4kelpo laskentalauseke. %0')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622534910489281221)
,p_name=>'APEXIR_INVALID_END_DATE'
,p_message_language=>'fi'
,p_message_text=>unistr('Loppup\00E4iv\00E4 pit\00E4\00E4 olla my\00F6hempi kuin aloitusp\00E4iv\00E4.')
);
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622644618897281274)
,p_name=>'APEXIR_INVALID_FILTER'
,p_message_language=>'fi'
,p_message_text=>unistr('Ep\00E4kelpo suodinlauseke. %0')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622535279805281221)
,p_name=>'APEXIR_INVALID_FILTER_QUERY'
,p_message_language=>'fi'
,p_message_text=>unistr('Ep\00E4kelpo suodinkysely')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622535593979281222)
,p_name=>'APEXIR_INVALID_SETTING'
,p_message_language=>'fi'
,p_message_text=>unistr('1 ep\00E4kelpo asetus')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622458078342281184)
,p_name=>'APEXIR_INVALID_SETTINGS'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ep\00E4kelpoa asetusta')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622644982624281274)
,p_name=>'APEXIR_IS_IN_THE_LAST'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 on viimeisess\00E4 %1')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622570871043281239)
,p_name=>'APEXIR_IS_IN_THE_NEXT'
,p_message_language=>'fi'
,p_message_text=>'%0 on seuraavassa %1'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622645230089281275)
,p_name=>'APEXIR_IS_NOT_IN_THE_LAST'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei ole viimeisess\00E4 %1')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622710721632281305)
,p_name=>'APEXIR_IS_NOT_IN_THE_NEXT'
,p_message_language=>'fi'
,p_message_text=>'%0 ei ole seuraavassa %1'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622571145566281239)
,p_name=>'APEXIR_KEYPAD'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4pp\00E4imist\00F6')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622645544107281275)
,p_name=>'APEXIR_LABEL'
,p_message_language=>'fi'
,p_message_text=>'Nimike'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622645838737281275)
,p_name=>'APEXIR_LABEL_AXIS_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Akselin otsikko nimikkeelle'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622571484596281239)
,p_name=>'APEXIR_LABEL_PREFIX'
,p_message_language=>'fi'
,p_message_text=>'Nimikkeen etuliite'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622458373143281184)
,p_name=>'APEXIR_LAST_DAY'
,p_message_language=>'fi'
,p_message_text=>unistr('Viimeinen p\00E4iv\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622711002695281305)
,p_name=>'APEXIR_LAST_HOUR'
,p_message_language=>'fi'
,p_message_text=>'Viimeinen tunti'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622610443493281257)
,p_name=>'APEXIR_LAST_MONTH'
,p_message_language=>'fi'
,p_message_text=>'Viimeinen kuukausi'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622711349342281305)
,p_name=>'APEXIR_LAST_WEEK'
,p_message_language=>'fi'
,p_message_text=>'Viimeinen viikko'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622610745330281258)
,p_name=>'APEXIR_LAST_X_DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('Viimeiset %0 p\00E4iv\00E4\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622611067694281258)
,p_name=>'APEXIR_LAST_X_HOURS'
,p_message_language=>'fi'
,p_message_text=>'Viimeiset %0 tuntia'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622611304327281258)
,p_name=>'APEXIR_LAST_X_YEARS'
,p_message_language=>'fi'
,p_message_text=>'Viimeiset %0 vuotta'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622711623847281306)
,p_name=>'APEXIR_LAST_YEAR'
,p_message_language=>'fi'
,p_message_text=>'Viime vuosi'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622500019442281204)
,p_name=>'APEXIR_LINE'
,p_message_language=>'fi'
,p_message_text=>'Viiva'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622494646394281202)
,p_name=>'APEXIR_MAP_IT'
,p_message_language=>'fi'
,p_message_text=>'Kartoita'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622646178934281275)
,p_name=>'APEXIR_MAX_QUERY_COST'
,p_message_language=>'fi'
,p_message_text=>unistr('Arvio kyselyn suorituksen kustannuksista ylitt\00E4\00E4 sallitun enimm\00E4ism\00E4\00E4r\00E4n. Muokkaa kyselyn asetuksia ja yrit\00E4 uudelleen.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622458687669281184)
,p_name=>'APEXIR_MAX_ROW_CNT'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4m\00E4 kysely palauttaa enemm\00E4n kuin %0 rivi\00E4, k\00E4yt\00E4 suodinta varmistaaksesi kyselyn suorittamisen loppuun asti.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622500364467281205)
,p_name=>'APEXIR_MAX_X'
,p_message_language=>'fi'
,p_message_text=>'Maksimi %0'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622458994004281184)
,p_name=>'APEXIR_MEDIAN_X'
,p_message_language=>'fi'
,p_message_text=>'Mediaani %0'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622711985721281306)
,p_name=>'APEXIR_MIN_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0 minuuttia sitten'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622611683102281258)
,p_name=>'APEXIR_MIN_X'
,p_message_language=>'fi'
,p_message_text=>'Minimi %0'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622500665144281205)
,p_name=>'APEXIR_MONTH'
,p_message_language=>'fi'
,p_message_text=>'Kuukausi'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622459207250281184)
,p_name=>'APEXIR_MONTHLY'
,p_message_language=>'fi'
,p_message_text=>'Kuukausittain'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622678354333281290)
,p_name=>'APEXIR_MORE_DATA'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4 dataa')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622678607320281290)
,p_name=>'APEXIR_MOVE'
,p_message_language=>'fi'
,p_message_text=>unistr('Siirr\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622535874022281222)
,p_name=>'APEXIR_MOVE_ALL'
,p_message_language=>'fi'
,p_message_text=>unistr('Siirr\00E4 kaikki')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622497300506281203)
,p_name=>'APEXIR_MULTIIR_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>unistr('Alueen kiinte\00E4 tunniste pit\00E4\00E4 m\00E4\00E4ritt\00E4\00E4, kun sivulla on useita interaktiivisia raportteja.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622712225615281306)
,p_name=>'APEXIR_NAME'
,p_message_language=>'fi'
,p_message_text=>'Nimi'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622500922680281205)
,p_name=>'APEXIR_NEW_AGGREGATION'
,p_message_language=>'fi'
,p_message_text=>'Uusi kooste'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622678950216281290)
,p_name=>'APEXIR_NEW_CATEGORY'
,p_message_language=>'fi'
,p_message_text=>'- Uusi kategoria -'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622562591171281235)
,p_name=>'APEXIR_NEW_CATEGORY_LABEL'
,p_message_language=>'fi'
,p_message_text=>'Uusi kategoria'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622646475041281275)
,p_name=>'APEXIR_NEW_COMPUTATION'
,p_message_language=>'fi'
,p_message_text=>'Uusi laskenta'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622611982117281258)
,p_name=>'APEXIR_NEXT'
,p_message_language=>'fi'
,p_message_text=>'&gt;'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622612238897281258)
,p_name=>'APEXIR_NEXT_DAY'
,p_message_language=>'fi'
,p_message_text=>unistr('Seuraava p\00E4iv\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622646763331281275)
,p_name=>'APEXIR_NEXT_HOUR'
,p_message_language=>'fi'
,p_message_text=>'Seuraava tunti'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622712571952281306)
,p_name=>'APEXIR_NEXT_MONTH'
,p_message_language=>'fi'
,p_message_text=>'Seuraava kuukausi'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622501280613281205)
,p_name=>'APEXIR_NEXT_WEEK'
,p_message_language=>'fi'
,p_message_text=>'Seuraava viikko'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622571730558281239)
,p_name=>'APEXIR_NEXT_X_DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('Seuraavat %0 p\00E4iv\00E4\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622459544676281184)
,p_name=>'APEXIR_NEXT_X_HOURS'
,p_message_language=>'fi'
,p_message_text=>'Seuraavat %0 tuntia'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622459807022281184)
,p_name=>'APEXIR_NEXT_X_YEARS'
,p_message_language=>'fi'
,p_message_text=>'Seuraavat %0 vuotta'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622712862188281306)
,p_name=>'APEXIR_NEXT_YEAR'
,p_message_language=>'fi'
,p_message_text=>'Seuraava vuosi'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622647066769281275)
,p_name=>'APEXIR_NO'
,p_message_language=>'fi'
,p_message_text=>'Ei'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622536152828281222)
,p_name=>'APEXIR_NONE'
,p_message_language=>'fi'
,p_message_text=>unistr('- Ei yht\00E4\00E4n -')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622713464963281306)
,p_name=>'APEXIR_NOT_VALID_EMAIL'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4hk\00F6postiosoite ei ole validi.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622572064649281239)
,p_name=>'APEXIR_NO_AGGREGATION_DEFINED'
,p_message_language=>'fi'
,p_message_text=>unistr('Koostetta ei m\00E4\00E4ritetty.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622713176509281306)
,p_name=>'APEXIR_NO_COLUMN_INFO'
,p_message_language=>'fi'
,p_message_text=>'Saraketietoa ei saatavilla.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622612503191281258)
,p_name=>'APEXIR_NO_COMPUTATION_DEFINED'
,p_message_language=>'fi'
,p_message_text=>unistr('Laskentaa ei m\00E4\00E4ritetty.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622501554263281205)
,p_name=>'APEXIR_NO_END_DATE'
,p_message_language=>'fi'
,p_message_text=>unistr('- Ei p\00E4\00E4ttymisp\00E4iv\00E4\00E4 -')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622647361428281275)
,p_name=>'APEXIR_NULLS_ALWAYS_FIRST'
,p_message_language=>'fi'
,p_message_text=>'Null:t aina alkuun'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622572317336281239)
,p_name=>'APEXIR_NULLS_ALWAYS_LAST'
,p_message_language=>'fi'
,p_message_text=>'Null:t aina loppuun'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622501873681281205)
,p_name=>'APEXIR_NULL_SORTING'
,p_message_language=>'fi'
,p_message_text=>unistr('Null j\00E4rjest\00E4minen')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622536443389281222)
,p_name=>'APEXIR_NUMERIC_FLASHBACK_TIME'
,p_message_language=>'fi'
,p_message_text=>unistr('Takauma-aika pit\00E4\00E4 olla numeerinen.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622536779836281222)
,p_name=>'APEXIR_NUMERIC_SEQUENCE'
,p_message_language=>'fi'
,p_message_text=>unistr('Sekvenssi pit\00E4\00E4 olla numeerinen.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622572684016281239)
,p_name=>'APEXIR_OPERATOR'
,p_message_language=>'fi'
,p_message_text=>'Operaattori'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622572987680281240)
,p_name=>'APEXIR_ORANGE'
,p_message_language=>'fi'
,p_message_text=>'oranssi'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622537099778281222)
,p_name=>'APEXIR_OTHER'
,p_message_language=>'fi'
,p_message_text=>'Muu'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622460133257281185)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_COUNT_X'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 (%) prosenttia kokonaislukum\00E4\00E4r\00E4st\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622460408934281185)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_SUM_X'
,p_message_language=>'fi'
,p_message_text=>'%0 (%) prosenttia kokonaissummasta'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622502122694281206)
,p_name=>'APEXIR_PERCENT_TOTAL_COUNT'
,p_message_language=>'fi'
,p_message_text=>unistr('Prosenttia kokonaislukum\00E4\00E4r\00E4st\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622713774743281307)
,p_name=>'APEXIR_PERCENT_TOTAL_SUM'
,p_message_language=>'fi'
,p_message_text=>'Prosenttia kokonaissummasta'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622612804594281259)
,p_name=>'APEXIR_PIE'
,p_message_language=>'fi'
,p_message_text=>'Piirakka'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622714021173281307)
,p_name=>'APEXIR_PIVOT'
,p_message_language=>'fi'
,p_message_text=>'Pivot'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622679282114281290)
,p_name=>'APEXIR_PIVOT_AGG_NOT_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('Kooste pit\00E4\00E4 olla m\00E4\00E4ritelty.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622573275360281240)
,p_name=>'APEXIR_PIVOT_AGG_NOT_ON_ROW_COL'
,p_message_language=>'fi'
,p_message_text=>unistr('Et voi m\00E4\00E4ritell\00E4 koostetta sarakkeelle, joka on valittu rivisarakkeeksi.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622537343729281222)
,p_name=>'APEXIR_PIVOT_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>'Pivot-sarakkeet'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622613163056281259)
,p_name=>'APEXIR_PIVOT_COLUMN_N'
,p_message_language=>'fi'
,p_message_text=>'Pivot-sarake %0'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622573566049281240)
,p_name=>'APEXIR_PIVOT_COLUMN_NOT_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('Pivot -sarake pit\00E4\00E4 m\00E4\00E4ritell\00E4.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622714373662281307)
,p_name=>'APEXIR_PIVOT_MAX_ROW_CNT'
,p_message_language=>'fi'
,p_message_text=>unistr('Pivot-kyselyn maksimirivilukum\00E4\00E4r\00E4 rajoittaa rivien m\00E4\00E4r\00E4\00E4 peruskyselyss\00E4, ei n\00E4ytett\00E4vien rivien lukum\00E4\00E4r\00E4\00E4. Peruskyselysi ylitt\00E4\00E4 maksimirivilukum\00E4\00E4r\00E4n %0. M\00E4\00E4rittele suodin rajaamaan peruskyselysi tuomien tietueiden lukum\00E4\00E4r\00E4\00E4.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622597587066281251)
,p_name=>'APEXIR_PIVOT_ROW_COLUMN_INVALID'
,p_message_language=>'fi'
,p_message_text=>unistr('Valitse joku muu rivisarake. HTML-ilmaisu tai linkki rivisarakkeessa sis\00E4lt\00E4\00E4 pivotiksi m\00E4\00E4ritetyn sarakkeen tai koostesarakkeen.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622613453576281259)
,p_name=>'APEXIR_PIVOT_SORT'
,p_message_language=>'fi'
,p_message_text=>unistr('Pivot-j\00E4rjestys')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622460703009281185)
,p_name=>'APEXIR_PREVIOUS'
,p_message_language=>'fi'
,p_message_text=>'&lt;'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622647663651281276)
,p_name=>'APEXIR_PRIMARY'
,p_message_language=>'fi'
,p_message_text=>'Ensisijainen'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622502769843281206)
,p_name=>'APEXIR_PRIMARY_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Ensisijainen raportti'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622461010559281185)
,p_name=>'APEXIR_PRIVATE'
,p_message_language=>'fi'
,p_message_text=>'Yksityinen'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622503009369281206)
,p_name=>'APEXIR_PUBLIC'
,p_message_language=>'fi'
,p_message_text=>'Julkinen'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622647993491281276)
,p_name=>'APEXIR_RED'
,p_message_language=>'fi'
,p_message_text=>'punainen'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622669689677281286)
,p_name=>'APEXIR_REGION_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>'Aluetta (ID) %0 ei ole.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622679592591281290)
,p_name=>'APEXIR_REMOVE'
,p_message_language=>'fi'
,p_message_text=>'Poista'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622679813319281290)
,p_name=>'APEXIR_REMOVE_AGGREGATE'
,p_message_language=>'fi'
,p_message_text=>'Poista kooste'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622461382334281185)
,p_name=>'APEXIR_REMOVE_ALL'
,p_message_language=>'fi'
,p_message_text=>'Poista kaikki'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622537692413281223)
,p_name=>'APEXIR_REMOVE_CHART'
,p_message_language=>'fi'
,p_message_text=>'Poista kaavio'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622714638251281307)
,p_name=>'APEXIR_REMOVE_CONTROL_BREAK'
,p_message_language=>'fi'
,p_message_text=>'Poista katkotaso'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622573813141281240)
,p_name=>'APEXIR_REMOVE_FILTER'
,p_message_language=>'fi'
,p_message_text=>'Poista suodin'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622680185400281290)
,p_name=>'APEXIR_REMOVE_FLASHBACK'
,p_message_language=>'fi'
,p_message_text=>'Poista takauma'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622503309880281206)
,p_name=>'APEXIR_REMOVE_GROUP_BY'
,p_message_language=>'fi'
,p_message_text=>'Poista ryhmittely'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622461668341281185)
,p_name=>'APEXIR_REMOVE_HIGHLIGHT'
,p_message_language=>'fi'
,p_message_text=>'Poista korostus'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622714993528281307)
,p_name=>'APEXIR_REMOVE_PIVOT'
,p_message_language=>'fi'
,p_message_text=>'Poista pivot'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622597265397281251)
,p_name=>'APEXIR_REMOVE_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Poista raportti'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622613752272281259)
,p_name=>'APEXIR_RENAME_DEFAULT_REPORT'
,p_message_language=>'fi'
,p_message_text=>unistr('Uudelleennime\00E4 oletusraportti')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622503643982281206)
,p_name=>'APEXIR_RENAME_REPORT'
,p_message_language=>'fi'
,p_message_text=>unistr('Uudelleennime\00E4 raportti')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622715253493281307)
,p_name=>'APEXIR_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Raportti'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622504249101281207)
,p_name=>'APEXIR_REPORTS'
,p_message_language=>'fi'
,p_message_text=>'Raportit'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622461950101281186)
,p_name=>'APEXIR_REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>unistr('Tallennettua raporttia aliasnimell\00E4 %0 ei ole.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622680489004281291)
,p_name=>'APEXIR_REPORT_DISPLAY_COLUMN_LIMIT_REACHED'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4ytett\00E4vien sarakkeiden m\00E4\00E4r\00E4 ylitt\00E4\00E4 sallitun m\00E4\00E4r\00E4n. Mene Toiminnot-valikosta Valitse Sarakkeet -valintaan ja v\00E4henn\00E4 n\00E4ytett\00E4vi\00E4 sarakkeita.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622574120972281240)
,p_name=>'APEXIR_REPORT_DOES_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>'Raporttia ei ole.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622503962905281207)
,p_name=>'APEXIR_REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>'Tallennettua raporttia ID %0 ei ole.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622715591948281308)
,p_name=>'APEXIR_REPORT_SETTINGS'
,p_message_language=>'fi'
,p_message_text=>'Raporttiasetukset'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622715817099281308)
,p_name=>'APEXIR_REPORT_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('&lt; Raporttin\00E4kym\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622504549088281207)
,p_name=>'APEXIR_RESET'
,p_message_language=>'fi'
,p_message_text=>'Palauta alkutila'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622648283265281276)
,p_name=>'APEXIR_RESET_CONFIRM'
,p_message_language=>'fi'
,p_message_text=>'Palauttaa raportin oletusasetuksiin.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622648581831281276)
,p_name=>'APEXIR_ROW'
,p_message_language=>'fi'
,p_message_text=>'Rivi'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622614031574281259)
,p_name=>'APEXIR_ROWS'
,p_message_language=>'fi'
,p_message_text=>'Rivit'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622614381399281259)
,p_name=>'APEXIR_ROWS_PER_PAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Rivej\00E4 per sivu')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622575018362281240)
,p_name=>'APEXIR_ROW_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>'Rivisarakkeet'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622574750901281240)
,p_name=>'APEXIR_ROW_COLUMN_N'
,p_message_language=>'fi'
,p_message_text=>'Rivisarake %0'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622537960546281223)
,p_name=>'APEXIR_ROW_COLUMN_NOT_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('Rivisarake pit\00E4\00E4 olla m\00E4\00E4ritelty.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622574411924281240)
,p_name=>'APEXIR_ROW_COL_DIFF_FROM_PIVOT_COL'
,p_message_language=>'fi'
,p_message_text=>unistr('Rivisarake pit\00E4\00E4 olla eri kuin pivot-sarake.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622504857655281207)
,p_name=>'APEXIR_ROW_FILTER'
,p_message_language=>'fi'
,p_message_text=>'Rivisuodin'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622538220649281223)
,p_name=>'APEXIR_ROW_OF'
,p_message_language=>'fi'
,p_message_text=>'Rivi %0 %1:sta'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622462220959281186)
,p_name=>'APEXIR_ROW_ORDER'
,p_message_language=>'fi'
,p_message_text=>unistr('Rivij\00E4rjestys')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622648856873281276)
,p_name=>'APEXIR_ROW_TEXT_CONTAINS'
,p_message_language=>'fi'
,p_message_text=>unistr('Riviteksti sis\00E4lt\00E4\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622462589708281186)
,p_name=>'APEXIR_RPT_DISP_COL_EXCEED'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4ytett\00E4vien sarakkeiden m\00E4\00E4r\00E4 ylitt\00E4\00E4 sallitun m\00E4\00E4r\00E4n. Mene Toiminnot-valikosta Valitse Sarakkeet -valintaan ja v\00E4henn\00E4 n\00E4ytett\00E4vi\00E4 sarakkeita.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622505138126281207)
,p_name=>'APEXIR_SAVE'
,p_message_language=>'fi'
,p_message_text=>'Tallenna'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622681396103281291)
,p_name=>'APEXIR_SAVED_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Tallennettu raportti'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622716199807281308)
,p_name=>'APEXIR_SAVED_REPORT_MSG'
,p_message_language=>'fi'
,p_message_text=>'Tallennettu raportti = "%0"'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622505467033281207)
,p_name=>'APEXIR_SAVE_AS_DEFAULT'
,p_message_language=>'fi'
,p_message_text=>'Tallenna oletukseksi'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622680782917281291)
,p_name=>'APEXIR_SAVE_DEFAULT_CONFIRM'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4m\00E4nhetkisi\00E4 raporttiasetuksia k\00E4ytet\00E4\00E4n oletusasetuksina kaikille k\00E4ytt\00E4jille.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622575326109281241)
,p_name=>'APEXIR_SAVE_DEFAULT_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Tallenna oletusraportti'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622681022452281291)
,p_name=>'APEXIR_SAVE_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Tallenna raportti'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622462888643281186)
,p_name=>'APEXIR_SAVE_REPORT_DEFAULT'
,p_message_language=>'fi'
,p_message_text=>'Tallenna raportti *'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622538509309281223)
,p_name=>'APEXIR_SEARCH'
,p_message_language=>'fi'
,p_message_text=>'Haku'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622681606299281291)
,p_name=>'APEXIR_SEARCH_BAR'
,p_message_language=>'fi'
,p_message_text=>'Hakupalkki'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622538824875281223)
,p_name=>'APEXIR_SEARCH_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Haku: %0'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622716484433281308)
,p_name=>'APEXIR_SEARCH_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Hae raportista'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622614917134281260)
,p_name=>'APEXIR_SELECTED_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>'Valitut sarakkeet'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622575683761281241)
,p_name=>'APEXIR_SELECT_CATEGORY'
,p_message_language=>'fi'
,p_message_text=>'- Valitse kategoria -'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622463132899281186)
,p_name=>'APEXIR_SELECT_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'- Valitse sarake -'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622505783974281207)
,p_name=>'APEXIR_SELECT_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>'Valitse sarakkeet'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622614659013281259)
,p_name=>'APEXIR_SELECT_COLUMNS_FOOTER'
,p_message_language=>'fi'
,p_message_text=>'Laskennallisilla sarakkeilla on ** etuliite.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622716747194281308)
,p_name=>'APEXIR_SELECT_FUNCTION'
,p_message_language=>'fi'
,p_message_text=>'- Valitse funktio -'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622506010856281208)
,p_name=>'APEXIR_SELECT_GROUP_BY_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'- Valitse ryhmittelysarake -'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622681990156281291)
,p_name=>'APEXIR_SELECT_PIVOT_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'- Valitse pivot-sarake -'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622717014130281308)
,p_name=>'APEXIR_SELECT_ROW'
,p_message_language=>'fi'
,p_message_text=>'Valitse rivi'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622506374286281208)
,p_name=>'APEXIR_SELECT_ROW_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'- Valitse rivisarake -'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622649138254281276)
,p_name=>'APEXIR_SELECT_SORT_COLUMN'
,p_message_language=>'fi'
,p_message_text=>unistr('- Valitse j\00E4rjest\00E4missarake -')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622649459639281276)
,p_name=>'APEXIR_SELECT_VALUE'
,p_message_language=>'fi'
,p_message_text=>'Valitse arvo'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622649719409281277)
,p_name=>'APEXIR_SEND'
,p_message_language=>'fi'
,p_message_text=>unistr('L\00E4het\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622717373869281308)
,p_name=>'APEXIR_SEQUENCE'
,p_message_language=>'fi'
,p_message_text=>'Sekvenssi'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622575975022281241)
,p_name=>'APEXIR_SORT'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4rjest\00E4')
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622463433969281187)
,p_name=>'APEXIR_SORT_ASCENDING'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4rjest\00E4 nousevasti')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622650058826281277)
,p_name=>'APEXIR_SORT_COLUMN'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4rjest\00E4missarake')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622650328147281277)
,p_name=>'APEXIR_SORT_DESCENDING'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4rjest\00E4 laskevasti')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622682245713281291)
,p_name=>'APEXIR_SORT_ORDER'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4rjest\00E4misen suunta')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622576292037281241)
,p_name=>'APEXIR_SPACE_AS_IN_ONE_EMPTY_STRING'
,p_message_language=>'fi'
,p_message_text=>unistr('v\00E4lily\00F6nti')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622650607214281277)
,p_name=>'APEXIR_STATUS'
,p_message_language=>'fi'
,p_message_text=>'Tila'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622682564171281292)
,p_name=>'APEXIR_SUBSCRIPTION'
,p_message_language=>'fi'
,p_message_text=>'Tilaus'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622682850870281292)
,p_name=>'APEXIR_SUBSCRIPTION_ENDING'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4\00E4ttyminen')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622506622916281208)
,p_name=>'APEXIR_SUBSCRIPTION_STARTING_FROM'
,p_message_language=>'fi'
,p_message_text=>'Alkaminen'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622463707842281187)
,p_name=>'APEXIR_SUM_X'
,p_message_language=>'fi'
,p_message_text=>'Summa %0'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622539114468281223)
,p_name=>'APEXIR_TABLE_SUMMARY'
,p_message_language=>'fi'
,p_message_text=>unistr('Alue = %0, Raportti = %1, N\00E4kym\00E4 = %2, N\00E4ytett\00E4v\00E4t rivit alkavat = %3, N\00E4ytett\00E4v\00E4t rivit loppuvat = %4, Rivej\00E4 = %5')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622539470022281223)
,p_name=>'APEXIR_TEXT_COLOR'
,p_message_language=>'fi'
,p_message_text=>unistr('Tekstin v\00E4ri')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622506909601281208)
,p_name=>'APEXIR_TIME_DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('p\00E4iv\00E4\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622683189114281292)
,p_name=>'APEXIR_TIME_HOURS'
,p_message_language=>'fi'
,p_message_text=>'tunteja'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622507271315281208)
,p_name=>'APEXIR_TIME_MINS'
,p_message_language=>'fi'
,p_message_text=>'minuutteja'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622615237842281260)
,p_name=>'APEXIR_TIME_MONTHS'
,p_message_language=>'fi'
,p_message_text=>'kuukausia'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622576506058281241)
,p_name=>'APEXIR_TIME_WEEKS'
,p_message_language=>'fi'
,p_message_text=>'viikkoja'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622539795420281224)
,p_name=>'APEXIR_TIME_YEARS'
,p_message_language=>'fi'
,p_message_text=>'vuosia'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622683431261281292)
,p_name=>'APEXIR_TOGGLE'
,p_message_language=>'fi'
,p_message_text=>'Vaihda'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622650960212281277)
,p_name=>'APEXIR_TOP'
,p_message_language=>'fi'
,p_message_text=>unistr('Yl\00F6s')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622576875475281241)
,p_name=>'APEXIR_UNAUTHORIZED'
,p_message_language=>'fi'
,p_message_text=>'Luvaton'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622577116492281241)
,p_name=>'APEXIR_UNGROUPED_COLUMN'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhmitt\00E4m\00E4t\00F6n sarake')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622464012649281187)
,p_name=>'APEXIR_UNIQUE_COLUMN_HEADING'
,p_message_language=>'fi'
,p_message_text=>unistr('Sarakeotsake pit\00E4\00E4 olla uniikki.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622651240271281277)
,p_name=>'APEXIR_UNIQUE_HIGHLIGHT_NAME'
,p_message_language=>'fi'
,p_message_text=>unistr('Korostettu nimi pit\00E4\00E4 olla uniikki.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622615594316281260)
,p_name=>'APEXIR_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'fi'
,p_message_text=>'Tuntematon tietotyyppi'
);
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622683706728281292)
,p_name=>'APEXIR_UP'
,p_message_language=>'fi'
,p_message_text=>unistr('Yl\00F6s')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622464371222281187)
,p_name=>'APEXIR_VALID_COLOR'
,p_message_language=>'fi'
,p_message_text=>unistr('Anna kelvollinen v\00E4ri.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622615850398281260)
,p_name=>'APEXIR_VALID_FORMAT_MASK'
,p_message_language=>'fi'
,p_message_text=>'Anna kelvollinen muotoilumaski.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622507533428281208)
,p_name=>'APEXIR_VALUE'
,p_message_language=>'fi'
,p_message_text=>'Arvo'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622577466690281242)
,p_name=>'APEXIR_VALUE_AXIS_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Arvon akseliotsikko'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622717601168281309)
,p_name=>'APEXIR_VALUE_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>'Arvo vaadittu'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622507800615281208)
,p_name=>'APEXIR_VCOLUMN'
,p_message_language=>'fi'
,p_message_text=>'Pystysarake'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622651518095281277)
,p_name=>'APEXIR_VIEW_CHART'
,p_message_language=>'fi'
,p_message_text=>'Katso kaavio'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622540034168281224)
,p_name=>'APEXIR_VIEW_DETAIL'
,p_message_language=>'fi'
,p_message_text=>'Katso yksityiskohdat'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622577783415281242)
,p_name=>'APEXIR_VIEW_GROUP_BY'
,p_message_language=>'fi'
,p_message_text=>'Katso ryhmittely'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622717902949281309)
,p_name=>'APEXIR_VIEW_ICONS'
,p_message_language=>'fi'
,p_message_text=>'Katso ikonit'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622616164743281260)
,p_name=>'APEXIR_VIEW_PIVOT'
,p_message_language=>'fi'
,p_message_text=>'Katso pivot'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622684007318281292)
,p_name=>'APEXIR_VIEW_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Katso raportti'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622578065424281242)
,p_name=>'APEXIR_WEEK'
,p_message_language=>'fi'
,p_message_text=>'Viikko'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622684350827281292)
,p_name=>'APEXIR_WEEKLY'
,p_message_language=>'fi'
,p_message_text=>'Viikoittain'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622508108775281209)
,p_name=>'APEXIR_WORKING_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Toimiva raportti'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622508450040281209)
,p_name=>'APEXIR_X_DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 p\00E4iv\00E4\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622540373760281224)
,p_name=>'APEXIR_X_HOURS'
,p_message_language=>'fi'
,p_message_text=>'%0 tuntia'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622464691167281187)
,p_name=>'APEXIR_X_MINS'
,p_message_language=>'fi'
,p_message_text=>'%0 minuuttia'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622508716515281209)
,p_name=>'APEXIR_X_MONTHS'
,p_message_language=>'fi'
,p_message_text=>'%0 kuukautta'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622616434177281260)
,p_name=>'APEXIR_X_WEEKS'
,p_message_language=>'fi'
,p_message_text=>'%0 viikkoa'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622651819365281278)
,p_name=>'APEXIR_X_YEARS'
,p_message_language=>'fi'
,p_message_text=>'%0 vuotta'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622464929039281187)
,p_name=>'APEXIR_YEAR'
,p_message_language=>'fi'
,p_message_text=>'Vuosi'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622509082257281209)
,p_name=>'APEXIR_YELLOW'
,p_message_language=>'fi'
,p_message_text=>'keltainen'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622652103787281278)
,p_name=>'APEXIR_YES'
,p_message_language=>'fi'
,p_message_text=>unistr('Kyll\00E4')
);
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622566610501281237)
,p_name=>'CHART_SERIES_ERROR'
,p_message_language=>'fi'
,p_message_text=>'Kaavion sarjan virhe %0 %1:lle.'
);
null;
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622465293925281187)
,p_name=>'FLOW.SINGLE_VALIDATION_ERROR'
,p_message_language=>'fi'
,p_message_text=>'Tapahtunut 1 virhe'
,p_is_js_message=>true
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622540630595281224)
,p_name=>'FLOW.VALIDATION_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Tapahtunut %0 virhett\00E4 ')
,p_is_js_message=>true
);
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(36330646526147651801)
,p_name=>'IG_REPORT_ALIAS_363303660'
,p_message_language=>'fi'
,p_message_text=>'Osasto 20'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(36330646259503651801)
,p_name=>'IG_REPORT_ALIAS_363305751'
,p_message_language=>'fi'
,p_message_text=>'Matala palkka'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(36330646034371651800)
,p_name=>'IG_REPORT_ALIAS_363305923'
,p_message_language=>'fi'
,p_message_text=>'Analysointi ekspertit'
);
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622616785024281260)
,p_name=>'INVALID_CREDENTIALS'
,p_message_language=>'fi'
,p_message_text=>unistr('Ep\00E4kelvot kirjautumistiedot')
);
null;
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622652483214281278)
,p_name=>'IR_AS_DEFAULT_REPORT_SETTING'
,p_message_language=>'fi'
,p_message_text=>'Oletusraporttiasetuksina'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622652753912281278)
,p_name=>'IR_AS_NAMED_REPORT'
,p_message_language=>'fi'
,p_message_text=>unistr('Nimettyn\00E4 raporttina')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31627338894276605967)
,p_name=>'IR_REPORT_ALIAS_316269581'
,p_message_language=>'fi'
,p_message_text=>'Myyntitiimi'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31627339047219605968)
,p_name=>'IR_REPORT_ALIAS_316272420'
,p_message_language=>'fi'
,p_message_text=>'Suuri palkka'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(36017781332583672200)
,p_name=>'IR_REPORT_ALIAS_360177576'
,p_message_language=>'fi'
,p_message_text=>'Osasto 10'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622578335473281242)
,p_name=>'IR_STAR'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4ytet\00E4\00E4n vain kehitt\00E4jille')
);
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622528911456281218)
,p_name=>'LAYOUT.CHART'
,p_message_language=>'fi'
,p_message_text=>'Kaavio'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622696053313281298)
,p_name=>'LAYOUT.T_#EXPAND_COLLAPSE_NAV_LABEL#'
,p_message_language=>'fi'
,p_message_text=>unistr('Navigoinnin n\00E4yt\00E4/piilota nimike ')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622641078079281273)
,p_name=>'LAYOUT.T_#EXPAND_COLLAPSE_SIDE_COL_LABEL#'
,p_message_language=>'fi'
,p_message_text=>'Nimike sivusarakkeen laajentamiseen / supistamiseen'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622617094214281261)
,p_name=>'LAYOUT.T_CONDITION_EXPR2'
,p_message_language=>'fi'
,p_message_text=>'Lauseke 2'
);
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622653086944281278)
,p_name=>'MAXIMIZE'
,p_message_language=>'fi'
,p_message_text=>'Maksimoi'
,p_is_js_message=>true
);
null;
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622653307440281278)
,p_name=>'OUT_OF_RANGE'
,p_message_language=>'fi'
,p_message_text=>unistr('L\00E4hdedata on muuttunut, haluttuja rivej\00E4 ei voi hakea.')
);
null;
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622540945199281224)
,p_name=>'PAGINATION.NEXT'
,p_message_language=>'fi'
,p_message_text=>'Seuraava'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622653756260281278)
,p_name=>'PAGINATION.NEXT_SET'
,p_message_language=>'fi'
,p_message_text=>'Seuraava joukko'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622654085623281279)
,p_name=>'PAGINATION.PREVIOUS'
,p_message_language=>'fi'
,p_message_text=>'Edellinen'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622509369261281209)
,p_name=>'PAGINATION.PREVIOUS_SET'
,p_message_language=>'fi'
,p_message_text=>'Edellinen joukko'
);
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622744367410281321)
,p_name=>'REGION_NAME.NATIVE_JET_CHART'
,p_message_language=>'fi'
,p_message_text=>'Kaavio'
);
null;
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622465580575281187)
,p_name=>'REPORT'
,p_message_language=>'fi'
,p_message_text=>'Raportti'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622617335144281261)
,p_name=>'REPORTING_PERIOD'
,p_message_language=>'fi'
,p_message_text=>'Raportointijakso'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622465836346281188)
,p_name=>'REPORT_TOTAL'
,p_message_language=>'fi'
,p_message_text=>unistr('raportin kokonaism\00E4\00E4r\00E4/-summa')
);
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622718258530281309)
,p_name=>'RESET'
,p_message_language=>'fi'
,p_message_text=>'Nollaa sivutus'
);
null;
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622684677514281293)
,p_name=>'RESTORE'
,p_message_language=>'fi'
,p_message_text=>'Palauta'
);
null;
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622541250828281224)
,p_name=>'SAVED_REPORTS.PRIMARY.DEFAULT'
,p_message_language=>'fi'
,p_message_text=>'Varsinainen oletus'
);
null;
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622597848259281251)
,p_name=>'SHOW_ALL'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4 kaikki')
);
null;
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622466168397281188)
,p_name=>'SINCE_DAYS_AGO'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 p\00E4iv\00E4\00E4 sitten')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622718578764281309)
,p_name=>'SINCE_DAYS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 p\00E4iv\00E4n p\00E4\00E4st\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622654327527281279)
,p_name=>'SINCE_HOURS_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0 tuntia sitten'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622617637021281261)
,p_name=>'SINCE_HOURS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 tunnin p\00E4\00E4st\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622578669843281242)
,p_name=>'SINCE_MINUTES_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0 minuuttia sitten'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622718864482281309)
,p_name=>'SINCE_MINUTES_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 minuutin p\00E4\00E4st\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622654663853281279)
,p_name=>'SINCE_MONTHS_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0 kuukautta sitten'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622578927119281242)
,p_name=>'SINCE_MONTHS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 kuukauden p\00E4\00E4st\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622466424870281188)
,p_name=>'SINCE_NOW'
,p_message_language=>'fi'
,p_message_text=>'Nyt'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622541587876281224)
,p_name=>'SINCE_SECONDS_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0 sekuntia sitten'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622579298999281242)
,p_name=>'SINCE_SECONDS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 sekunnin p\00E4\00E4st\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622541800509281225)
,p_name=>'SINCE_WEEKS_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0 viikkoa sitten'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622654915745281279)
,p_name=>'SINCE_WEEKS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 viikon p\00E4\00E4st\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622509643131281209)
,p_name=>'SINCE_YEARS_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0 vuotta sitten'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622579568081281243)
,p_name=>'SINCE_YEARS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 vuoden p\00E4\00E4st\00E4')
);
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622617928402281261)
,p_name=>'TOTAL'
,p_message_language=>'fi'
,p_message_text=>unistr('Kokonaism\00E4\00E4r\00E4/-summa')
);
null;
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622564331699281236)
,p_name=>'UPGRADE_CANDLESTICK_CHART'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4ivityksen j\00E4lkeen varmista, ett\00E4 sarja-attribuutin nimikkeen\00E4 on pvm- / aikaleimasarake.')
);
null;
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622466741163281188)
,p_name=>'WELCOME_USER'
,p_message_language=>'fi'
,p_message_text=>'Tervetuloa: %0'
);
null;
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622635640593281270)
,p_name=>'WWV_FLOW_CREATE_MODEL_APP.CREATE_IG'
,p_message_language=>'fi'
,p_message_text=>'Interaktiivista grid-sivua ei voi luoda. %0'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622677717574281289)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE3'
,p_message_language=>'fi'
,p_message_text=>unistr('Voit personalisoida sovelluksen ulkoasua vaihtamalla teeman tyyli\00E4. Valitse teeman tyyli alla olevasta listasta ja ota muutokset k\00E4ytt\00F6\00F6n.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622485918838281197)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REGION_DISP'
,p_message_language=>'fi'
,p_message_text=>unistr('Aluen\00E4ytt\00F6')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622670252036281286)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REMOVE_STYLE'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4yt\00E4 sovelluksen oletustyyli\00E4')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622738941749281318)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_THEME_STYLE'
,p_message_language=>'fi'
,p_message_text=>'Ilmiasu'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622675387386281288)
,p_name=>'WWV_FLOW_DATA_EXPORT.AGG_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>'Koosteessa viitattua saraketta %0 ei ole.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622741913521281320)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_BREAK_MUST_BE_IN_THE_BEGGINING'
,p_message_language=>'fi'
,p_message_text=>unistr('Katkosarake pit\00E4\00E4 olla saraketaulukon alussa.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622633515609281269)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_GROUP_IDX_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>unistr('%0:ssa viitattua sarakeryhm\00E4indeksi\00E4 ei ole.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622495295184281202)
,p_name=>'WWV_FLOW_DATA_EXPORT.HIGHLIGHT_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>unistr('Korostuksessa viitattua sarakeindeksi\00E4 %0 ei ole.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622594586763281250)
,p_name=>'WWV_FLOW_DATA_EXPORT.PARENT_GROUP_IDX_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>unistr('%0:ssa viitattua is\00E4ryhm\00E4n indeksi\00E4 ei ole.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622542184992281225)
,p_name=>'WWV_FLOW_UTILITIES.CAL'
,p_message_language=>'fi'
,p_message_text=>'Kalenteri'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622467089604281188)
,p_name=>'WWV_FLOW_UTILITIES.CLOSE'
,p_message_language=>'fi'
,p_message_text=>'Sulje'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622684911666281293)
,p_name=>'WWV_FLOW_UTILITIES.OK'
,p_message_language=>'fi'
,p_message_text=>'Ok'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622518415587281213)
,p_name=>'WWV_FLOW_WEB_SERVICES.AUTHENTICATION_FAILED'
,p_message_language=>'fi'
,p_message_text=>unistr('Todennus ep\00E4onnistui.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622518744156281214)
,p_name=>'WWV_FLOW_WEB_SERVICES.NO_VALID_OAUTH_TOKEN'
,p_message_language=>'fi'
,p_message_text=>'OAuth valtuus ei saatavilla tai vanhentunut.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622485009948281197)
,p_name=>'WWV_FLOW_WEB_SERVICES.UNSUPPORTED_OAUTH_TOKEN'
,p_message_language=>'fi'
,p_message_text=>unistr('Palvelin vastasi ep\00E4yhteensopivalla OAuth-valtuustyypill\00E4.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622509901696281209)
,p_name=>'WWV_RENDER_REPORT3.FOUND_BUT_NOT_DISPLAYED'
,p_message_language=>'fi'
,p_message_text=>unistr('Haluttu minimirivim\00E4\00E4r\00E4: %0, rivej\00E4 l\00F6ydetty, mutta %1 ei n\00E4ytetty')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622685212322281293)
,p_name=>'WWV_RENDER_REPORT3.SORT_BY_THIS_COLUMN'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4rjest\00E4 t\00E4m\00E4n sarakkeen mukaan')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622618250723281261)
,p_name=>'WWV_RENDER_REPORT3.UNSAVED_DATA'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4ss\00E4 kaavakkeessa on tallentamattomia muutoksia. Paina OK jatkaaksesi tallentamatta muutoksiasi.')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622579867335281243)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z'
,p_message_language=>'fi'
,p_message_text=>unistr('rivi(t) %0 - %1 v\00E4hint\00E4\00E4n %2:sta')
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622719172252281309)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z'
,p_message_language=>'fi'
,p_message_text=>'rivi(t) %0 - %1 %2:sta'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31622655281065281279)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z_2'
,p_message_language=>'fi'
,p_message_text=>'%0 - %1 %2:sta'
);
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
wwv_flow_api.create_dynamic_translation(
 p_id=>wwv_flow_api.id(31624194353737716266)
,p_language=>'fi'
,p_from=>'PRESIDENT'
,p_to=>'PRESIDENTTI'
);
wwv_flow_api.create_dynamic_translation(
 p_id=>wwv_flow_api.id(31624219330530718276)
,p_language=>'fi'
,p_from=>'MANAGER'
,p_to=>'JOHTAJA'
);
wwv_flow_api.create_dynamic_translation(
 p_id=>wwv_flow_api.id(31624286222031722847)
,p_language=>'fi'
,p_from=>'ANALYST'
,p_to=>'ANALYYTIKKO'
);
wwv_flow_api.create_dynamic_translation(
 p_id=>wwv_flow_api.id(31624304033436725300)
,p_language=>'fi'
,p_from=>'CLERK'
,p_to=>'VIRKAILIJA'
);
wwv_flow_api.create_dynamic_translation(
 p_id=>wwv_flow_api.id(31624312640364729436)
,p_language=>'fi'
,p_from=>'SALESMAN'
,p_to=>'MYYNTIMIES'
);
end;
/
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(31621526551439255368)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/application_express_accounts
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(31621175958764255292)
,p_name=>'Application Express Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/security/authentications/no_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(31632219276945175579)
,p_name=>'No Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/security/authentications/no_password_custom
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(36327812147386458003)
,p_name=>'No Password (Custom)'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'no_password_login'
,p_attribute_05=>'N'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function no_password_login(',
'  p_username  in varchar2',
'  ,p_password in varchar2',
') return boolean',
'as',
'  l_result boolean;',
'begin',
'  l_result := false;',
'  if p_username is not null',
'  then ',
'    l_result := true;',
'  end if;',
'  return l_result;',
'end no_password_login;',
''))
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
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
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','FI.JARIS.TRANSLATE_IR_REPORT_SELECTOR'),'')
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
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(31621523569879255363)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(31621176766460255293)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(31621486797529255345)
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(31621523262079255363)
,p_nav_bar_list_template_id=>wwv_flow_api.id(31621486358579255345)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(31621523569879255363)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'JLAINE'
,p_last_upd_yyyymmddhh24miss=>'20210904064650'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(31621523569879255363)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Translate IR report selector plug-in demo'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IG{',
'  border: none;',
'}'))
,p_step_template=>wwv_flow_api.id(31621188367439255299)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select <strong>Finnish</strong> or <strong>English</strong> from the navigation bar.',
'Then the report names of the IR report selector are also translated according to the selected language.'))
,p_last_updated_by=>'demo'
,p_last_upd_yyyymmddhh24miss=>'20210925090946'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31245737182198934407)
,p_plug_name=>'Employees IR'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31621433872064255321)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select empno',
'  ,ename',
'  ,job',
'  ,mgr',
'  ,hiredate',
'  ,sal',
'  ,comm',
'  ,deptno',
'from fi_jaris_emp'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Employees IR'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31245737266946934408)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'JLAINE'
,p_internal_uid=>31245737266946934408
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31245737381921934409)
,p_db_column_name=>'EMPNO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employee Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31245737462968934410)
,p_db_column_name=>'ENAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31245737552805934411)
,p_db_column_name=>'JOB'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Job'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31245737680554934412)
,p_db_column_name=>'MGR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Manager'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31245737700123934413)
,p_db_column_name=>'HIREDATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Hired on'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31245737841020934414)
,p_db_column_name=>'SAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31245737957291934415)
,p_db_column_name=>'COMM'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Commission'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31245738068738934416)
,p_db_column_name=>'DEPTNO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Department'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31621572108049270180)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316215722'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31626958058470922571)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Sales Team'
,p_report_seq=>10
,p_report_alias=>'316269581'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(31628529341813680591)
,p_report_id=>wwv_flow_api.id(31626958058470922571)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'JOB'
,p_operator=>'='
,p_expr=>'MANAGER'
,p_condition_sql=>'"JOB" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''MANAGER''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31627241999303951857)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'High Salary'
,p_report_seq=>10
,p_report_alias=>'316272420'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(31627242431225951859)
,p_report_id=>wwv_flow_api.id(31627241999303951857)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'SAL'
,p_operator=>'>='
,p_expr=>'2500'
,p_condition_sql=>'"SAL" >= to_number(#APXWS_EXPR#)'
,p_condition_display=>'#APXWS_COL_NAME# >= #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(36017757522791667547)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Department 10'
,p_report_seq=>10
,p_report_alias=>'360177576'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(36017757914426667548)
,p_report_id=>wwv_flow_api.id(36017757522791667547)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'DEPTNO'
,p_operator=>'='
,p_expr=>'10'
,p_condition_sql=>'"DEPTNO" = to_number(#APXWS_EXPR#)'
,p_condition_display=>'#APXWS_COL_NAME# = #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31245738312375934419)
,p_plug_name=>'Help'
,p_icon_css_classes=>'fa-question-circle-o'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31621424023109255316)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_source_type=>'NATIVE_HELP_TEXT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36287591587382641526)
,p_plug_name=>'Employees IG'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31621433872064255321)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select empno',
'  ,ename',
'  ,job',
'  ,mgr',
'  ,hiredate',
'  ,sal',
'  ,comm',
'  ,deptno',
'from fi_jaris_emp'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Employees IG'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(36287592642969641537)
,p_name=>'EMPNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPNO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Employee Number'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(36287592704517641538)
,p_name=>'ENAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(36287592894054641539)
,p_name=>'JOB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Job'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>9
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(36287592995872641540)
,p_name=>'MGR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MGR'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Manager'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(36287593023101641541)
,p_name=>'HIREDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HIREDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Hired on'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(36287593166497641542)
,p_name=>'SAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Salary'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(36287593217315641543)
,p_name=>'COMM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMM'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Commission'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(36287593324741641544)
,p_name=>'DEPTNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPTNO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Department'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(36287592504678641536)
,p_internal_uid=>36287592504678641536
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(36329662949933543117)
,p_interactive_grid_id=>wwv_flow_api.id(36287592504678641536)
,p_static_id=>'363296630'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(36329663176706543117)
,p_report_id=>wwv_flow_api.id(36329662949933543117)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(36329663604802543119)
,p_view_id=>wwv_flow_api.id(36329663176706543117)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(36287592642969641537)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(36329664508442543121)
,p_view_id=>wwv_flow_api.id(36329663176706543117)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(36287592704517641538)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(36329665498451543123)
,p_view_id=>wwv_flow_api.id(36329663176706543117)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(36287592894054641539)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(36329666374881543125)
,p_view_id=>wwv_flow_api.id(36329663176706543117)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(36287592995872641540)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(36329667293794543127)
,p_view_id=>wwv_flow_api.id(36329663176706543117)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(36287593023101641541)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(36329668194056543130)
,p_view_id=>wwv_flow_api.id(36329663176706543117)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(36287593166497641542)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(36329669073805543131)
,p_view_id=>wwv_flow_api.id(36329663176706543117)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(36287593217315641543)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(36329669960014543133)
,p_view_id=>wwv_flow_api.id(36329663176706543117)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(36287593324741641544)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(72660026662378173800)
,p_interactive_grid_id=>wwv_flow_api.id(36287592504678641536)
,p_name=>'Department 20'
,p_static_id=>'363303660'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(72660026889151173800)
,p_report_id=>wwv_flow_api.id(72660026662378173800)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660027317247173802)
,p_view_id=>wwv_flow_api.id(72660026889151173800)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(36287592642969641537)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660028220887173804)
,p_view_id=>wwv_flow_api.id(72660026889151173800)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(36287592704517641538)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660029210896173806)
,p_view_id=>wwv_flow_api.id(72660026889151173800)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(36287592894054641539)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660030087326173808)
,p_view_id=>wwv_flow_api.id(72660026889151173800)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(36287592995872641540)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660031006239173810)
,p_view_id=>wwv_flow_api.id(72660026889151173800)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(36287593023101641541)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660031906501173813)
,p_view_id=>wwv_flow_api.id(72660026889151173800)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(36287593166497641542)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660032786250173814)
,p_view_id=>wwv_flow_api.id(72660026889151173800)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(36287593217315641543)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660033672459173816)
,p_view_id=>wwv_flow_api.id(72660026889151173800)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(36287593324741641544)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_filter(
 p_id=>wwv_flow_api.id(36330364102950630688)
,p_report_id=>wwv_flow_api.id(72660026662378173800)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_api.id(36287593324741641544)
,p_operator=>'EQ'
,p_is_case_sensitive=>false
,p_expression=>'20'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(72660035754703181156)
,p_interactive_grid_id=>wwv_flow_api.id(36287592504678641536)
,p_name=>'Low Salary'
,p_static_id=>'363305751'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(72660035981476181156)
,p_report_id=>wwv_flow_api.id(72660035754703181156)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660036409572181158)
,p_view_id=>wwv_flow_api.id(72660035981476181156)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(36287592642969641537)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660037313212181160)
,p_view_id=>wwv_flow_api.id(72660035981476181156)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(36287592704517641538)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660038303221181162)
,p_view_id=>wwv_flow_api.id(72660035981476181156)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(36287592894054641539)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660039179651181164)
,p_view_id=>wwv_flow_api.id(72660035981476181156)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(36287592995872641540)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660040098564181166)
,p_view_id=>wwv_flow_api.id(72660035981476181156)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(36287593023101641541)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660040998826181169)
,p_view_id=>wwv_flow_api.id(72660035981476181156)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(36287593166497641542)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660041878575181170)
,p_view_id=>wwv_flow_api.id(72660035981476181156)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(36287593217315641543)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660042764784181172)
,p_view_id=>wwv_flow_api.id(72660035981476181156)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(36287593324741641544)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_filter(
 p_id=>wwv_flow_api.id(36330373229701638042)
,p_report_id=>wwv_flow_api.id(72660035754703181156)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_api.id(36287593166497641542)
,p_operator=>'LT'
,p_is_case_sensitive=>false
,p_expression=>'2000'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(72660052907841184813)
,p_interactive_grid_id=>wwv_flow_api.id(36287592504678641536)
,p_name=>'Analyzing Experts'
,p_static_id=>'363305923'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(72660053134614184813)
,p_report_id=>wwv_flow_api.id(72660052907841184813)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660053562710184815)
,p_view_id=>wwv_flow_api.id(72660053134614184813)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(36287592642969641537)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660054466350184817)
,p_view_id=>wwv_flow_api.id(72660053134614184813)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(36287592704517641538)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660055456359184819)
,p_view_id=>wwv_flow_api.id(72660053134614184813)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(36287592894054641539)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660056332789184821)
,p_view_id=>wwv_flow_api.id(72660053134614184813)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(36287592995872641540)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660057251702184823)
,p_view_id=>wwv_flow_api.id(72660053134614184813)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(36287593023101641541)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660058151964184826)
,p_view_id=>wwv_flow_api.id(72660053134614184813)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(36287593166497641542)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660059031713184827)
,p_view_id=>wwv_flow_api.id(72660053134614184813)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(36287593217315641543)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72660059917922184829)
,p_view_id=>wwv_flow_api.id(72660053134614184813)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(36287593324741641544)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_filter(
 p_id=>wwv_flow_api.id(36330390319253641697)
,p_report_id=>wwv_flow_api.id(72660052907841184813)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_api.id(36287592894054641539)
,p_operator=>'EQ'
,p_is_case_sensitive=>true
,p_expression=>'ANALYST'
,p_is_enabled=>true
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31245738173809934417)
,p_name=>'Process IR'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(31245737182198934407)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31245738266486934418)
,p_event_id=>wwv_flow_api.id(31245738173809934417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_FI.JARIS.TRANSLATE_IR_REPORT_SELECTOR'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(36351876287609676713)
,p_name=>'Initialize IG'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(36351876301086676714)
,p_event_id=>wwv_flow_api.id(36351876287609676713)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_FI.JARIS.TRANSLATE_IR_REPORT_SELECTOR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(36287591587382641526)
,p_wait_for_result=>'Y'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(31621523569879255363)
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'&APP_NAME. - Sign In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(31621182912905255296)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'JLAINE'
,p_last_upd_yyyymmddhh24miss=>'20210924194200'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31621527644074255371)
,p_plug_name=>'&APP_NAME.'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31621432506200255320)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31621532307716255375)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_api.id(31621527644074255371)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31621402810378255307)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_translate_title=>'N'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31621530421352255373)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(31621527644074255371)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31621499050881255352)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31621528083576255371)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31621527644074255371)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(31621496284501255350)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_inline_help_text=>'Log In not require password. Enter your name to Log In.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31621528470837255372)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31621527644074255371)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(31621496284501255350)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_api.id(36328169101159469886)
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31621529561260255373)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31621527644074255371)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(31621528739140255372)||'.'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(31621496284501255350)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31621531279613255374)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31621530876266255374)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'  p_username => :P9999_USERNAME',
'  ,p_password => :P9999_PASSWORD',
'  ,p_uppercase_username => false',
');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31621532073013255375)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31621531676729255374)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(36325329511544417088)
,p_deinstall_script_clob=>'drop table fi_jaris_emp;'
);
end;
/
prompt --application/deployment/install/install_table_and_data
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(36326181247804380616)
,p_install_id=>wwv_flow_api.id(36325329511544417088)
,p_name=>'Table and data'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from user_tables',
'where 1 = 1',
'and table_name = ''FI_JARIS_EMP'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table fi_jaris_emp(',
'  empno    number(4,0),',
'  ename    varchar2(10),',
'  job      varchar2(9),',
'  mgr      number(4,0),',
'  hiredate date,',
'  sal      number(7,2),',
'  comm     number(7,2),',
'  deptno   number(2,0),',
'  constraint pk_fi_jaris_emp primary key (empno)',
');',
'',
'insert into fi_jaris_emp',
'values(',
' 7839, ''KING'', ''PRESIDENT'', null,',
' to_date(''17-11-1981'',''dd-mm-yyyy''),',
' 5000, null, 10',
');',
'',
'insert into fi_jaris_emp',
'values(',
' 7698, ''BLAKE'', ''MANAGER'', 7839,',
' to_date(''1-5-1981'',''dd-mm-yyyy''),',
' 2850, null, 30',
');',
'',
'insert into fi_jaris_emp',
'values(',
' 7782, ''CLARK'', ''MANAGER'', 7839,',
' to_date(''9-6-1981'',''dd-mm-yyyy''),',
' 2450, null, 10',
');',
'',
'insert into fi_jaris_emp',
'values(',
' 7566, ''JONES'', ''MANAGER'', 7839,',
' to_date(''2-4-1981'',''dd-mm-yyyy''),',
' 2975, null, 20',
');',
'',
'insert into fi_jaris_emp',
'values(',
' 7788, ''SCOTT'', ''ANALYST'', 7566,',
' to_date(''13-JUL-87'',''dd-mm-rr'') - 85,',
' 3000, null, 20',
');',
'',
'insert into fi_jaris_emp',
'values(',
' 7902, ''FORD'', ''ANALYST'', 7566,',
' to_date(''3-12-1981'',''dd-mm-yyyy''),',
' 3000, null, 20',
');',
'',
'insert into fi_jaris_emp',
'values(',
' 7369, ''SMITH'', ''CLERK'', 7902,',
' to_date(''17-12-1980'',''dd-mm-yyyy''),',
' 800, null, 20',
');',
'',
'insert into fi_jaris_emp',
'values(',
' 7499, ''ALLEN'', ''SALESMAN'', 7698,',
' to_date(''20-2-1981'',''dd-mm-yyyy''),',
' 1600, 300, 30',
');',
'',
'insert into fi_jaris_emp',
'values(',
' 7521, ''WARD'', ''SALESMAN'', 7698,',
' to_date(''22-2-1981'',''dd-mm-yyyy''),',
' 1250, 500, 30',
');',
'',
'insert into fi_jaris_emp',
'values(',
' 7654, ''MARTIN'', ''SALESMAN'', 7698,',
' to_date(''28-9-1981'',''dd-mm-yyyy''),',
' 1250, 1400, 30',
');',
'',
'insert into fi_jaris_emp',
'values(',
' 7844, ''TURNER'', ''SALESMAN'', 7698,',
' to_date(''8-9-1981'',''dd-mm-yyyy''),',
' 1500, 0, 30',
');',
'',
'insert into fi_jaris_emp',
'values(',
' 7876, ''ADAMS'', ''CLERK'', 7788,  ',
' to_date(''13-JUL-87'', ''dd-mm-rr'') - 51,',
' 1100, null, 20',
');',
'',
'insert into fi_jaris_emp',
'values(',
' 7900, ''JAMES'', ''CLERK'', 7698,',
' to_date(''3-12-1981'',''dd-mm-yyyy''),',
' 950, null, 30',
');',
'',
'insert into fi_jaris_emp',
'values(',
' 7934, ''MILLER'', ''CLERK'', 7782,',
' to_date(''23-1-1982'',''dd-mm-yyyy''),',
' 1300, null, 10',
');',
''))
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
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
