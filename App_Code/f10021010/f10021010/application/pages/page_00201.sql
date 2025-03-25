prompt --application/pages/page_00201
begin
--   Manifest
--     PAGE: 00201
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
 p_id=>201
,p_tab_set=>'TS1'
,p_name=>'Kit Management '
,p_step_title=>'Kit Management '
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function showJQueryDialog(width, height, url, title) {',
'    rateDialog = $(''<iframe id="modalID" name="modalName" src="''+ url +''"  width ="+ width + "px" height = " + height + "px" frameborder="no" style ="overflow: hidden;"></iframe>'');',
'    $(rateDialog).dialog({',
'        open: function(event, ui){},',
'        modal: true ,',
'        dialogClass: ''noTitle'',',
'        //title: title,',
'        width : width,',
'        height: height,',
'        close: windowReload,',
'        closeOnEscape: true }).width(width).height(height);',
'}',
'',
'function showModalDialog(p_page, p_id) {',
'    var url;',
'    var title;',
'',
'    url = ''f?p=&APP_ID.:''+p_page+'':&SESSION.::NO::::'';',
'',
'    if(p_page == 46) {',
'        title = ''Edit IP at Site'';',
'    }',
'    else if(p_page == 48) {',
'        title = ''Edit IP at Depot'';',
'    }',
'    else if(p_page == 76) {',
'        title = ''Audit Trail'';',
'        url = ''f?p=&APP_ID.:''+p_page+'':&SESSION.::NO::P76_PAGE_ID,P76_TABLE_NAME,P76_PK_ID:201,EDC_IP_DETAIL,''+p_id+'':'';',
'    }',
'    else {',
'        title = ''Title'';',
'    }',
'',
'    showJQueryDialog(950, 330, url, title);',
'}',
'',
'function windowReload() {',
'     $.event.trigger("REFRESH_REGION");',
'     //   window.location.reload();',
'      }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_IMAGES#jquery.cookie.js',
'--------',
'#WORKSPACE_IMAGES#vertical-collapsible-nav.css',
'-----------',
'/* Function and Global Variable Declaration',
'Array.prototype.getUnique = function(sort) {',
'  var u = {}, a = [], i, l = this.length;',
'  for (i = 0; i < l; ++i) {',
'    if (this[i] in u) { continue; }',
'    a.push(this[i]);',
'    u[this[i]] = 1;',
'  }',
'  return (sort) ? a.sort() : a;',
'}',
'*/',
'',
'/* Execute when Page Loads',
'var cookie = $.cookie("panelState"), collapsed = cookie ? cookie.split("|").getUnique() : [], cookieExpires = 7;',
'',
'$.each(collapsed, function() {',
'  $(''#'' + this).siblings("ul").hide();',
'});',
'',
'$("div#vertical-collapsible-nav div span").click(function() {',
'  var spanClicked = this;',
'  ',
'  $(this).siblings("ul").slideToggle(300, function() {',
'    updateCookie(spanClicked);',
'  });',
'});',
'',
'function updateCookie(el) {',
'  var tmp = collapsed.getUnique();',
'',
'  if ($(''#'' + el.id).siblings("ul").is('':hidden'')) {',
'    tmp.push(el.id);',
'  } else {',
'    tmp.splice(tmp.indexOf(el.id), 1);',
'  }',
'  collapsed = tmp.getUnique();',
'  $.cookie("panelState", collapsed.join(''|''), { expires: cookieExpires } );',
'}',
'*/'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11051762081454568645)
,p_plug_name=>'IP_INVENTORY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045178973639407883)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_list_id=>wwv_flow_imp.id(11051769575586568669)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11045184765473407894)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11051762256709568647)
,p_plug_name=>'Kit Inventory'
,p_region_name=>'Assigned_IPs'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>70
,p_plug_new_grid=>true
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT IP_ID, ',
'       STUDY_ID, ',
'       BOTTLE_NO, ',
'       STUDY_ARM_ID, ',
'       ARMD_ID, ',
'       IP_CONTENT, ',
'       --IP_DOSE_LEVEL, ',
'       IP_DOSE, ',
'       COUNTRY_ID, ',
'       STUDY_DEPOT_ID,',
'       STUDY_SITE_ID, ',
'       PATIENT_PROFILE_ID,',
'       PATIENT_VISIT_ID,',
'       NVL(IP_STATUS,1) IP_STATUS,',
'       BATCH,',
'       EXP_DATE_REAL,',
'       NVL(EDC_UTIL.GET_DRUG_INV_STATUS(IP_ID, IP_STATUS), 1) AS STATUS,',
'       MANUF_DATE,',
'       EXP_DATE_LABEL,',
'       LOT_NUMBER LOT_NO,',
'       (SELECT RANDOMNO D',
'          FROM EDC_PATIENT_PROFILE',
'         WHERE PATIENT_PROFILE_ID = A.PATIENT_PROFILE_ID',
'       ) RANDOM_NO,',
'       REGION,',
'       null "AUDIT"',
'     , ''<a href="javascript:showModalDialog(76,''||IP_ID||'');">Audit</a>'' AUDITT',
'  FROM SUN_21010_DEV.EDC_IP_DETAIL A',
' WHERE STUDY_ID = :APP_EDC_STUDY_ID',
'   AND SUN_21010_DEV.EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'   --AND ((:APP_EDC_ROLE_ID = 18 AND :APP_USER_COUNTRY = COUNTRY) OR :APP_EDC_ROLE_ID != 18)',
'   --AND SUN_21010_DEV.EDC_AUTH_PKG.CHECK_REGION_ACCESS(A.COUNTRY_ID,a.STUDY_DEPOT_ID) = 1  --, A.',
' AND BOTTLE_NO <= DECODE(:P201_PAGE,NULL,1100,''A'',BOTTLE_NO)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P201_PAGE'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
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
,p_prn_header_font_color=>'#000000'
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
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT IP_ID, ',
'       STUDY_ID, ',
'       BOTTLE_NO, ',
'       STUDY_ARM_ID, ',
'       ARMD_ID, ',
'       IP_CONTENT, ',
'       --IP_DOSE_LEVEL, ',
'       IP_DOSE, ',
'       IP_NO_TABLETS, ',
'       STUDY_SITE_ID, ',
'       PATIENT_PROFILE_ID,',
'       PATIENT_VISIT_ID,',
'       NVL(IP_STATUS,1) IP_STATUS,',
'       BATCH,',
'       EXP_DATE_REAL,',
'       NVL(EDC_UTIL.GET_DRUG_INV_STATUS(IP_ID, IP_STATUS), 1) AS STATUS,',
'       MANUF_DATE,',
'       EXP_DATE_LABEL,',
'       LOT_NUMBER LOT_NO,',
'       (SELECT a.RANDOMNO D',
'          FROM EDC_PATIENT_PROFILE A',
'         WHERE PATIENT_PROFILE_ID = EDC_IP_DETAIL.PATIENT_PROFILE_ID',
'       ) RANDOM_NO',
'  FROM EDC_IP_DETAIL',
' WHERE STUDY_ID = :APP_EDC_STUDY_ID --NVL(:P0_STUDY_ID,:APP_STUDY_ID)',
'   and EDC_USER.GET_USER_SITE_ACCESS(STUDY_SITE_ID, :APP_EDC_USER_TYPE, :APP_EDC_USER, :APP_EDC_USER_ID, :APP_USER_NAME, :APP_EDC_ROLE_ID) = 1',
'   /*AND STUDY_SITE_ID IN (SELECT STUDY_SITE_ID',
'                           FROM EDC_SITE_CONTACTS',
'                          WHERE SITE_CONTACT_ID = TO_NUMBER(:APP_EDC_USER)',
'                            AND TO_NUMBER(:APP_EDC_USER_TYPE) = 3',
'                          UNION',
'                         SELECT CONTACT_ID',
'                           FROM EDC_STUDY_CONTACT',
'                          WHERE STUDY_CONTACT_ID = TO_NUMBER(:APP_EDC_USER_ID)',
'                            AND TO_NUMBER(:APP_EDC_USER_TYPE) = 2',
'                          UNION',
'                         SELECT STUDY_SITE_ID',
'                           FROM EDC_STUDY_SITES',
'                          WHERE USER_ID = TO_NUMBER(:APP_EDC_USER)',
'                            AND TO_NUMBER(:APP_EDC_ROLE_ID) = 17',
'                        )*/',
'UNION',
'SELECT IP_ID,',
'       STUDY_ID, ',
'       BOTTLE_NO, ',
'       STUDY_ARM_ID, ',
'       ARMD_ID, ',
'       IP_CONTENT, ',
'       --IP_DOSE_LEVEL, ',
'       IP_DOSE, ',
'       IP_NO_TABLETS, ',
'       STUDY_SITE_ID, ',
'       PATIENT_PROFILE_ID,',
'       PATIENT_VISIT_ID,',
'       NVL(IP_STATUS,1) IP_STATUS,',
'       BATCH,',
'       EXP_DATE_REAL,',
'       NVL(EDC_UTIL.GET_DRUG_INV_STATUS(IP_ID, IP_STATUS), 1) AS STATUS,',
'       MANUF_DATE,',
'       EXP_DATE_LABEL,',
'       LOT_NUMBER LOT_NO,',
'       (SELECT a.RANDOMNO D',
'          FROM EDC_PATIENT_PROFILE A',
'         WHERE PATIENT_PROFILE_ID = EDC_IP_DETAIL.PATIENT_PROFILE_ID',
'       ) RANDOM_NO',
'  FROM EDC_IP_DETAIL',
' WHERE STUDY_ID = :APP_EDC_STUDY_ID --NVL(:P0_STUDY_ID,:APP_STUDY_ID)',
'   and EDC_USER.GET_USER_SITE_ACCESS(STUDY_SITE_ID, :APP_EDC_USER_TYPE, :APP_EDC_USER, :APP_EDC_USER_ID, :APP_USER_NAME, :APP_EDC_ROLE_ID) = 1',
' ORDER BY 1 DESC'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11051762464933568647)
,p_name=>'Study Arm Inventory'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No Data Found'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:XLSX:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'NIKHIL.BUTANI'
,p_internal_uid=>156089508590506960
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051762578906568649)
,p_db_column_name=>'IP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'IP Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'IP_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051762668341568650)
,p_db_column_name=>'STUDY_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Study Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'STUDY_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051762774353568650)
,p_db_column_name=>'BOTTLE_NO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Kit #'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_static_id=>'BOTTLE_NO'
,p_use_as_row_header=>'N'
,p_column_comment=>':APP_EDC_ROLE_ID IN (13,18)'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051762885281568650)
,p_db_column_name=>'IP_CONTENT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Size'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'IP_CONTENT'
,p_use_as_row_header=>'N'
,p_column_comment=>'rename name : size insteasd of Dose level'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051763076345568651)
,p_db_column_name=>'IP_DOSE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Dose'
,p_report_label=>'IP Size'
,p_sync_form_label=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'IP_DOSE'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_blinded edc_study.blinded%TYPE;',
'begin',
'select nvl(blinded, ''No'') ',
'  into v_blinded',
'  from edc_study',
' where study_id = :APP_EDC_STUDY_ID;',
'',
'if v_blinded = ''No'' then',
' return true;',
'else',
' return false;',
'end if;',
'',
'end;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_blinded number;',
'begin',
'select nvl(blinded,0) ',
'  into v_blinded',
'  from edc_study',
' where study_id = :APP_EDC_STUDY_ID;',
'',
'if v_blinded = 0 then',
' return true;',
'else',
' return false;',
'end if;',
'',
'end;'))
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051763288904568651)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Site'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_static_id=>'STUDY_SITE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(11051796963439023522)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051763372948568651)
,p_db_column_name=>'PATIENT_PROFILE_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Screening No.'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PATIENT_PROFILE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(10895911541009861912)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051763470125568652)
,p_db_column_name=>'PATIENT_VISIT_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Visit'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PATIENT_VISIT_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(11051768077505568667)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051763587072568652)
,p_db_column_name=>'IP_STATUS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Kit Status'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'IP_STATUS'
,p_rpt_named_lov=>wwv_flow_imp.id(11051816672495046750)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051763680334568652)
,p_db_column_name=>'BATCH'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Batch <BR>No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'BATCH'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM DUAL',
'WHERE (SELECT BLINDED_FLAG FROM EDC_STUDY) = ''Yes'' ',
'AND :APP_EDC_ROLE_ID IN (13,18)'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051763775122568652)
,p_db_column_name=>'EXP_DATE_REAL'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Exp Date.<br> Real'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'EXP_DATE_REAL'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM DUAL',
'    WHERE (SELECT BLINDED_FLAG FROM EDC_STUDY) = ''Yes'' ',
'    AND :APP_EDC_ROLE_ID IN (13,18)'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051763870149568652)
,p_db_column_name=>'MANUF_DATE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Manufacture'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'MANUF_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051763960273568652)
,p_db_column_name=>'EXP_DATE_LABEL'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Exp Date.<br>Label'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'EXP_DATE_LABEL'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM DUAL',
'WHERE (SELECT BLINDED_FLAG FROM EDC_STUDY) = ''Yes'' ',
'AND :APP_EDC_ROLE_ID IN (13,18)'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051764074197568653)
,p_db_column_name=>'ARMD_ID'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Study Arm'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ARMD_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(10988578671348294328)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051764165961568653)
,p_db_column_name=>'STUDY_ARM_ID'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Study Arm'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_static_id=>'STUDY_ARM_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(11045283369488317223)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
':APP_EDC_ROLE_ID IN (13, 18, 20, 22 /*Admin, DM, Sponsor, Safety*/)',
'-------',
'declare',
'v_blinded edc_study.blinded%TYPE;',
'begin',
'select nvl(blinded, ''No'') ',
'  into v_blinded',
'  from edc_study',
' where study_id = :APP_EDC_STUDY_ID;',
'',
'if v_blinded = ''No'' then',
' return true;',
'else',
' return false;',
'end if;',
'',
'end;',
'',
'----------',
'',
'SELECT 1 FROM DUAL',
'WHERE (SELECT BLINDED_FLAG FROM EDC_STUDY) = ''Yes'' ',
'AND :APP_EDC_ROLE_ID IN (13,18)',
'AND SUN_21010_DEV.EDC_AUTH_PKG.CRO_STUDY_BLIND_ARM_AUTH(:APP_EDC_STUDY_ID, :APP_EDC_USER_ID) = 1'))
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051764288390568653)
,p_db_column_name=>'STATUS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'STATUS'
,p_rpt_named_lov=>wwv_flow_imp.id(11051768263419568667)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051764359984568653)
,p_db_column_name=>'LOT_NO'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Lot <BR>No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'LOT_NO'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11063317563458261375)
,p_db_column_name=>'RANDOM_NO'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Randomization No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'RANDOM_NO'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2684545946653325693)
,p_db_column_name=>'AUDIT'
,p_display_order=>41
,p_column_identifier=>'W'
,p_column_label=>'Audit'
,p_column_link=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.:RP,76:P76_PAGE_ID,P76_TABLE_NAME,P76_PK_ID:201,EDC_IP_DETAIL,#IP_ID#'
,p_column_linktext=>'Audit'
,p_column_link_attr=>'onclick="return false;" class="edit-link"'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2192976925749668798)
,p_db_column_name=>'REGION'
,p_display_order=>51
,p_column_identifier=>'X'
,p_column_label=>'Region'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2007378841303748402)
,p_db_column_name=>'COUNTRY_ID'
,p_display_order=>61
,p_column_identifier=>'Y'
,p_column_label=>'Region'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(2007278703369980775)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2007378870663748403)
,p_db_column_name=>'STUDY_DEPOT_ID'
,p_display_order=>71
,p_column_identifier=>'Z'
,p_column_label=>'Depot'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(2008814727099514381)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1192866487014860342)
,p_db_column_name=>'AUDITT'
,p_display_order=>81
,p_column_identifier=>'AA'
,p_column_label=>'Audit'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8641343528384326004)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Dispensed IP'
,p_report_seq=>10
,p_report_alias=>'2040435'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'BOTTLE_NO:BATCH:LOT_NO:STUDY_SITE_ID:IP_STATUS:PATIENT_PROFILE_ID:RANDOM_NO:PATIENT_VISIT_ID'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(8641343957892326014)
,p_report_id=>wwv_flow_imp.id(8641343528384326004)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'IP_STATUS'
,p_operator=>'='
,p_expr=>'Dispensed to Subject'
,p_condition_sql=>'"IP_STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Dispensed to Subject''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10167921030278784266)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Inventory at Site'
,p_report_seq=>10
,p_report_alias=>'2833768'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'BOTTLE_NO:STUDY_ARM_ID:BATCH:LOT_NO:STUDY_SITE_ID:IP_STATUS'
,p_break_on=>'STUDY_SITE_ID:0:0:0:0:0'
,p_break_enabled_on=>'STUDY_SITE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(8844287900800022172)
,p_report_id=>wwv_flow_imp.id(10167921030278784266)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'IP_STATUS'
,p_operator=>'='
,p_expr=>'Received at Site'
,p_condition_sql=>'"IP_STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Received at Site''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10167922049437790141)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Site Wise IP Status'
,p_report_seq=>10
,p_report_alias=>'2833778'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'BOTTLE_NO:STUDY_ARM_ID:BATCH:LOT_NO:STUDY_SITE_ID:IP_STATUS:PATIENT_PROFILE_ID:RANDOM_NO:PATIENT_VISIT_ID'
,p_break_on=>'STUDY_SITE_ID:0:0:0:0:0'
,p_break_enabled_on=>'STUDY_SITE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10177795404997958287)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Retention Quantity at Site'
,p_report_seq=>10
,p_report_alias=>'2932511'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'BOTTLE_NO:STUDY_ARM_ID:BATCH:LOT_NO:STUDY_SITE_ID:IP_STATUS:PATIENT_PROFILE_ID:RANDOM_NO:PATIENT_VISIT_ID'
,p_break_on=>'STUDY_SITE_ID:0:0:0:0:0'
,p_break_enabled_on=>'STUDY_SITE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(9916042769732537481)
,p_report_id=>wwv_flow_imp.id(10177795404997958287)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'IP_STATUS'
,p_operator=>'='
,p_expr=>'Retention Quantity at Site'
,p_condition_sql=>'"IP_STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Retention Quantity at Site''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11051764486401568654)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1560916'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'BOTTLE_NO:STUDY_ARM_ID:STUDY_SITE_ID:IP_STATUS:PATIENT_PROFILE_ID:PATIENT_VISIT_ID:COUNTRY_ID:STUDY_DEPOT_ID:EXP_DATE_REAL:EXP_DATE_LABEL:AUDITT:'
,p_sort_column_1=>'BOTTLE_NO'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9400798836480866520)
,p_application_user=>'KRUNAL.BHATT'
,p_name=>'Inventory  at Sites'
,p_report_seq=>10
,p_display_rows=>100
,p_report_columns=>'BOTTLE_NO:STUDY_ARM_ID:BATCH:LOT_NO:STUDY_SITE_ID:IP_STATUS'
,p_break_on=>'STUDY_SITE_ID:0:0:0:0:0'
,p_break_enabled_on=>'STUDY_SITE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(9400798931167866520)
,p_report_id=>wwv_flow_imp.id(9400798836480866520)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'STATUS'
,p_operator=>'='
,p_expr=>'Received at Site'
,p_condition_sql=>'"STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Received at Site''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11062471477379823749)
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
 p_id=>wwv_flow_imp.id(1809465125687323376)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(11051762256709568647)
