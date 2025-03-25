prompt --application/pages/page_00078
begin
--   Manifest
--     PAGE: 00078
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
 p_id=>78
,p_tab_set=>'TS1'
,p_name=>'View Tickets'
,p_step_title=>'View Tickets'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-content{',
'    overflow-x:auto;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7872251074424565143)
,p_plug_name=>'Tickets'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "FEEDBACK_ID", ',
'"APPLICATION_ID",',
'"PAGE_NAME",',
'"CLIENT_EMAIL",',
'"ISSUE_NAME",',
'"ISSUE_DESC",',
'"ISSUE_TYPE",',
'"STATUS",',
'"COMPANY_ID",',
'dbms_lob.getlength("UPLOAD_FILE") "UPLOAD_FILE",',
'"UPLOAD_FILENAME",',
'"UPLOAD_FILE_MIMETYPE",',
'"UPLOAD_LAST_MODIFIED",',
'"ESTIMATED_COMPLETION_DATE",',
'"ESTIMATED_HOURS",',
'"SUPPORT_TEAM_NOTES",',
'"APPROVAL_STATUS",',
'"CREATED_BY",',
'"CREATED_ON",',
'"UPDATED_BY",',
'"UPDATED_ON",',
'"WORK_HOURS",',
'ROOT_CAUSE,',
'CORR_ACTION,',
'PRE_ACTION,',
'(SELECT USERNAME FROM EDC_STUDY_CONTACT WHERE STUDY_CONTACT_ID = A.REVIEW_BY) REVIEW_BY,',
'TO_CHAR(REVIEWED_ON,''DD-MON-YYYY HH:MI AM'') REVIEWED_ON,',
'(SELECT USERNAME FROM EDC_STUDY_CONTACT WHERE STUDY_CONTACT_ID = A.APPROVED_BY) APPROVED_BY,',
'TO_CHAR(APPROVED_ON,''DD-MON-YYYY HH:MI AM'') APPROVED_ON',
'from EDC_USER_FEEDBACK A',
'WHERE ((:APP_EDC_ROLE_ID = 16 AND UPPER(:APP_USER) = UPPER(CREATED_BY)) OR :APP_EDC_ROLE_ID != 16)',
'AND NVL(STATUS,0) = NVL(:P78_STATUS,STATUS)',
'order by FEEDBACK_ID desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'APP_EDC_ROLE_ID'
,p_plug_comment=>'javascript:popupURL(''f?p=&APP_ID.:73:&SESSION.::NO:RP,73:P73_FEEDBACK_ID:#FEEDBACK_ID#'')'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7872251300802565144)
,p_name=>'Tickets'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'javascript:popupURL(''f?p=&APP_ID.:73:&SESSION.::NO:RP,73:P73_FEEDBACK_ID:#FEEDBACK_ID#'')'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_owner=>'TUSHAR.LAPANI'
,p_internal_uid=>3974172553054858840
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133129465738261720)
,p_db_column_name=>'FEEDBACK_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Ticket#'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'FEEDBACK_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133129921117261720)
,p_db_column_name=>'APPLICATION_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Application Id'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'APPLICATION_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133130314235261721)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'PAGE_NAME'
,p_rpt_named_lov=>wwv_flow_imp.id(11045570460494600696)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133130664659261722)
,p_db_column_name=>'CLIENT_EMAIL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Client Email'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'CLIENT_EMAIL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133131119384261723)
,p_db_column_name=>'ISSUE_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Issue Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'ISSUE_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133131521356261724)
,p_db_column_name=>'ISSUE_DESC'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Issue Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ISSUE_DESC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133131899128261724)
,p_db_column_name=>'ISSUE_TYPE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Issue Type'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'ISSUE_TYPE'
,p_rpt_named_lov=>wwv_flow_imp.id(11060294561852861851)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133132343116261725)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
,p_rpt_named_lov=>wwv_flow_imp.id(11060293173091826296)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133132694212261726)
,p_db_column_name=>'COMPANY_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Company Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'COMPANY_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133133132691261726)
,p_db_column_name=>'UPLOAD_FILE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Upload File'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_format_mask=>'DOWNLOAD:EDC_USER_FEEDBACK:UPLOAD_FILE:FEEDBACK_ID'
,p_tz_dependent=>'N'
,p_static_id=>'UPLOAD_FILE'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133133498933261727)
,p_db_column_name=>'UPLOAD_FILENAME'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Upload Filename'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'UPLOAD_FILENAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133133869178261728)
,p_db_column_name=>'UPLOAD_FILE_MIMETYPE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Upload File Mimetype'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'UPLOAD_FILE_MIMETYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133134285423261728)
,p_db_column_name=>'UPLOAD_LAST_MODIFIED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Upload Last Modified'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'UPLOAD_LAST_MODIFIED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133134668840261729)
,p_db_column_name=>'ESTIMATED_COMPLETION_DATE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Estimated Completion Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ESTIMATED_COMPLETION_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133135100391261730)
,p_db_column_name=>'ESTIMATED_HOURS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Estimated Hours'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ESTIMATED_HOURS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133135530560261730)
,p_db_column_name=>'SUPPORT_TEAM_NOTES'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Support Team Notes'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'SUPPORT_TEAM_NOTES'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133135907533261731)
,p_db_column_name=>'APPROVAL_STATUS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Approval Status'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'APPROVAL_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133136257248261732)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133136666522261732)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_static_id=>'CREATED_ON'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133137071040261733)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UPDATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133137461685261734)
,p_db_column_name=>'UPDATED_ON'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Updated On'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_static_id=>'UPDATED_ON'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133137855701261734)
,p_db_column_name=>'WORK_HOURS'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Work Hours'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'WORK_HOURS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133128299434261718)
,p_db_column_name=>'ROOT_CAUSE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Proposed change'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>':APP_EDC_ROLE_ID IN (13)'
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
,p_column_comment=>':APP_EDC_ROLE_ID IN (13)'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133128688966261718)
,p_db_column_name=>'CORR_ACTION'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Impact Analysis'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_column_comment=>':APP_EDC_ROLE_ID IN (13)'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133129143906261719)
,p_db_column_name=>'PRE_ACTION'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Preventive Action'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_column_comment=>':APP_EDC_ROLE_ID IN (13)'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133126650809261715)
,p_db_column_name=>'REVIEW_BY'
,p_display_order=>35
,p_column_identifier=>'Z'
,p_column_label=>'Review By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133127076629261716)
,p_db_column_name=>'REVIEWED_ON'
,p_display_order=>45
,p_column_identifier=>'AA'
,p_column_label=>'Reviewed On'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133127476739261716)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>55
,p_column_identifier=>'AB'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4133127941774261717)
,p_db_column_name=>'APPROVED_ON'
,p_display_order=>65
,p_column_identifier=>'AC'
,p_column_label=>'Approved On'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7872253586132565151)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2350595'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'FEEDBACK_ID:PAGE_NAME:ISSUE_NAME:ISSUE_DESC:ISSUE_TYPE:ROOT_CAUSE:CORR_ACTION:PRE_ACTION:STATUS:CREATED_BY:UPDATED_BY::REVIEW_BY:REVIEWED_ON:APPROVED_BY:APPROVED_ON'
,p_sort_column_1=>'FEEDBACK_ID'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7872257598599671269)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11045189164405407923)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4133138699543261747)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7872251074424565143)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:popupURL(''f?p=&APP_ID.:73:&SESSION.::NO:RP,73:P73_PAGE_NAME:'' + ''&APP_PAGE_ID.'')'
,p_button_condition_type=>'NEVER'
,p_button_comment=>'javascript:popurl(''f?p=&APP_ID.:65:&SESSION.::NO:RP,65:'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1192127911893457734)
,p_name=>'P78_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7872251074424565143)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
