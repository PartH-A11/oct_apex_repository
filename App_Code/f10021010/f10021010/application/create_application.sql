prompt --application/create_application
begin
--   Manifest
--     FLOW: 10021010
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>759714394172364641
,p_default_owner=>'SUN_21010_DEV'
);
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'SUN_21010_DEV')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'SUN_21010_DEV')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'SUN_21010_DEV')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20250325095927'
,p_bookmark_checksum_function=>'MD5'
,p_accept_old_checksums=>false
,p_max_session_length_sec=>21600
,p_on_max_session_timeout_url=>'f?p=&APP_ID.:101:&SESSION.'
,p_max_session_idle_sec=>3600
,p_on_max_idle_timeout_url=>'f?p=&APP_ID.:101:&SESSION.'
,p_compatibility_mode=>'4.2'
,p_accessible_read_only=>'N'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'DD-MON-YYYY'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(11045188086010407917)
,p_populate_roles=>'A'
,p_application_tab_set=>0
,p_logo_type=>'C'
,p_logo=>'<span style="font-family:Arial; color:#303030; font-size:22px; white-space:nowrap; font-weight:bold;"><img src="#APP_IMAGES#octalsoft_trans.gif"  style="width: 105px; margin-top: -15px;"><span style="font-family:arial ;color:#303030; font-size:17px; '
||'white-space:nowrap; color: #FFFFFF;vertical-align: top;"> IWRS (Study Number : ICR/21/010 )</span></span>'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'&APP_IP_ADDRESS., System Version # 3.0.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_referrer_policy=>'strict-origin-when-cross-origin'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:O:W'
,p_pass_ecid=>'N'
,p_security_scheme=>wwv_flow_imp.id(11045207488966824379)
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'Y'
,p_default_error_display_loc=>'INLINE_WITH_FIELD'
,p_tokenize_row_search=>'N'
,p_friendly_url=>'N'
,p_substitution_string_01=>'EDC_IMAGE_PATH'
,p_substitution_value_01=>'https://ins4.octalsoft.com/edc/'
,p_substitution_string_02=>'INCOMPLETE'
,p_substitution_value_02=>'burlywood'
,p_substitution_string_03=>'COMPLETE'
,p_substitution_value_03=>'lightblue'
,p_substitution_string_04=>'MONITORED'
,p_substitution_value_04=>'greenyellow'
,p_substitution_string_05=>'REVIEWED'
,p_substitution_value_05=>'gold'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>30
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'N'
);
wwv_flow_imp.component_end;
end;
/
