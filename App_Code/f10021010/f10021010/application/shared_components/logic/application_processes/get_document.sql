prompt --application/shared_components/logic/application_processes/get_document
begin
--   Manifest
--     APPLICATION PROCESS: GET_DOCUMENT
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>759714394172364641
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(2696067743318541544)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_DOCUMENT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    for c1 in (',
'                select *',
'                from EDC_STUDY_DOC',
'                WHERE DOC_ID = (SELECT MAX(DOC_ID) ',
'                          FROM EDC_STUDY_DOC',
'                          WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'                          AND DOC_GROUP_ID = :APP_DOC_GROUP_ID ',
'                          )) loop',
'        --',
'        sys.htp.init;',
'        sys.owa_util.mime_header( c1.mime_type, FALSE );',
'        sys.htp.p(''Content-length: '' || sys.dbms_lob.getlength( c1.DOC_BLOB));',
'        sys.htp.p(''Content-Disposition: attachment; filename="'' || c1.file_name || ''"'' );',
'        sys.htp.p(''Cache-Control: max-age=0'');  -- tell the browser to cache for one hour, adjust as necessary',
'        sys.owa_util.http_header_close;',
'        sys.wpg_docload.download_file( c1.DOC_BLOB );',
'     ',
'        apex_application.stop_apex_engine;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
