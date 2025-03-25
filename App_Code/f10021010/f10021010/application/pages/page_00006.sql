prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_name=>'Query Report Pagewise'
,p_step_title=>'Query Report Pagewise'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_imp.id(11017835689714707247)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(12152041929918031554)
,p_name=>'Query Report'
,p_template=>wwv_flow_imp.id(12146132332151911981)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-top:5px;margin-left: 5px;"'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
' QRY_ID AS "Query#",',
' QRY_ID,',
' A.STUDY_ID,',
' "PATIENT_DIARY_ID",',
' "PAGE_ID",',
'--"ITEM_NAME",',
' B.ITEM_LABEL "ITEM_NAME",',
' "QRY_DESC",',
' "QRY_STATUS",',
' "QRY_RESPONSE",',
' A.CREATED_BY,',
' AUTO_FLAG as "AUTO_FLAG1",',
' A.CREATED_DT,',
' A.UPDATED_BY,',
' A.UPDATED_DT,',
' decode(lower(AUTO_FLAG),''u'',''User Generated'',''a'',''Auto Generated'') as "AUTO_FLAG",',
' A.CRF_ID AS "CRF_ID"',
'from EDC_CRF_QUERIES A, EDC_CRF_ITEMS B',
'WHERE PAGE_ID = :P6_PAGE_ID ',
'and PATIENT_DIARY_ID = :P6_PATIENT_DIARY_ID',
'and TBL_PK_ID = :P6_TBL_PK_ID',
'and A.crf_id = :P6_CRF_ID',
'AND A.ITEM_NAME = B.COLUMN_NAME',
'AND A.CRF_ID = B.CRF_ID',
'and page_id not in (511,512,513,514,819,820,518,519,579,580,522,523,524,593,594,595,596,597,598,592,526,592,521,527,502,536,503,545,548,550,725,535,529,534,554,537,599,506,501,585,556,558,587,588,589,590,573,574,575,576,582,584)',
'union all',
'select ',
' QRY_ID AS "Query#",',
' QRY_ID,',
' A.STUDY_ID,',
' "PATIENT_DIARY_ID",',
' "PAGE_ID",',
'--"ITEM_NAME",',
' B.ITEM_LABEL "ITEM_NAME",',
' "QRY_DESC",',
' "QRY_STATUS",',
' "QRY_RESPONSE",',
' A.CREATED_BY,',
' AUTO_FLAG as "AUTO_FLAG1",',
' A.CREATED_DT,',
' A.UPDATED_BY,',
' A.UPDATED_DT,',
' decode(lower(AUTO_FLAG),''u'',''User Generated'',''a'',''Auto Generated'') as "AUTO_FLAG",',
' A.CRF_ID AS "CRF_ID"',
'from EDC_CRF_QUERIES A, EDC_CRF_ITEMS B',
'WHERE PAGE_ID = :P6_PAGE_ID ',
'and TBL_PK_ID = :P6_TBL_PK_ID',
'and A.crf_id = :P6_CRF_ID',
'AND A.ITEM_NAME = B.COLUMN_NAME',
'AND A.CRF_ID = B.CRF_ID',
'and page_id in (819,820,518,519)',
'order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146134054662911984)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'''<a href="''||''javascript:popupURL(''''f?p=&APP_ID.:124:&SESSION.::RP,124::P124_QRY_ID,P124_REQUEST_FROM:''||Q.QRY_ID||'',''||:P6_PAGE_ID||'''''')">''|| Q.QRY_ID ||'' </a>'' AS "Query#",',
' Q.STUDY_ID,',
' Q.PATIENT_VISIT_ID,',
' Q.PAGE_ID,',
'/*(select INITCAP(REGEXP_REPLACE(replace(coalesce(LABEL,COMPONENT_COMMENT,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>'')) FROM APEX_APPLICATION_PAGE_ITEMS',
'  where PAGE_ID=:P6_PAGE_ID ',
'AND APPLICATION_ID = :APP_ID AND ITEM_NAME=Q.ITEM_NAME) */',
'REPLACE(replace(edc_util.GET_ITEM_LABEL(:APP_EDC_PARAM_ID,:P6_PAGE_ID ,Q.ITEM_NAME),''<B>'',''''),''</B>'','''') Item,',
' Q.QRY_DESC,',
' Q.QRY_STATUS,',
' Q.QRY_RESPONSE,',
' Q.CREATED_BY,',
' Q.CREATED_DT,',
' Q.UPDATED_BY,',
' Q.UPDATED_DT,(SELECT ITEM_SOURCE FROM APEX_APPLICATION_PAGE_ITEMS',
'  WHERE PAGE_ID=:P6_PAGE_ID ',
'AND APPLICATION_ID = :APP_ID AND ITEM_NAME = Q.ITEM_NAME)item_name,Q.AUTO_FLAG',
'from EDC_CRF_QUERIES Q',
'WHERE Q.PAGE_ID = :P6_PAGE_ID and Q.PATIENT_VISIT_ID = :P6_PATIENT_VISIT_ID',
'AND Q.PAGE_ID IN (SELECT CRF_PAGE_NO FROM EDC_CRF_MASTER WHERE PARENT_PAGE IS NULL)',
'AND Q.PAGE_ID <> 518',
'UNION ALL',
'select ',
'''<a href="''||''javascript:popupURL(''''f?p=&APP_ID.:124:&SESSION.::RP,124::P124_QRY_ID,P124_REQUEST_FROM:''||Q.QRY_ID||'',''||:P6_PAGE_ID||'''''')">''|| Q.QRY_ID ||'' </a>'' AS "Query#",',
' Q.STUDY_ID,',
' Q.PATIENT_VISIT_ID,',
' Q.PAGE_ID,',
'/*(select INITCAP(REGEXP_REPLACE(replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>'')) FROM APEX_APPLICATION_PAGE_ITEMS',
'  where PAGE_ID=:P6_PAGE_ID ',
'AND APPLICATION_ID = :APP_ID AND ITEM_NAME=Q.ITEM_NAME) */',
'REPLACE(replace(edc_util.GET_ITEM_LABEL(:APP_EDC_PARAM_ID,:P6_PAGE_ID ,Q.ITEM_NAME),''<B>'',''''),''</B>'','''') Item,',
' Q.QRY_DESC,',
' Q.QRY_STATUS,',
' Q.QRY_RESPONSE,',
' Q.CREATED_BY,',
' Q.CREATED_DT,',
' Q.UPDATED_BY,',
' Q.UPDATED_DT,(SELECT ITEM_SOURCE FROM APEX_APPLICATION_PAGE_ITEMS',
'  WHERE PAGE_ID=:P6_PAGE_ID ',
'AND APPLICATION_ID = :APP_ID AND ITEM_NAME = Q.ITEM_NAME)item_name,Q.AUTO_FLAG',
'from EDC_CRF_QUERIES Q',
'WHERE Q.PAGE_ID = :P6_PAGE_ID and Q.PATIENT_VISIT_ID = :P6_PATIENT_VISIT_ID',
'AND TBL_PK_ID = :APP_TBL_PK_ID',
'AND Q.PAGE_ID <> 518',
'AND Q.PAGE_ID IN (SELECT CRF_PAGE_NO FROM EDC_CRF_MASTER WHERE PARENT_PAGE IS NOT NULL)',
'UNION ALL',
'select ',
'''<a href="''||''javascript:popupURL(''''f?p=&APP_ID.:124:&SESSION.::RP,124::P124_QRY_ID,P124_REQUEST_FROM:''||Q.QRY_ID||'',''||:P6_PAGE_ID||'''''')">''|| Q.QRY_ID ||'' </a>'' AS "Query#",',
' Q.STUDY_ID,',
' Q.PATIENT_VISIT_ID,',
' Q.PAGE_ID,',
'/*(select INITCAP(REGEXP_REPLACE(replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>'')) FROM APEX_APPLICATION_PAGE_ITEMS',
'  where PAGE_ID=:P6_PAGE_ID ',
'AND APPLICATION_ID = :APP_ID AND ITEM_NAME=Q.ITEM_NAME)*/  ',
'REPLACE(replace(edc_util.GET_ITEM_LABEL(:APP_EDC_PARAM_ID,:P6_PAGE_ID ,Q.ITEM_NAME),''<B>'',''''),''</B>'','''') Item,',
' Q.QRY_DESC,',
' Q.QRY_STATUS,',
' Q.QRY_RESPONSE,',
' Q.CREATED_BY,',
' Q.CREATED_DT,',
' Q.UPDATED_BY,',
' Q.UPDATED_DT,(SELECT ITEM_SOURCE FROM APEX_APPLICATION_PAGE_ITEMS',
'  WHERE PAGE_ID=:P6_PAGE_ID ',
'AND APPLICATION_ID = :APP_ID AND ITEM_NAME = Q.ITEM_NAME)item_name,Q.AUTO_FLAG',
'from EDC_CRF_QUERIES Q',
'WHERE Q.PAGE_ID = :P6_PAGE_ID ',
'--and Q.PATIENT_VISIT_ID = :P6_PATIENT_VISIT_ID',
'AND TBL_PK_ID = :APP_TBL_PK_ID',
'AND Q.PAGE_ID = 518',
''))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152042151727031554)
,p_query_column_id=>1
,p_column_alias=>'Query#'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:4:P4_QRY_ID,P4_REQUEST_FROM,P4_QRY_STATUS,P4_AUTO_FLAG,P4_CRF_ID,P4_ITEM_NAME:#Query##,#PAGE_ID#,#QRY_STATUS#,#AUTO_FLAG1#,#CRF_ID#,#ITEM_NAME#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif" alt="">'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'12'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3789564653239567951)
,p_query_column_id=>2
,p_column_alias=>'QRY_ID'
,p_column_display_sequence=>15
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152042246987031554)
,p_query_column_id=>3
,p_column_alias=>'STUDY_ID'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3789564744908567952)
,p_query_column_id=>4
,p_column_alias=>'PATIENT_DIARY_ID'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152042435905031554)
,p_query_column_id=>5
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11642744244336100204)
,p_query_column_id=>6
,p_column_alias=>'ITEM_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Field'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152042653185031554)
,p_query_column_id=>7
,p_column_alias=>'QRY_DESC'
,p_column_display_sequence=>6
,p_column_heading=>'Query Description'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'12'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152042727553031554)
,p_query_column_id=>8
,p_column_alias=>'QRY_STATUS'
,p_column_display_sequence=>7
,p_column_heading=>'Query Status'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'12'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152042825463031554)
,p_query_column_id=>9
,p_column_alias=>'QRY_RESPONSE'
,p_column_display_sequence=>8
,p_column_heading=>'Response'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152042941858031554)
,p_query_column_id=>10
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>9
,p_column_heading=>'Created By'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3789564824661567953)
,p_query_column_id=>11
,p_column_alias=>'AUTO_FLAG1'
,p_column_display_sequence=>14
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152043031972031555)
,p_query_column_id=>12
,p_column_alias=>'CREATED_DT'
,p_column_display_sequence=>10
,p_column_heading=>'Created <br> On'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY HH24:MI'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152043138560031555)
,p_query_column_id=>13
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>11
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152043252931031555)
,p_query_column_id=>14
,p_column_alias=>'UPDATED_DT'
,p_column_display_sequence=>12
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11642854859013194667)
,p_query_column_id=>15
,p_column_alias=>'AUTO_FLAG'
,p_column_display_sequence=>13
,p_column_heading=>'Flag'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3789564979281567954)
,p_query_column_id=>16
,p_column_alias=>'CRF_ID'
,p_column_display_sequence=>16
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12152043343451031555)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12152041929918031554)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Close'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:window.close();'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3789564338463567948)
,p_name=>'P6_CRF_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12152041929918031554)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3789564478588567949)
,p_name=>'P6_TBL_PK_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12152041929918031554)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3789564598642567950)
,p_name=>'P6_PATIENT_PROFILE_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12152041929918031554)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3789565066394567955)
,p_name=>'P6_PATIENT_DIARY_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12152041929918031554)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152043549847031556)
,p_name=>'P6_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12152041929918031554)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152043737369031560)
,p_name=>'P6_PATIENT_VISIT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12152041929918031554)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
