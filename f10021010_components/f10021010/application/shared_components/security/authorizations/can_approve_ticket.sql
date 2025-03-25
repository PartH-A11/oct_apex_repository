prompt --application/shared_components/security/authorizations/can_approve_ticket
begin
--   Manifest
--     SECURITY SCHEME: CAN_APPROVE_TICKET
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>1100950768141504093
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(5234134402750784095)
,p_name=>'CAN_APPROVE_TICKET'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_COUNT NUMBER;',
'BEGIN',
'  SELECT COUNT(*)',
'    INTO V_COUNT',
'    FROM TABLE(APPROVAL_TABLE(2))',
'   WHERE SC_ID = :APP_EDC_USER_ID;',
'',
'  IF V_COUNT > 0 THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'END;'))
,p_error_message=>'You can not review the ticket.'
,p_version_scn=>1
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_imp.component_end;
end;
/
