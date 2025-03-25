prompt --application/shared_components/security/authorizations/can_review_ticket
begin
--   Manifest
--     SECURITY SCHEME: CAN_REVIEW_TICKET
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>759714394172364641
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(4133183082187279975)
,p_name=>'CAN_REVIEW_TICKET'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM TABLE(APPROVAL_TABLE(1))',
' WHERE SC_ID = :APP_EDC_USER_ID'))
,p_error_message=>'You can not review the ticket.'
,p_version_scn=>1
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_imp.component_end;
end;
/