,p_button_name=>'ALL_DATA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Show All Kit Inventory'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10173132488461076399)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11051762256709568647)
,p_button_name=>'IP_AT_SITE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Kit at Site'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'javascript:showModalDialog(46,0);'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
':APP_EDC_ROLE_ID IN (13, 15, 16 /*Admin, PI, CRC */)',
'',
':APP_EDC_ROLE_ID IN (13, 26, 16,  15 /*Admin, CRC ,PI*/)'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10173132742428076402)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11051762256709568647)
,p_button_name=>'IP_AT_DEPOT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Kit at Depot'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'javascript:showModalDialog(48,0);'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
':APP_EDC_ROLE_ID IN (13, 18 /* Admin, DM*/)',
':APP_EDC_ROLE_ID IN (13, 18 /* Admin, DM*/)'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10159834407357824794)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11051762256709568647)
,p_button_name=>'REQUEST_IP'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Request IP'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_button_comment=>':APP_EDC_ROLE_ID = 17'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052126588936252114)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11051762256709568647)
,p_button_name=>'ADD_NEW_BATCH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add New Batch'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052126974522257385)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(11051762256709568647)
,p_button_name=>'UPLOAD_CSV'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload CSV'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1607960786293591904)
,p_name=>'P201_PAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11051762256709568647)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11051764860828568659)
,p_name=>'refresh report on study'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P201_STUDY_ID'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11051765164013568662)
,p_event_id=>wwv_flow_imp.id(11051764860828568659)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11051762256709568647)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11051765474807568662)
,p_name=>'ADD_NEW_BATCH(376)'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11052126588936252114)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11051765759442568663)
,p_event_id=>wwv_flow_imp.id(11051765474807568662)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:376:&APP_SESSION.::NO:RP,376:P376_STUDY_ID:&P201_STUDY_ID.'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'80'
,p_attribute_09=>'60'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11051765880403568663)
,p_name=>'Hide_show_Region'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P201_STUDY_ID'
,p_condition_element=>'P201_STUDY_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11051766168327568663)
,p_event_id=>wwv_flow_imp.id(11051765880403568663)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11051762256709568647)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11051766369742568663)
,p_event_id=>wwv_flow_imp.id(11051765880403568663)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11051762256709568647)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11051766861903568663)
,p_name=>'SET_APP_STUDY_ID'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P201_STUDY_ID'
,p_condition_element=>'P201_STUDY_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11051767183247568664)
,p_event_id=>wwv_flow_imp.id(11051766861903568663)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :APP_STUDY_ID := :P201_STUDY_ID;',
'END;'))
,p_attribute_02=>'P201_STUDY_ID'
,p_attribute_03=>'APP_STUDY_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11052188073042250333)
,p_name=>'Upload CSV(494)'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11052126974522257385)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11052188366257250334)
,p_event_id=>wwv_flow_imp.id(11052188073042250333)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:494:&APP_SESSION.::NO:RP,494:P494_STUDY_ID:&P201_STUDY_ID.'
,p_attribute_07=>'AUTO'
,p_da_action_comment=>'#uSuccessMessage'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10159834476764824795)
,p_name=>'Request IP button Click - Popup (Page 19)'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10159834407357824794)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10159834583743824796)
,p_event_id=>wwv_flow_imp.id(10159834476764824795)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:19:&APP_SESSION.:::19:::'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'50'
,p_attribute_09=>'50'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10173132568680076400)
,p_name=>'Edit IP at Site Click(Page 46)'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10173132488461076399)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10173132671495076401)
,p_event_id=>wwv_flow_imp.id(10173132568680076400)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:46:&APP_SESSION.:::46:::'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'90'
,p_attribute_09=>'70'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10173132886116076403)
,p_name=>'Edit IP at Depot Click (Page 48)'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10173132742428076402)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10173132915326076404)
,p_event_id=>wwv_flow_imp.id(10173132886116076403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:48:&APP_SESSION.:::48:::'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'90'
,p_attribute_09=>'50'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9904668616014693944)
,p_name=>'Refresh page on '
,p_event_sequence=>110
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE|DYNAMIC ACTION|modalpageautoclose'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9904668748404693945)
,p_event_id=>wwv_flow_imp.id(9904668616014693944)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7725993202714469190)
,p_name=>'Open Audit Trail for IP Popup (Page 41)'
,p_event_sequence=>120
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.ip_audit_trail'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#Assigned_IPs'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7725993611106469196)
,p_event_id=>wwv_flow_imp.id(7725993202714469190)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'&nbsp;'
,p_attribute_02=>'TRIG_ELEMENT_ATTR'
,p_attribute_05=>'href'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'70'
,p_attribute_09=>'50'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2688265140917116604)
,p_name=>'Open Model Audit Trail'
,p_event_sequence=>130
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.edit-link'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2688265560344116637)
,p_event_id=>wwv_flow_imp.id(2688265140917116604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'TRIG_ELEMENT_ATTR'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'75'
,p_attribute_09=>'90'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1809504513926891976)
,p_name=>'HIDE_REGION_DY_ACTION'
,p_event_sequence=>160
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1607960627453591902)
,p_name=>'SETTING DATA'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1809465125687323376)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P201_PAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1607960746394591903)
,p_event_id=>wwv_flow_imp.id(1607960627453591902)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''P201_PAGE'').value = ''A'';'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1607960923379591905)
,p_event_id=>wwv_flow_imp.id(1607960627453591902)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ALL_DATA'
,p_attribute_02=>'Y'
);
wwv_flow_imp.component_end;
end;
/
