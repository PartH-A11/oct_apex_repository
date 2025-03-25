prompt --application/shared_components/user_interface/lovs/edc_arm_type
begin
--   Manifest
--     EDC_ARM_TYPE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>759714394172364641
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11045904563655337720)
,p_lov_name=>'EDC_ARM_TYPE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 "CRO_LOV_VALUES_V"."DISPLAY_VALUE" as "DISPLAY_VALUE",',
'	 "CRO_LOV_VALUES_V"."STORED_VALUE" as "STORED_VALUE" ',
' from	 "CRO_LOV_VALUES_V" "CRO_LOV_VALUES_V" ',
' where 	 "CRO_LOV_VALUES_V"."LOV_NAME" =''ARM_TYPE''',
'order by CRO_LOV_VALUES_V.SEQUENCE ASC'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
