prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>1100950768141504093
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_page.create_page(
 p_id=>21
,p_tab_set=>'TS1'
,p_name=>'Study Team Details'
,p_step_title=>'Study Team Details'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'html header',
'<style>',
'#passwordStrength',
'{',
'        height:10px;',
'        display:block;',
'        float:left;',
'}',
'.strength0',
'{',
'        width:250px;',
'        background:#cccccc;',
'}',
'.strength1',
'{',
'        width:50px;',
'        background:#ff0000;',
'}',
'.strength2',
'{',
'        width:100px;    ',
'        background:#ff5f5f;',
'}',
'.strength3',
'{',
'        width:150px;',
'        background:#56e500;',
'}',
'.strength4',
'{',
'        background:#4dcd00;',
'        width:200px;',
'}',
'.strength5',
'{',
'        background:#399800;',
'        width:250px;',
'}',
'</style>',
'<script language="javascript">',
'function passwordChanged() {',
'var pwd = document.getElementById(''P21_PASSWORD_STRENGTH'');',
'var password = document.getElementById("P21_PASSWORD").value;',
'var desc = new Array();',
'        desc[0] = "Very Weak";',
'        desc[1] = "Weak";',
'        desc[2] = "Better";',
'        desc[3] = "Medium";',
'        desc[4] = "Strong";',
'        desc[5] = "Strongest";',
'        var score   = 0;',
'        //if password bigger than 6 give 1 point',
'        if (password.length > 6) score++;',
'        //if password has both lower and uppercase characters give 1 point      ',
'        if ( ( password.match(/[a-z]/) ) && ( password.match(/[A-Z]/) ) ) score++;',
'        //if password has at least one number give 1 point',
'        if (password.match(/\d+/)) score++;',
'        //if password has at least one special caracther give 1 point',
'        if ( password.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/) ) score++;',
'        //if password bigger than 12 give another 1 point',
'        if (password.length > 12) score++;',
'         document.getElementById("passwordDescription").innerHTML = desc[score];',
'        if (password.length==0) {',
'document.getElementById("passwordDescription").innerHTML  = ''Password not entered'';',
'}  document.getElementById("passwordStrength").className = "strength" + score;',
'}',
'</script>'))
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12146374051621667658)
,p_plug_name=>'Study Team Details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130935592911980)
,p_plug_display_sequence=>12
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12146378039977667669)
,p_plug_name=>'Password Display JS'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>25
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'document.getElementById(''P21_PASSWORD'').value = document.getElementById(''P21_PASSWORD_DISP'').value;',
'</script>',
'<script language="javascript">',
'passwordChanged();',
'</script>'))
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12146378253283667671)
,p_plug_name=>'Study Personnel Details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130233942911979)
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(12146137930501911991)
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12146841742498794633)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146131749834911981)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(12146155451198328465)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12146135651272911987)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12147204449654083195)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130233942911979)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(12146139932546912016)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(12146137930501911991)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146374428957667659)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P21_STUDY_CONTACT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146374846082667659)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5235518880010583431)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_button_name=>'AUDIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Audit Trail'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P21_STUDY_CONTACT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146374239102667659)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P21_STUDY_CONTACT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(12146158755186328484)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146374635284667659)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P21_STUDY_CONTACT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(12146175855924637885)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12146380755576667679)
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3107668938147480205)
,p_name=>'P21_COUNTRY_ID'
,p_item_sequence=>141
,p_item_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_use_cache_before_default=>'NO'
,p_source=>'COUNTRY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5235386735391028433)
,p_name=>'P21_STATUS_CHANGE'
,p_item_sequence=>111
,p_item_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5235387492164028440)
,p_name=>'P21_USERNAME_CHANGE'
,p_item_sequence=>131
,p_item_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5235388197386028447)
,p_name=>'P21_COMMENTS_CHANGE'
,p_item_sequence=>221
,p_item_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5235471998121444334)
,p_name=>'P21_TYPE_CHANGE'
,p_item_sequence=>61
,p_item_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5235516189605583404)
,p_name=>'P21_DEACTIVATE_DATE_CHANGE'
,p_item_sequence=>191
,p_item_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5235519315300583435)
,p_name=>'P21_USER_REGION'
,p_item_sequence=>91
,p_item_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Region</b>'
,p_source=>'USER_REGION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'REGION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LV.DISPLAY_VALUE D, LV.STORED_VALUE R ',
'  FROM EDC_LOV L',
'  JOIN EDC_LOV_VALUES LV',
'    ON L.LOV_ID = LV.LOV_ID ',
'   AND LOV_NAME = ''REGION'' ',
'   AND LV.STATUS = 1',
' ORDER BY LV.SEQUENCE'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11644670721379591293)
,p_name=>'P21_DEACTIVATE_DATE'
,p_item_sequence=>181
,p_item_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<B> Deactivate Date </B>'
,p_source=>'DEACTIVATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>4000
,p_tag_attributes=>'readonly = "readonly;"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146375048969667662)
,p_name=>'P21_DIS_TYPE'
,p_item_sequence=>41
,p_item_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Type'
,p_source=>'select DISPLAY_VALUE from edc_lov_values where lov_id = 9 and STORED_VALUE = (select type from edc_study_contact where study_contact_id =:P21_STUDY_CONTACT_ID);'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Remove condition',
'Value of Item/column in expression 1 is not null',
'--P21_STUDY_CONTACT_ID'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146375251009667663)
,p_name=>'P21_COMMENTS'
,p_item_sequence=>211
,p_item_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Comments </b>'
,p_source=>'COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>40
,p_cMaxlength=>200
,p_cHeight=>3
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146375440188667664)
,p_name=>'P21_CONTACT_ID'
,p_is_required=>true
,p_item_sequence=>71
,p_item_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User'
,p_source=>'CONTACT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH',
'  STUDY_CONTACT AS ((SELECT SITE_NUMBER || '' - '' || EDC_SITE_PKG.GET_SITE_NAME(SITE_ID) || '' ('' || EDC_SITE_PKG.GET_SITE_NAME(SITE_ID) || '' ('' || EDC_SITE_PKG.GET_INVESTIGATOR_NAME(SITE_ID) || '')'' D, STUDY_SITE_ID R, 2 T',
'                       FROM EDC_STUDY_SITES',
'                      WHERE STUDY_ID = :APP_EDC_STUDY_ID',
'                      UNION',
'                     SELECT ''(''||SS.SITE_NUMBER || '' - '' || EDC_SITE_PKG.GET_SITE_NAME(SS.SITE_ID) || '') '' ||ST.FIRST_NAME||'' ''||ST.LAST_NAME || '' - '' || EDC_USER.GET_SITE_CONTACT_ROLE(ST.ROLE) D, ST.SITE_CONTACT_ID R, 3 T',
'                       FROM EDC_STUDY_SITES SS, EDC_SITE_CONTACTS ST',
'                      WHERE SS.STUDY_SITE_ID = ST.STUDY_SITE_ID',
'                        AND SS.STUDY_ID = :APP_EDC_STUDY_ID)',
'                      UNION',
'                     SELECT SD.DEPOT_NO||'' (''||DC.FIRST_NAME||'' ''||DC.LAST_NAME||'')'' D, DC.DEPOT_CONTACT_ID R, 5 TYPE',
'                       FROM EDC_DEPOT_CONTACTS DC',
'                       JOIN EDC_STUDY_DEPOT SD',
'                         ON DC.STUDY_DEPOT_ID = SD.STUDY_DEPOT_ID',
'                        AND SD.STUDY_ID = :APP_EDC_STUDY_ID',
'                      UNION',
'                     SELECT U.FIRSTNAME || '' ''|| U.LASTNAME || '' - '' || UR.ROLE_NAME D, U.USER_ID R, UR.TYPE T',
'                       FROM EDC_USERS U, EDC_USER_ROLE UR',
'                      WHERE U.STATUS = 1',
'                        AND U.ROLE_ID = UR.ROLE_ID),',
'',
'  TBL AS (SELECT R, T',
'            FROM STUDY_CONTACT',
'           WHERE T = :P21_TYPE',
'           MINUS',
'          SELECT CONTACT_ID, TYPE',
'            FROM EDC_STUDY_CONTACT',
'           WHERE DECODE(:P21_STUDY_CONTACT_ID,'''',1,STUDY_CONTACT_ID) != DECODE(:P21_STUDY_CONTACT_ID,'''',0,:P21_STUDY_CONTACT_ID))',
'',
'  SELECT A.D, A.R',
'    FROM STUDY_CONTACT A',
'    JOIN TBL B',
'      ON A.R = B.R',
'     AND A.T = :P21_TYPE',
'   ORDER BY A.R DESC'))
,p_lov_cascade_parent_items=>'P21_TYPE'
,p_ajax_items_to_submit=>'P21_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>50
,p_cMaxlength=>255
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P21_STUDY_CONTACT_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH ',
'  STUDY_CONTACT AS ((SELECT SITE_NUMBER || '' - '' || EDC_SITE_PKG.GET_SITE_NAME(SITE_ID) || '' ('' || EDC_SITE_PKG.GET_SITE_NAME(SITE_ID) || '' ('' || EDC_SITE_PKG.GET_INVESTIGATOR_NAME(SITE_ID) || '')'' D, STUDY_SITE_ID R, 2 T',
'                       FROM EDC_STUDY_SITES',
'                      WHERE STUDY_ID = :APP_EDC_STUDY_ID',
'                      UNION',
'                     SELECT ''(''||SS.SITE_NUMBER || '' - '' || EDC_SITE_PKG.GET_SITE_NAME(SS.SITE_ID) || '') '' ||ST.FIRST_NAME||'' ''||ST.LAST_NAME || '' - '' || EDC_USER.GET_SITE_CONTACT_ROLE(ST.ROLE) D, ST.SITE_CONTACT_ID R, 3 T',
'                       FROM EDC_STUDY_SITES SS, EDC_SITE_CONTACTS ST',
'                      WHERE SS.STUDY_SITE_ID = ST.STUDY_SITE_ID',
'                        AND SS.STUDY_ID = :APP_EDC_STUDY_ID)',
'                      UNION',
'                     SELECT SD.DEPOT_NO||'' (''||DC.FIRST_NAME||'' ''||DC.LAST_NAME||'')'' D, DC.DEPOT_CONTACT_ID R, 5 TYPE',
'                       FROM EDC_DEPOT_CONTACTS DC',
'                       JOIN EDC_STUDY_DEPOT SD',
'                         ON DC.STUDY_DEPOT_ID = SD.STUDY_DEPOT_ID',
'                        AND SD.STUDY_ID = :APP_EDC_STUDY_ID',
'                      UNION',
'                     SELECT U.FIRSTNAME || '' ''|| U.LASTNAME || '' - '' || UR.ROLE_NAME D, U.USER_ID R, UR.TYPE T',
'                       FROM EDC_USERS U, EDC_USER_ROLE UR',
'                      WHERE U.STATUS = 1',
'                        AND U.ROLE_ID = UR.ROLE_ID)',
'',
'  SELECT D, R',
'    FROM STUDY_CONTACT',
'   WHERE T = :P21_TYPE',
'   ORDER BY R DESC'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146375636604667664)
,p_name=>'P21_CONTACT_ROLE'
,p_is_required=>true
,p_item_sequence=>81
,p_item_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'V_CNT NUMBER;',
'V_ROLE NUMBER;',
'BEGIN',
'SELECT NVL(COUNT(ROLE_ID),0) R INTO V_CNT',
'  FROM EDC_USER_ROLE',
' WHERE STATUS = 1',
'   AND TYPE = :P21_TYPE;',
'   ',
'   IF V_CNT = 1 THEN',
'           SELECT ROLE_ID R INTO V_ROLE',
'              FROM EDC_USER_ROLE',
'             WHERE STATUS = 1',
'               AND TYPE = :P21_TYPE;',
'               ',
'               RETURN V_ROLE;',
'       ELSE ',
'       RETURN NULL;',
'     END IF;',
'EXCEPTION WHEN OTHERS THEN RETURN NULL;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<b> Assigned Role </b>'
,p_source=>'CONTACT_ROLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d',
'     , role_id r',
'  from edc_user_role',
' where status = 1',
' AND ROLE_ID NOT IN (27,29)',
'   and type = :P21_TYPE'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P21_TYPE'
,p_ajax_items_to_submit=>'P21_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P21_STUDY_CONTACT_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146375842792667664)
,p_name=>'P21_CRYPTO_KEY'
,p_item_sequence=>231
,p_item_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_use_cache_before_default=>'NO'
,p_source=>'CRYPTO_KEY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146376024996667664)
,p_name=>'P21_PASSWORD'
,p_is_required=>true
,p_item_sequence=>151
,p_item_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_item_default=>'*************'
,p_prompt=>'Password'
,p_source=>'SELECT ''*************'' FROM DUAL;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>25
,p_cMaxlength=>50
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146376245211667665)
,p_name=>'P21_PASSWORD_DISP'
,p_item_sequence=>171
,p_item_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' RETURN ''*************'';',
'END;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Password'
,p_source=>'select nvl(MD5_HASH(password),''***************'') from EDC_STUDY_CONTACT where STUDY_CONTACT_ID=:P21_STUDY_CONTACT_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_tag_attributes=>'readonly = "readonly();"'
,p_begin_on_new_line=>'N'
,p_rowspan=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146376443092667665)
,p_name=>'P21_PASSWORD_STRENGTH'
,p_item_sequence=>161
,p_item_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_post_element_text=>'<div id="passwordDescription">Password not entered</div><div id="passwordStrength" class="strength0"></div>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146376648181667665)
,p_name=>'P21_SEND_MAIL'
,p_item_sequence=>201
,p_item_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:Send login credentials mail to user;1'
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146376855409667665)
,p_name=>'P21_STATUS'
,p_item_sequence=>101
,p_item_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_use_cache_before_default=>'NO'
,p_item_default=>'2'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_STUDY_PERSONNEL_STATUS_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''STUDY_PERSONNEL_STATUS'' and lv.status=1',
'order by lv.sequence'))
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146377044451667666)
,p_name=>'P21_STUDY_CONTACT_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Study Contact Id'
,p_source=>'STUDY_CONTACT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146377233408667666)
,p_name=>'P21_STUDY_ID'
,p_item_sequence=>21
,p_item_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_STUDY_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'STUDY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146377442333667667)
,p_name=>'P21_TYPE'
,p_is_required=>true
,p_item_sequence=>51
,p_item_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Type'
,p_source=>'TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''STUDY_CONTACT_TYPE'' and lv.status=1',
'order by lv.sequence'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P21_STUDY_CONTACT_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146377629256667667)
,p_name=>'P21_USERNAME'
,p_is_required=>true
,p_item_sequence=>121
,p_item_plug_id=>wwv_flow_imp.id(12146374051621667658)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>50
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12146378555184667674)
,p_validation_name=>'UNIQUE_USERNAME'
,p_validation_sequence=>10
,p_validation=>'select 1 from edc_study_contact where upper(username)=upper(:P21_USERNAME) and nvl2(:P21_STUDY_CONTACT_ID,:P21_STUDY_CONTACT_ID,1)!=nvl2(:P21_STUDY_CONTACT_ID,STUDY_CONTACT_ID,2)'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Username must be unique.'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(12146377629256667667)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235474684432450672)
,p_validation_name=>'P21_TYPE_CHANGE'
,p_validation_sequence=>20
,p_validation=>'P21_STATUS_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Type" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_TYPE VARCHAR2(200);',
'BEGIN',
'  IF :P21_STUDY_CONTACT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT TYPE',
'      INTO V_TYPE',
'      FROM EDC_STUDY_CONTACT',
'     WHERE STUDY_CONTACT_ID = :P21_STUDY_CONTACT_ID;',
'',
'    IF V_TYPE != :P21_TYPE THEN',
'      RETURN TRUE;',
'    ELSIF V_TYPE IS NULL AND :P21_TYPE IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_TYPE IS NOT NULL AND :P21_TYPE IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(5235471998121444334)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235387325896028439)
,p_validation_name=>'P21_STATUS_CHANGE'
,p_validation_sequence=>30
,p_validation=>'P21_STATUS_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Status" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STATUS VARCHAR2(200);',
'BEGIN',
'  IF :P21_STUDY_CONTACT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT STATUS',
'      INTO V_STATUS',
'      FROM EDC_STUDY_CONTACT',
'     WHERE STUDY_CONTACT_ID = :P21_STUDY_CONTACT_ID;',
'',
'    IF V_STATUS != :P21_STATUS THEN',
'      RETURN TRUE;',
'    ELSIF V_STATUS IS NULL AND :P21_STATUS IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_STATUS IS NOT NULL AND :P21_STATUS IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(5235386735391028433)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235388114057028446)
,p_validation_name=>'P21_USERNAME_CHANGE'
,p_validation_sequence=>40
,p_validation=>'P21_USERNAME_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Username" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_USERNAME VARCHAR2(200);',
'BEGIN',
'  IF :P21_STUDY_CONTACT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT USERNAME',
'      INTO V_USERNAME',
'      FROM EDC_STUDY_CONTACT',
'     WHERE STUDY_CONTACT_ID = :P21_STUDY_CONTACT_ID;',
'',
'    IF V_USERNAME != :P21_USERNAME THEN',
'      RETURN TRUE;',
'    ELSIF V_USERNAME IS NULL AND :P21_USERNAME IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_USERNAME IS NOT NULL AND :P21_USERNAME IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(5235387492164028440)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235516049405583403)
,p_validation_name=>'P21_COMMENTS_CHANGE'
,p_validation_sequence=>50
,p_validation=>'P21_COMMENTS_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Comments" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_COMMENTS VARCHAR2(200);',
'BEGIN',
'  IF :P21_STUDY_CONTACT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT COMMENTS',
'      INTO V_COMMENTS',
'      FROM EDC_STUDY_CONTACT',
'     WHERE STUDY_CONTACT_ID = :P21_STUDY_CONTACT_ID;',
'',
'    IF V_COMMENTS != :P21_COMMENTS THEN',
'      RETURN TRUE;',
'    ELSIF V_COMMENTS IS NULL AND :P21_COMMENTS IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_COMMENTS IS NOT NULL AND :P21_COMMENTS IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(5235388197386028447)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235516777188583410)
,p_validation_name=>'P21_DEACTIVATE_DATE_CHANGE'
,p_validation_sequence=>60
,p_validation=>'P21_DEACTIVATE_DATE_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Deactivate Date" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_DEACTIVATE_DATE VARCHAR2(200);',
'BEGIN',
'  IF :P21_STUDY_CONTACT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT TO_CHAR(DEACTIVATE_DATE,''DD-MON-YYYY'')',
'      INTO V_DEACTIVATE_DATE',
'      FROM EDC_STUDY_CONTACT',
'     WHERE STUDY_CONTACT_ID = :P21_STUDY_CONTACT_ID;',
'',
'    IF V_DEACTIVATE_DATE != :P21_DEACTIVATE_DATE THEN',
'      RETURN TRUE;',
'    ELSIF V_DEACTIVATE_DATE IS NULL AND :P21_DEACTIVATE_DATE IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_DEACTIVATE_DATE IS NOT NULL AND :P21_DEACTIVATE_DATE IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(5235516189605583404)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235519688173583439)
,p_validation_name=>'P21_USER_REGION_NN FOR DEPO MANAGER'
,p_validation_sequence=>70
,p_validation=>'P21_USER_REGION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Country Must have some value.'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(5235519315300583435)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_validation_comment=>':P21_CONTACT_ROLE = 18'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12146380041604667676)
,p_name=>'Hide / Show user and assign role'
,p_event_sequence=>5
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_TYPE'
,p_condition_element=>'P21_TYPE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12146380335772667678)
,p_event_id=>wwv_flow_imp.id(12146380041604667676)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_CONTACT_ID,P21_CONTACT_ROLE'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12146380538869667679)
,p_event_id=>wwv_flow_imp.id(12146380041604667676)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_CONTACT_ID,P21_CONTACT_ROLE'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11628435246424511397)
,p_name=>'SHOW DEACTIVATE DATE'
,p_event_sequence=>15
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_STATUS'
,p_condition_element=>'P21_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P21_STUDY_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11628435395231511398)
,p_event_id=>wwv_flow_imp.id(11628435246424511397)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_DEACTIVATE_DATE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2708404588283442434)
,p_event_id=>wwv_flow_imp.id(11628435246424511397)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_SEND_MAIL'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11628435479494511399)
,p_event_id=>wwv_flow_imp.id(11628435246424511397)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_DEACTIVATE_DATE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2708404704735442435)
,p_event_id=>wwv_flow_imp.id(11628435246424511397)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_SEND_MAIL'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235472388324446903)
,p_name=>'P21_TYPE_CHANGE hide'
,p_event_sequence=>25
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_TYPE VARCHAR2(200);',
'BEGIN',
'  IF :P21_STUDY_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT TYPE',
'      INTO V_TYPE',
'      FROM EDC_STUDY_CONTACT',
'     WHERE STUDY_CONTACT_ID = :P21_STUDY_CONTACT_ID;',
'',
'    IF V_TYPE != :P21_TYPE THEN',
'      RETURN FALSE;',
'    ELSIF V_TYPE IS NULL AND :P21_TYPE IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_TYPE IS NOT NULL AND :P21_TYPE IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235472721634446914)
,p_event_id=>wwv_flow_imp.id(5235472388324446903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_TYPE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235473229684446916)
,p_event_id=>wwv_flow_imp.id(5235472388324446903)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_TYPE_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235386849667028434)
,p_name=>'P21_STATUS_CHANGE hide'
,p_event_sequence=>35
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STATUS VARCHAR2(200);',
'BEGIN',
'  IF :P21_STUDY_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT STATUS',
'      INTO V_STATUS',
'      FROM EDC_STUDY_CONTACT',
'     WHERE STUDY_CONTACT_ID = :P21_STUDY_CONTACT_ID;',
'',
'    IF V_STATUS != :P21_STATUS THEN',
'      RETURN FALSE;',
'    ELSIF V_STATUS IS NULL AND :P21_STATUS IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_STATUS IS NOT NULL AND :P21_STATUS IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235386984670028435)
,p_event_id=>wwv_flow_imp.id(5235386849667028434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_STATUS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235387029739028436)
,p_event_id=>wwv_flow_imp.id(5235386849667028434)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_STATUS_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235387543228028441)
,p_name=>'P21_USERNAME_CHANGE hide'
,p_event_sequence=>45
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_USERNAME VARCHAR2(200);',
'BEGIN',
'  IF :P21_STUDY_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT USERNAME',
'      INTO V_USERNAME',
'      FROM EDC_STUDY_CONTACT',
'     WHERE STUDY_CONTACT_ID = :P21_STUDY_CONTACT_ID;',
'',
'    IF V_USERNAME != :P21_USERNAME THEN',
'      RETURN FALSE;',
'    ELSIF V_USERNAME IS NULL AND :P21_USERNAME IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_USERNAME IS NOT NULL AND :P21_USERNAME IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235387637663028442)
,p_event_id=>wwv_flow_imp.id(5235387543228028441)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_USERNAME_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235387720671028443)
,p_event_id=>wwv_flow_imp.id(5235387543228028441)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_USERNAME_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235515577295583398)
,p_name=>'P21_COMMENTS_CHANGE hide'
,p_event_sequence=>55
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_COMMENTS VARCHAR2(200);',
'BEGIN',
'  IF :P21_STUDY_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT COMMENTS',
'      INTO V_COMMENTS',
'      FROM EDC_STUDY_CONTACT',
'     WHERE STUDY_CONTACT_ID = :P21_STUDY_CONTACT_ID;',
'',
'    IF V_COMMENTS != :P21_COMMENTS THEN',
'      RETURN FALSE;',
'    ELSIF V_COMMENTS IS NULL AND :P21_COMMENTS IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_COMMENTS IS NOT NULL AND :P21_COMMENTS IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235515621622583399)
,p_event_id=>wwv_flow_imp.id(5235515577295583398)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_COMMENTS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235515798557583400)
,p_event_id=>wwv_flow_imp.id(5235515577295583398)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_COMMENTS_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235516294046583405)
,p_name=>'P21_DEACTIVATE_DATE_CHANGE hide'
,p_event_sequence=>65
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_DEACTIVATE_DATE VARCHAR2(200);',
'BEGIN',
'  IF :P21_STUDY_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT TO_CHAR(DEACTIVATE_DATE,''DD-MON-YYYY'')',
'      INTO V_DEACTIVATE_DATE',
'      FROM EDC_STUDY_CONTACT',
'     WHERE STUDY_CONTACT_ID = :P21_STUDY_CONTACT_ID;',
'',
'    IF V_DEACTIVATE_DATE != :P21_DEACTIVATE_DATE THEN',
'      RETURN FALSE;',
'    ELSIF V_DEACTIVATE_DATE IS NULL AND :P21_DEACTIVATE_DATE IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_DEACTIVATE_DATE IS NOT NULL AND :P21_DEACTIVATE_DATE IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235516409195583406)
,p_event_id=>wwv_flow_imp.id(5235516294046583405)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_DEACTIVATE_DATE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235516417573583407)
,p_event_id=>wwv_flow_imp.id(5235516294046583405)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_DEACTIVATE_DATE_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235473903422449085)
,p_name=>'P21_TYPE_CHANGE show'
,p_event_sequence=>75
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P21_STUDY_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235474286129449087)
,p_event_id=>wwv_flow_imp.id(5235473903422449085)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_RATIO_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235387171978028437)
,p_name=>'P21_STATUS_CHANGE show'
,p_event_sequence=>85
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P21_STUDY_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235387226741028438)
,p_event_id=>wwv_flow_imp.id(5235387171978028437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_STATUS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235387862227028444)
,p_name=>'P21_USERNAME_CHANGE show'
,p_event_sequence=>95
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_USERNAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P21_STUDY_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235387932157028445)
,p_event_id=>wwv_flow_imp.id(5235387862227028444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_USERNAME_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235515817506583401)
,p_name=>'P21_COMMENTS_CHANGE show'
,p_event_sequence=>105
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_COMMENTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P21_STUDY_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235515982335583402)
,p_event_id=>wwv_flow_imp.id(5235515817506583401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_COMMENTS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235516525572583408)
,p_name=>'P21_DEACTIVATE_DATE_CHANGE show'
,p_event_sequence=>115
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_DEACTIVATE_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P21_STUDY_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235516627907583409)
,p_event_id=>wwv_flow_imp.id(5235516525572583408)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_DEACTIVATE_DATE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5236193732271067590)
,p_name=>'Open Audit Trail Popup (Page 41)'
,p_event_sequence=>125
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5235518880010583431)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5236194161349067591)
,p_event_id=>wwv_flow_imp.id(5236193732271067590)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'Audit Trail'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:41:&APP_SESSION.:::41:P41_PAGE_ID,P41_TABLE_NAME,P41_PK_ID:&APP_PAGE_ID.,EDC_STUDY_CONTACT,&P21_STUDY_CONTACT_ID.'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235519331375583436)
,p_name=>'hide / show user country'
,p_event_sequence=>135
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_CONTACT_ROLE'
,p_condition_element=>'P21_CONTACT_ROLE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'18'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235519477490583437)
,p_event_id=>wwv_flow_imp.id(5235519331375583436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_USER_REGION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235519594355583438)
,p_event_id=>wwv_flow_imp.id(5235519331375583436)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_USER_REGION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3558633569809111665)
,p_name=>'Set Username'
,p_event_sequence=>145
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_CONTACT_ID'
,p_condition_element=>'P21_CONTACT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3558633637695111666)
,p_event_id=>wwv_flow_imp.id(3558633569809111665)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_USERNAME'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_NAME VARCHAR2(4000);',
'BEGIN',
'  IF :P21_TYPE = 3 THEN',
'    SELECT FIRST_NAME||''.''||LAST_NAME',
'      INTO V_NAME',
'      FROM EDC_SITE_CONTACTS',
'     WHERE SITE_CONTACT_ID = :P21_CONTACT_ID;',
'  ELSIF :P21_TYPE = 2 THEN',
'    SELECT A.FIRST_NAME||''.''||A.LAST_NAME',
'      INTO V_NAME',
'      FROM EDC_SITES A',
'      JOIN EDC_STUDY_SITES B',
'        ON A.SITE_ID = B.SITE_ID',
'       AND B.STUDY_SITE_ID = :P21_CONTACT_ID;',
'  ELSIF :P21_TYPE = 1 THEN',
'    SELECT FIRSTNAME||''.''||LASTNAME',
'      INTO V_NAME',
'      FROM EDC_USERS',
'     WHERE USER_ID = :P21_CONTACT_ID;',
'  ELSIF :P21_TYPE = 5 THEN',
'    SELECT FIRST_NAME||''.''||LAST_NAME',
'      INTO V_NAME',
'      FROM EDC_DEPOT_CONTACTS',
'     WHERE DEPOT_CONTACT_ID = :P21_CONTACT_ID;',
'  END IF;',
'',
'  RETURN V_NAME;',
'END;'))
,p_attribute_07=>'P21_TYPE,P21_CONTACT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108658823734471180)
,p_name=>'Set CountryId'
,p_event_sequence=>155
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_CONTACT_ID,P21_TYPE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P21_TYPE'') != '''' && $v(''P21_CONTACT_ID'') != '''''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108658879421471181)
,p_event_id=>wwv_flow_imp.id(3108658823734471180)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_COUNTRY_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH',
'  TBL AS (SELECT STUDY_SITE_ID R, 2 T, B.COUNTRY_ID',
'            FROM EDC_STUDY_SITES A',
'            JOIN EDC_SITES B',
'              ON A.SITE_ID = B.SITE_ID',
'             AND A.STUDY_ID = :APP_EDC_STUDY_ID',
'           UNION',
'          SELECT ST.SITE_CONTACT_ID R, 3 T, B.COUNTRY_ID',
'            FROM EDC_STUDY_SITES SS',
'            JOIN EDC_SITE_CONTACTS ST',
'              ON SS.STUDY_SITE_ID = ST.STUDY_SITE_ID',
'            JOIN EDC_SITES B',
'              ON SS.SITE_ID = B.SITE_ID',
'             AND SS.STUDY_ID = :APP_EDC_STUDY_ID',
'           UNION',
'          SELECT DC.DEPOT_CONTACT_ID R, 5 TYPE, C.COUNTRY_ID',
'            FROM EDC_DEPOT_CONTACTS DC',
'            JOIN EDC_STUDY_DEPOT SD',
'              ON DC.STUDY_DEPOT_ID = SD.STUDY_DEPOT_ID',
'            JOIN EDC_DEPOT C',
'              ON SD.DEPOT_ID = C.DEPOT_ID',
'             AND SD.STUDY_ID = :APP_EDC_STUDY_ID',
'           UNION',
'          SELECT U.USER_ID R, UR.TYPE T, U.COUNTRY_ID',
'            FROM EDC_USERS U',
'            JOIN EDC_USER_ROLE UR',
'              ON U.ROLE_ID = UR.ROLE_ID',
'             AND U.STATUS = 1)',
'',
'  SELECT COUNTRY_ID',
'    FROM TBL',
'   WHERE R = :P21_CONTACT_ID',
'     AND T = :P21_TYPE'))
,p_attribute_07=>'P21_CONTACT_ID,P21_TYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146378632103667675)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_STUDY_CONTACT'
,p_attribute_02=>'EDC_STUDY_CONTACT'
,p_attribute_03=>'P21_STUDY_CONTACT_ID'
,p_attribute_04=>'STUDY_CONTACT_ID'
,p_process_error_message=>'Unable to fetch row.'
,p_internal_uid=>11045427863962163582
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146378834730667675)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'    L_PRIMARY_KEY NUMBER;',
'   BEGIN',
'   SELECT nvl(MAX(STUDY_CONTACT_ID),0) + 1',
'   INTO L_PRIMARY_KEY',
'   FROM EDC_STUDY_CONTACT;',
'   RETURN L_PRIMARY_KEY;',
'END;',
'begin ',
'  :P21_STUDY_CONTACT_ID := get_pk; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_imp.id(12146374239102667659)
,p_internal_uid=>11045428066589163582
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146379052252667675)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Change Password'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_password varchar2(50);',
'v_ret number;',
'begin',
'',
'select password into v_password from edc_study_contact where STUDY_CONTACT_ID=:P21_STUDY_CONTACT_ID;',
'',
'if v_password != :P21_PASSWORD then',
'',
'insert into EDC_PASSWORD_CHANGE_HIST',
'(PASSWORD_CHANGE_HIST_ID,USER_ID,DATE_TIME,UPDATE_USER,FROM_WHERE,OLD_PASS,NEW_PASS,STUDY_ID)',
'values(EDC_TABLE_PK_GENERATOR.EDC_PASSWORD_CHANGE_HIST_PK,:P21_STUDY_CONTACT_ID,systimestamp,:APP_EDC_USER_ID,2,v_password,:P21_PASSWORD,:APP_EDC_STUDY_ID);',
'commit;',
'',
'EDC_MAIL.change_password_mail(:APP_USER_NAME,:P21_STUDY_CONTACT_ID,v_ret);',
'',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(12146374428957667659)
,p_process_when_type=>'NEVER'
,p_internal_uid=>11045428284111163582
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146379232465667676)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_STUDY_CONTACT'
,p_attribute_02=>'EDC_STUDY_CONTACT'
,p_attribute_03=>'P21_STUDY_CONTACT_ID'
,p_attribute_04=>'STUDY_CONTACT_ID'
,p_attribute_09=>'P21_STUDY_CONTACT_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EDC_STUDY_CONTACT.'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>11045428464324163583
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146379433325667676)
,p_process_sequence=>32
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'md5 Password'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update edc_study_contact ',
'  set PASSWORD = MD5_HASH(:P21_PASSWORD)',
'  where STUDY_CONTACT_ID = :P21_STUDY_CONTACT_ID;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>11045428665184163583
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146379653909667676)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Password Mail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  P_RESULT varchar2(500);',
'  L_PRIMARY_KEY NUMBER;',
'BEGIN',
'  SELECT nvl(MAX(STUDY_CONTACT_ID),0)',
'    INTO L_PRIMARY_KEY',
'    FROM EDC_STUDY_CONTACT;',
'',
'  EDC_MAIL.LOGIN_CREDENTIALS_MAIL(',
'    P_STUDY_CONTACT_ID => :P21_STUDY_CONTACT_ID,-- L_PRIMARY_KEY',
'    P_RESULT => P_RESULT',
'  );',
'apex_application.g_print_success_message := ''<span style=color:red>Mail Result:- ''||P_RESULT||''</span>'';',
'update LOGIN_ATTEMPTS',
'  SET LOGIN_STATUS = ''LOGIN_RESET''',
'  WHERE login_Status like ''%LOGIN_FAIL%''',
' and username = :P21_USERNAME;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P21_SEND_MAIL'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'1'
,p_internal_uid=>11045428885768163583
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146379830323667676)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'39'
,p_process_when_button_id=>wwv_flow_imp.id(12146374635284667659)
,p_internal_uid=>11045429062182163583
);
wwv_flow_imp.component_end;
end;
/
