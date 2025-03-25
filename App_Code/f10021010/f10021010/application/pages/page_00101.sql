prompt --application/pages/page_00101
begin
--   Manifest
--     PAGE: 00101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>759714394172364641
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_page.create_page(
 p_id=>101
,p_name=>'Login'
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>'Login'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<noscript>',
'	<h3>JavaScript is disabled! Why you want to do so? ',
'	Please enable JavaScript in your web browser!</h3>',
'</noscript>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(function(){',
'    ',
'   ',
'    var client_browser_info = navigator.userAgent; // navigator.appVersion;',
'    //Get login userinfo',
'    ',
'    ',
'    ',
'    $(''#P101_CLIANT_INFO'').val(client_browser_info);',
'    ',
'});'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//$("#P101_X_DISPLAY").hide();',
'//$("#P101_X_LABEL").hide();',
'//$x_Remove(''uNotificationMessage'');'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#P101_ATTEMP_MESSAGE{',
'    font-weight: bold !important;',
'    color: red !important;',
'}',
'',
'',
'div#uLoginContainer section.uRegion div.uRegionContent table.formlayout td input {',
'   // width: 300px !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(11045177065054407876)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'LOGIN',
'LOGIN_DESKTOP'))
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11045188369376407920)
,p_plug_name=>'Login'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181058343407888)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10542333561633689037)
,p_plug_name=>'error message'
,p_parent_plug_id=>wwv_flow_imp.id(11045188369376407920)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_plug_header=>'<b>'
,p_plug_footer=>'</b>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11060201561311857055)
,p_plug_name=>'LOGO'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width: 480px;"  class="login_logo"'
,p_plug_template=>wwv_flow_imp.id(11045181058343407888)
,p_plug_display_sequence=>5
,p_plug_display_point=>'BODY_3'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align: center;font-size: x-large;color: #336699;">',
'    <img src="#APP_IMAGES#octalsoft.jpg" style="width: 93px;">',
'    <div id="mytext" style="padding-top: 15px; font-size: 27px;">ICR/21/010</div>',
'</div>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align: center;font-size: x-large;color: #336699;height:90px;">',
'    <img src="#APP_IMAGES#octalsoft.jpg" style="width:120px;float:left;margin-top: 20px;margin-left: 15px;">',
'    <img src="#APP_IMAGES#cliantha_logo.png" style="width: 150px;float:right;margin-right: 0px;margin-top:20px;">',
'    <div id="mytext" style="padding-top: 37px; font-size: 31px;">IWRS</div>',
'</div>    ',
'    ',
'    <div style="text-align: center;font-size: x-large;color: #336699;height:90px;"><img src="#APP_IMAGES#octalsoft.jpg" style="width: 93px;float:left;margin-top: 20px;margin-left: 15px;"><!--<img src="#APP_IMAGES#vibgyor.png" style="width: 94px;float'
||':right;margin-right: 0px;margin-top: 9px;">--><div id="mytext" style="padding-top: 37px; font-size: 27px;"',
'    >Bilcare IWRS</div></div>'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11060202169884878491)
,p_plug_name=>'Octalsoft EDC - Footer'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181162237407888)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div align="center">',
'<span style="font-family:Arial; color:#004C66; font-size:12px; white-space:nowrap; font-weight:bold;"><a href="http://www.octalsoft.com">Octalsoft EDC</a> </span>',
'</div>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11045188681511407922)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11045188369376407920)
,p_button_name=>'P101_LOGIN'
,p_button_static_id=>'P101_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Login'
,p_button_alignment=>'LEFT'
,p_request_source=>'LOGIN'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Post -Element ',
'&nbsp;&nbsp;&nbsp;',
'<A href="f?p=&APP_ID.:47:&SESSION.::&DEBUG.:RP,47" ><FONT',
'color=mediumblue>Forgot Password?</FONT> </a>'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10542161895992647974)
,p_name=>'P101_ATTEMP_MESSAGE'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_imp.id(10542333561633689037)
,p_use_cache_before_default=>'NO'
,p_item_default=>':LOGIN_MESSAGE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cattributes_element=>'style="font-weight:bold;color:red;"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10543104264230391447)
,p_name=>'P101_TEMP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11045188369376407920)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10572558922712032070)
,p_name=>'P101_CLIANT_INFO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11045188369376407920)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045188472590407921)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11045188369376407920)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>45
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045188582583407922)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11045188369376407920)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>45
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045193077224546007)
,p_name=>'P101_PASS_CHANGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11045188369376407920)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045193259755554180)
,p_name=>'P101_FP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11045188369376407920)
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<A href="f?p=&APP_ID.:47:&SESSION.::&DEBUG.:RP,47" style = "margin-left:60px"><FONT',
'color="#3868a6";> Forgot Password? </FONT> </a>'))
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10542119332597986850)
,p_validation_name=>'P101_USERNAME - Check Locked'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	V_DATE_TIME DATE;',
'	V_CNT 		NUMBER;',
'	V_STATUS 	NUMBER;',
'	V_DATE2 	DATE;',
'BEGIN',
'',
'------- UNDO RESET ATTEMPS --------',
'declare',
'V_DATE_TIME date;',
'V_CNT NUMBER;',
'V_STATUS NUMBER;',
'V_DATE2 DATE;',
'begin',
'SELECT status into V_STATUS from edc_study_contact where lower(username) = lower(:P101_USERNAME);',
'if V_STATUS = 3 then',
'select D_T_WITH_TIME_ZONE into V_DATE_TIME from LOGIN_ATTEMPTS where ID = (select max(id) from LOGIN_ATTEMPTS where flag is null and lower(username)=lower(:P101_USERNAME) and login_status <> ''Login Successful'');',
'V_DATE_TIME:=V_DATE_TIME+5/1440;',
'IF CURRENT_TIMESTAMP >= V_DATE_TIME THEN',
'update edc_study_contact set status = 1 where lower(username) = lower(:P101_USERNAME);',
'commit;',
'END IF;',
'end if;',
'exception when others then null;',
'end;',
'---------------------------------',
'',
'	SELECT status',
'	  into V_STATUS',
'	  from edc_study_contact',
'	 where lower(username) = lower(:P101_USERNAME);',
'',
'	if V_STATUS = 3 then',
'		select D_T_WITH_TIME_ZONE',
'		  into V_DATE_TIME',
'		  from LOGIN_ATTEMPTS',
'		 where ID = (select max(id)',
'					   from LOGIN_ATTEMPTS',
'					  where flag is null',
'					    and lower(username) = lower(:P101_USERNAME)',
'						and login_status <> ''Login Successful''',
'					);',
'',
'		V_DATE_TIME := V_DATE_TIME + 5/1440;',
'',
'		IF CURRENT_TIMESTAMP <= V_DATE_TIME THEN',
'			RETURN FALSE;',
'		END IF;',
'	end if;',
'',
'	RETURN TRUE;',
'',
'	EXCEPTION WHEN OTHERS THEN',
'		RETURN TRUE;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Your Account has been Locked, Please try again after few minutes.'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(11045188472590407921)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10542994501567082141)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UNDO RESET ATTEMPS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'V_DATE_TIME date;',
'V_CNT NUMBER;',
'V_STATUS NUMBER;',
'V_DATE2 DATE;',
'begin',
'',
'SELECT status into V_STATUS from edc_study_contact where lower(username) = lower(:P101_USERNAME);',
'if V_STATUS = 3 then',
'select D_T_WITH_TIME_ZONE into V_DATE_TIME from LOGIN_ATTEMPTS where ID = (select max(id) from LOGIN_ATTEMPTS where flag is null and lower(username)=lower(:P101_USERNAME) and login_status <> ''Login Successful'');',
'V_DATE_TIME:=V_DATE_TIME+5/1440;',
'IF CURRENT_TIMESTAMP >= V_DATE_TIME THEN',
'update edc_study_contact set status = 1 where lower(username) = lower(:P101_USERNAME);',
'update login_attempts set flag = 1 where flag is null and login_status <> ''Login Successful'' and upper(username) = upper(:P101_USERNAME);',
'commit;',
'END IF;',
'end if;',
'exception when others then null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10542994501567082141
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10572558838329032069)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login Attempts'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_SQL_ERRM VARCHAR2(4000);',
'  V_ROW      NUMBER;',
'  V_SC_ID          NUMBER;',
'  V_MSG            CLOB;',
'  V_OTP_ID         NUMBER;',
'  V_PWD            VARCHAR2(100);',
'  V_CREATED_ON     DATE;',
'  V_CREATED_ON_15M DATE;',
'  V_CURRENT_TIME   DATE := LOCALTIMESTAMP;',
'BEGIN',
'  BEGIN',
'    SELECT STUDY_CONTACT_ID',
'      INTO V_SC_ID',
'      FROM EDC_STUDY_CONTACT',
'     WHERE UPPER(USERNAME) = UPPER(:P101_USERNAME)',
'       AND STATUS = 3;',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      V_SC_ID := NULL;',
'  END;',
'',
'  IF V_SC_ID IS NOT NULL THEN',
'',
'    V_OTP_ID := EDC_AUTH_PKG.GET_MAX_OTP(V_SC_ID);',
'    V_MSG := ''LOGIN_FAILD - Account Locked.'';',
'',
'    SELECT PASSWORD, CREATED_ON, CAST(CREATED_ON + 1/24/4 AS TIMESTAMP) CREATED_ON_15M',
'      INTO V_PWD, V_CREATED_ON, V_CREATED_ON_15M',
'      FROM EDC_OTP',
'     WHERE OTP_ID = V_OTP_ID',
'       AND FLAG IS NULL;',
'',
'    IF V_CURRENT_TIME < V_CREATED_ON_15M THEN',
'      IF V_PWD = MD5_HASH(:P101_PASSWORD) THEN',
'        V_MSG := ''Login Successful - Using OTP.'';',
'      ELSE',
'        V_MSG := ''LOGIN_FAILD - Incorrect OTP entered.'';',
'      END IF;',
'    ELSE',
'      V_MSG := ''LOGIN_FAILD - OTP is expired.'';',
'    END IF;',
'',
'    INSERT INTO LOGIN_ATTEMPTS ',
'    (',
'      USERNAME,',
'      MAC_ADDRESS,',
'      CLIENT_INFO,',
'      LOGIN_STATUS,',
'      ERROR_MSG_DURING_LOGIN',
'    )',
'    VALUES',
'    (',
'      :P101_USERNAME,',
'      NULL,',
'      :P101_CLIANT_INFO,',
'      V_MSG,',
'      V_SQL_ERRM',
'    );',
'  ELSE',
'    V_MSG := ''LOGIN_FAILD - Exception Part.'';',
'',
'     --Check login',
'     SELECT 1',
'       INTO V_ROW',
'       FROM EDC_STUDY_CONTACT',
'      WHERE UPPER(USERNAME) = UPPER(:P101_USERNAME)',
'        AND PASSWORD        = MD5_HASH(:P101_PASSWORD)',
'        AND STATUS IN (1,2);',
'',
'    IF V_ROW = 1 THEN',
'        -- Insert login attempts',
'        INSERT INTO LOGIN_ATTEMPTS ',
'        (',
'          USERNAME,',
'          MAC_ADDRESS,',
'          CLIENT_INFO,',
'          LOGIN_STATUS,',
'          ERROR_MSG_DURING_LOGIN',
'        )',
'        VALUES',
'        (',
'          :P101_USERNAME,',
'          NULL,',
'          :P101_CLIANT_INFO,',
'          ''Login Successful'',',
'          V_SQL_ERRM',
'        );',
'    ELSE',
'        -- Insert login attempts',
'        INSERT INTO LOGIN_ATTEMPTS ',
'        (',
'          ID,',
'          USERNAME,',
'          MAC_ADDRESS,',
'          CLIENT_INFO,',
'          LOGIN_STATUS,',
'          ERROR_MSG_DURING_LOGIN',
'        )',
'        VALUES',
'        (',
'          LOGIN_ATTEMPTS_SEQ.NEXTVAL,',
'          :P101_USERNAME,',
'          NULL,',
'          :P101_CLIANT_INFO,',
'          ''LOGIN_FAILD''||''- False Part'',',
'          V_SQL_ERRM',
'        );',
'    END IF;',
'  END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       V_SQL_ERRM := SUBSTR(SQLERRM, 1, 4000);',
'',
'       -- Insert login attempts',
'        INSERT INTO LOGIN_ATTEMPTS ',
'        (',
'          USERNAME,',
'          MAC_ADDRESS,',
'          CLIENT_INFO,',
'          LOGIN_STATUS,',
'          ERROR_MSG_DURING_LOGIN',
'        )',
'        VALUES',
'        (',
'          :P101_USERNAME,',
'          NULL,',
'          :P101_CLIANT_INFO,',
'          V_MSG,',
'          V_SQL_ERRM',
'        );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10572558838329032069
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11045188860959407923)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':APP_USER_NAME := :P101_USERNAME;',
'owa_util.mime_header(''text/html'', FALSE);',
'owa_cookie.send(',
'    name=>''LOGIN_USERNAME_COOKIE'',',
'    value=>lower(:P101_USERNAME));',
'exception when others then null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11045188860959407923
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );',
'----------------------------------------------------------------',
'begin',
':APP_USER_NAME := :P101_USERNAME;',
'owa_util.mime_header(''text/html'', FALSE);',
'owa_cookie.send(',
'    name=>''LOGIN_USERNAME_COOKIE'',',
'    value=>lower(:P101_USERNAME));',
'exception when others then null;',
'end;',
'----------------------------------------------------------------------'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11045188784406407923)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_USER_NAME VARCHAR2(100) := :P101_USERNAME;',
'  V_CONTACT_ID NUMBER;',
'  V_USER_TYPE NUMBER;',
'  V_USER_EMAIL VARCHAR2(100);',
'  V_USER_ROLE NUMBER;',
'  V_HOST VARCHAR2(100);',
'  V_IP_ADDRESS VARCHAR2(100);',
'  V_OS_USER VARCHAR2(100);',
'  V_LOGON_DATE TIMESTAMP := SYSTIMESTAMP; ',
'  V_FIRSTNAME VARCHAR2(100);',
'  V_LASTNAME VARCHAR2(100);',
'BEGIN',
'',
'wwv_flow_custom_auth_std.login(',
'    P_UNAME       => :P101_USERNAME,',
'    P_PASSWORD    => :P101_PASSWORD,',
'    P_SESSION_ID  => v(''APP_SESSION''),',
'    P_FLOW_PAGE => :APP_ID||'':''||SUN_21010_DEV.EDC_AUTH_PKG.GET_HOME_PAGE(:P101_USERNAME)',
'    );',
'',
'/*  SELECT SYS_CONTEXT(''USERENV'',''HOST'') INTO V_HOST FROM DUAL;',
'  SELECT SYS_CONTEXT(''USERENV'',''IP_ADDRESS'') INTO V_IP_ADDRESS FROM DUAL;',
'  SELECT SYS_CONTEXT(''USERENV'',''OS_USER'') INTO V_OS_USER FROM DUAL;',
'  SELECT CONTACT_ID, TYPE,CONTACT_ROLE INTO V_CONTACT_ID,V_USER_TYPE,V_USER_ROLE FROM EDC_STUDY_CONTACT ',
'    WHERE TRIM(UPPER(USERNAME)) = TRIM(UPPER(V_USER_NAME));',
'  SELECT EMAIL,FIRSTNAME,LASTNAME INTO V_USER_EMAIL,V_FIRSTNAME,V_LASTNAME FROM EDC_USERS WHERE USER_ID = V_CONTACT_ID;',
'  INSERT INTO USER_LOGON_DETAILS VALUES((SELECT NVL(MAX(USER_LOGON_ID),0)+1 FROM USER_LOGON_DETAILS),',
'  V_USER_NAME,V_USER_TYPE,V_USER_ROLE,V_USER_EMAIL,V_HOST,V_IP_ADDRESS,V_OS_USER,V_LOGON_DATE);*/',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11045188784406407923
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_USER_NAME VARCHAR2(100) := :P101_USERNAME;',
'  V_CONTACT_ID NUMBER;',
'  V_USER_TYPE NUMBER;',
'  V_USER_EMAIL VARCHAR2(100);',
'  V_USER_ROLE NUMBER;',
'  V_HOST VARCHAR2(100);',
'  V_IP_ADDRESS VARCHAR2(100);',
'  V_OS_USER VARCHAR2(100);',
'  V_LOGON_DATE TIMESTAMP := SYSTIMESTAMP; ',
'  V_FIRSTNAME VARCHAR2(100);',
'  V_LASTNAME VARCHAR2(100);',
'BEGIN',
'',
'wwv_flow_custom_auth_std.login(',
'    P_UNAME       => :P101_USERNAME,',
'    P_PASSWORD    => :P101_PASSWORD,',
'    P_SESSION_ID  => v(''APP_SESSION''),',
'    P_FLOW_PAGE => :APP_ID||'':''||EDC_AUTH_PKG.GET_HOME_PAGE(:P101_USERNAME)',
'    );',
'',
'/*  SELECT SYS_CONTEXT(''USERENV'',''HOST'') INTO V_HOST FROM DUAL;',
'  SELECT SYS_CONTEXT(''USERENV'',''IP_ADDRESS'') INTO V_IP_ADDRESS FROM DUAL;',
'  SELECT SYS_CONTEXT(''USERENV'',''OS_USER'') INTO V_OS_USER FROM DUAL;',
'  SELECT CONTACT_ID, TYPE,CONTACT_ROLE INTO V_CONTACT_ID,V_USER_TYPE,V_USER_ROLE FROM EDC_STUDY_CONTACT ',
'    WHERE TRIM(UPPER(USERNAME)) = TRIM(UPPER(V_USER_NAME));',
'  SELECT EMAIL,FIRSTNAME,LASTNAME INTO V_USER_EMAIL,V_FIRSTNAME,V_LASTNAME FROM EDC_USERS WHERE USER_ID = V_CONTACT_ID;',
'  INSERT INTO USER_LOGON_DETAILS VALUES((SELECT NVL(MAX(USER_LOGON_ID),0)+1 FROM USER_LOGON_DETAILS),',
'  V_USER_NAME,V_USER_TYPE,V_USER_ROLE,V_USER_EMAIL,V_HOST,V_IP_ADDRESS,V_OS_USER,V_LOGON_DATE);*/',
'',
'END;',
'-----------------------------------------------',
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );',
'-------------------------------------------------'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10542889764334115391)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Lock username after 3 failed attempts'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'V_CNT number;',
'begin',
'',
'select count(*) into V_CNT from (',
'select * from ',
'(select login_status from LOGIN_ATTEMPTS where lower(username) = lower(:P101_USERNAME) order by D_T_WITH_TIME_ZONE desc )',
'where rownum<4 )',
'where login_Status like ''%LOGIN_FAIL%'';',
'',
'if V_CNT = 3 then',
'update edc_study_contact set status = 3 where STATUS != 0 AND STUDY_CONTACT_ID = (SELECT STUDY_CONTACT_ID FROM edc_study_contact WHERE lower(username) = lower(:P101_USERNAME));',
'commit;',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10542889764334115391
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11045189072587407923)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_internal_uid=>11045189072587407923
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11045188981874407923)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>11045188981874407923
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11045193987845565923)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Show Confirmation Message'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P101_PASS_CHANGE = 67 then ',
'APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''<span style="color:green">Your Password has been changed </span>'';',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11045193987845565923
);
wwv_flow_imp.component_end;
end;
/
