prompt --application/shared_components/logic/application_processes/app_edc_current_user_details
begin
--   Manifest
--     APPLICATION PROCESS: APP_EDC_CURRENT_USER_DETAILS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>1100950768141504093
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(12146930827298525956)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'APP_EDC_CURRENT_USER_DETAILS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT STUDY_CONTACT_ID, NVL(CONTACT_ROLE,0), TYPE, CONTACT_ID, COUNTRY_ID',
'    INTO :APP_EDC_USER_ID, :APP_EDC_ROLE_ID, :APP_EDC_USER_TYPE, :APP_EDC_USER, :APP_EDC_COUNTRY_ID',
'    FROM EDC_STUDY_CONTACT',
'   WHERE UPPER(USERNAME) = UPPER(:APP_USER_NAME);',
'',
'-- and study_id=:APP_EDC_STUDY_ID;',
'  IF :APP_EDC_USER_TYPE = 1 AND :APP_EDC_ROLE_ID NOT IN (13,46,51) AND :APP_EDC_STUDY_ID IS NOT NULL THEN',
'    SELECT E.CONTACT_ROLE',
'      INTO :APP_EDC_ROLE_ID',
'      FROM EDC_STUDY_CONTACT E',
'     WHERE E.STUDY_ID = :APP_EDC_STUDY_ID',
'       AND UPPER(E.USERNAME) = UPPER(:APP_USER); ',
'',
'    /*select c.contact_role ',
'    into :APP_EDC_ROLE_ID',
'    from edc_study_contact e,cro_study_contact c',
'    where e.contact_id = c.contact_id',
'    and c.study_id = :APP_EDC_STUDY_ID',
'    and upper(e.username) = upper(:APP_USER);*/',
'  ELSIF :APP_EDC_USER_TYPE = 5 THEN',
'    SELECT STUDY_DEPOT_ID',
'      INTO :APP_EDC_SD_ID',
'      FROM EDC_DEPOT_CONTACTS',
'     WHERE DEPOT_CONTACT_ID = :APP_EDC_USER;',
'  END IF;',
'',
'  BEGIN',
'    SELECT 1 INTO :APP_EDC_IWRS FROM EDC_STUDY WHERE STUDY_ID = :APP_EDC_STUDY_ID AND IWRS = ''Y'';',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      :APP_EDC_IWRS := 0;',
'  END;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error occurred while fetching user details.'
,p_process_when=>'101,47'
,p_process_when_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
