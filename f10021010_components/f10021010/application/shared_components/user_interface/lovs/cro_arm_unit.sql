prompt --application/shared_components/user_interface/lovs/cro_arm_unit
begin
--   Manifest
--     CRO_ARM_UNIT
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>1100950768141504093
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(12146855544368841816)
,p_lov_name=>'CRO_ARM_UNIT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 "CRO_LOV_VALUES_V"."DISPLAY_VALUE" as "DISPLAY_VALUE",',
'	 "CRO_LOV_VALUES_V"."STORED_VALUE" as "STORED_VALUE" ',
' from	 "CRO_LOV_VALUES_V" "CRO_LOV_VALUES_V" ',
' where 	 "CRO_LOV_VALUES_V"."LOV_NAME" =''ARM_UNIT''',
'order by CRO_LOV_VALUES_V.SEQUENCE ASC'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
