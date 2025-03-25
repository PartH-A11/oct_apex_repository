prompt --application/pages/page_00046
begin
--   Manifest
--     PAGE: 00046
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
 p_id=>46
,p_tab_set=>'TS1'
,p_name=>'Edit IP status at Site'
,p_step_title=>'Edit Kit Status at Site'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function set_res_chng () {',
'  apex.server.process(',
'    ''SET_REASON_FOR_CHANGE'',                             // Process or AJAX Callback name',
'    {},  // Parameter "x01"',
'    {',
'      success: function (pData) {             // Success Javascript',
'        eval(pData);',
'      },',
'      dataType: "text"                        // Response type (here: plain text)',
'    }',
'  );',
'}'))
,p_javascript_code_onload=>'set_res_chng ();'
,p_step_template=>wwv_flow_imp.id(11017835689714707247)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11270506952962640896)
,p_name=>'Kit at Site'
,p_region_name=>'kit_at_site'
,p_template=>wwv_flow_imp.id(12146132256919911981)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT IP_ID',
'     , BOTTLE_NO',
'     , STUDY_SITE_ID   ',
'     --, NVL(EDC_UTIL.GET_DRUG_INV_STATUS(IP_ID, IP_STATUS), 1) AS ORG_STATUS',
'     , IP_STATUS ORG_STATUS',
'     , APEX_ITEM.HIDDEN(1, IP_ID) HDN_IP_ID',
'     , APEX_ITEM.SELECT_LIST_FROM_LOV(2, NULL, ''EDIT_IP_STATUS_AT_SITE'', NULL, ''YES'', NULL, ''-- Select --'') IP_STATUS',
'     , APEX_ITEM.HIDDEN(3, IP_STATUS) OLD_STATUS',
'     , APEX_ITEM.TEXTAREA(4, NULL, 1, 25, ''style="vertical-align: middle;/*display:none;*/" class="apex_disabled"'') REASON_FOR_CHANGE',
'     , '' '' "AUDIT"',
'  FROM EDC_IP_DETAIL a',
' WHERE IP_STATUS IN ( ''3''    -- Received at Site',
'                  --, ''7''    -- Expired at Site',
'                  --, ''8''    -- Retained at Site',
'                  --, ''9''    -- Damaged at Site',
'                  --, ''10''   -- Lost at Site',
'                  --, ''11''   -- Qurantined at Site',
'                    , ''12''   -- Destroyed at Site',
'                  --, ''17''   -- Unquarantined at Site',
'                  --, ''20''   -- Not Received at Site',
'                    , ''21''   -- Temperature Excursion at Site',
'                  --  , ''8'' -- Retention Quantity at Site',
'                    )',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146133941701911984)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_break_cols=>'0'
,p_query_num_rows_item=>'P46_ROW_PER_PAGE'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT IP_ID',
'     , BOTTLE_NO',
'     , STUDY_SITE_ID   ',
'     --, NVL(EDC_UTIL.GET_DRUG_INV_STATUS(IP_ID, IP_STATUS), 1) AS ORG_STATUS',
'     , IP_STATUS ORG_STATUS',
'     , APEX_ITEM.HIDDEN(1, IP_ID) HDN_IP_ID',
'     , APEX_ITEM.SELECT_LIST_FROM_LOV(2, NULL, ''EDIT_IP_STATUS_AT_SITE'', NULL, ''YES'', NULL, ''-- Select --'') IP_STATUS',
'     , APEX_ITEM.HIDDEN(3, IP_STATUS) OLD_STATUS',
'  FROM EDC_IP_DETAIL a',
' WHERE IP_STATUS IN (''3'', /*''7'',*/ ''8'' , ''9'' ,''10'' ,''11'', ''12'', ''17'', ''20'', ''21'') /*Received at Site, Expired at Site, Retained at Site, Damaged at Site, Lost at Site, Qurantined at Site, Destroyed at Site, Unquarantined at Site, Not Received at Site'
||', Temperature Excursion at Site*/',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11270507131209640898)
,p_query_column_id=>1
,p_column_alias=>'IP_ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11274079017404580450)
,p_query_column_id=>2
,p_column_alias=>'BOTTLE_NO'
,p_column_display_sequence=>2
,p_column_heading=>'Kit #'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11274082450352580484)
,p_query_column_id=>3
,p_column_alias=>'STUDY_SITE_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Site'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(12152747731580527615)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11274082220498580482)
,p_query_column_id=>4
,p_column_alias=>'ORG_STATUS'
,p_column_display_sequence=>3
,p_column_heading=>'Current Kit Status'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(12152767440636550843)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11274082544035580485)
,p_query_column_id=>5
,p_column_alias=>'HDN_IP_ID'
,p_column_display_sequence=>6
,p_use_as_row_header=>'N'
,p_column_format=>'PCT_GRAPH:::'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11274080263021580462)
,p_query_column_id=>6
,p_column_alias=>'IP_STATUS'
,p_column_display_sequence=>8
,p_column_heading=>'New Kit Status'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11275488489609600256)
,p_query_column_id=>7
,p_column_alias=>'OLD_STATUS'
,p_column_display_sequence=>7
,p_use_as_row_header=>'N'
,p_column_format=>'PCT_GRAPH:::'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5235948057076138320)
,p_query_column_id=>8
,p_column_alias=>'REASON_FOR_CHANGE'
,p_column_display_sequence=>9
,p_column_heading=>'Reason For Change'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5235948131614138321)
,p_query_column_id=>9
,p_column_alias=>'AUDIT'
,p_column_display_sequence=>10
,p_column_heading=>'Audit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.:RP:P76_TABLE_NAME,P76_PAGE_ID,P76_PK_ID:EDC_IP_DETAIL,46,#IP_ID#'
,p_column_linktext=>'Audit'
,p_column_link_attr=>'onclick="return false;" class="edit-link"'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11274082653228580486)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11270506952962640896)
,p_button_name=>'APPLY'
,p_button_static_id=>'apply'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
,p_button_comment=>'javascript:apex.confirm(''Are you sure you want to update Kit Status?'',''APPLY'');'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11274163727441861994)
,p_name=>'P46_ROW_PER_PAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11270506952962640896)
,p_source=>'100'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235948220676138322)
,p_name=>'Open Model Audit Trail'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.edit-link'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235948381826138323)
,p_event_id=>wwv_flow_imp.id(5235948220676138322)
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11274082767704580487)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update IP Status at Site'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   FOR i IN 1 .. apex_application.g_f01.COUNT',
'   LOOP',
'       IF apex_application.g_f02(I) IS NOT NULL THEN',
'           UPDATE EDC_IP_DETAIL',
'              SET IP_STATUS = apex_application.g_f02(I)',
'            WHERE IP_ID = apex_application.g_f01(I);',
'',
'            COMMIT;',
'',
'            insert into EDC_IP_SHIP_HIST (',
'				id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc, REASON_FOR_CHANGE',
'			) values (',
'				EDC_IP_SHIP_HIST_seq.nextval, ''EDC_IP_DETAIL'', ''IP_ID'', apex_application.g_f01(I), null, ''U'', LOCALTIMESTAMP, :APP_USER, ''VARCHAR2'',',
'                CRO_IWRS_PKG.GET_IP_STATUS_TEXT(apex_application.g_f03(I)), CRO_IWRS_PKG.GET_IP_STATUS_TEXT(apex_application.g_f02(I)),apex_application.g_f04(I)',
'                     );',
'            COMMIT;',
'       END IF;',
'   END LOOP;',
'',
'  FOR J IN (SELECT STUDY_SITE_ID',
'              FROM EDC_STUDY_SITES',
'             WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(STUDY_SITE_ID) = 1)',
'  LOOP',
'    AUTO_SHIPMENT(J.STUDY_SITE_ID);',
'  END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed...'
,p_internal_uid=>10173131999563076394
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*declare',
'v_table varchar2(4000);',
'v_kitno varchar2(20);',
'v_study_Site_id number;',
'BEGIN',
'   v_table := ''<table border="1">',
'  <tr>',
'    <th>Kit No.</th>',
'    <th>Old Status</th>',
'    <th>New Status</th>',
'  </tr>'';',
'   FOR i IN 1 .. apex_application.g_f01.COUNT',
'   LOOP',
'       IF apex_application.g_f02(i) IS NOT NULL THEN',
'       ',
'          SELECT bottle_no,study_site_id',
'            into v_kitno,v_study_Site_id',
'            FROM edc_ip_detail ',
'           WHERE ip_id =apex_application.g_f01(i);',
'            ',
'         v_table := v_table ||''<tr>',
'                              <th>''||v_kitno||''</th>',
'                              <th>''||CRO_IWRS_PKG.GET_IP_STATUS_TEXT(apex_application.g_f03(i))||''</th>',
'                              <th>''||CRO_IWRS_PKG.GET_IP_STATUS_TEXT(apex_application.g_f02(i))||''</th>',
'                              </tr>'';   ',
'          ',
'           UPDATE EDC_IP_DETAIL',
'              SET IP_STATUS = apex_application.g_f02(i)',
'            WHERE IP_ID = apex_application.g_f01(i);',
'',
'            insert into EDC_REASON_FOR_CH_HIST (',
'				id, table_name, column_name, pk1, Reason_for_change, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc',
'			) values (',
'				EDC_REASON_FOR_CH_HIST_seq.nextval, ''EDC_IP_DETAIL'', ''IP_ID'', apex_application.g_f01(I), null, null, ''U'', LOCALTIMESTAMP, :APP_USER, ''VARCHAR2'', CRO_IWRS_PKG.GET_IP_STATUS_TEXT(apex_application.g_f03(i)), CRO_IWRS_PKG.GET_IP_STATUS_TEXT(apex_appl'
||'ication.g_f02(i))',
'                     );',
'        ',
'       END IF;',
'   END LOOP;',
'    v_table := v_table ||''</table>'';',
'    ',
'    EDC_MAIL.IP_UPDATED(v_study_Site_id,v_table);     ',
'    ',
'END;',
'',
'*/'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5235948425652138324)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_REASON_FOR_CHANGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  TYPE DY_JQ IS TABLE OF CLOB;',
'  N_JQ DY_JQ := DY_JQ();',
'BEGIN',
'  N_JQ.EXTEND;',
'  N_JQ(N_JQ.COUNT) := ''$(''''head'''').append("<style>.avi_in{border-color: darkred;background-color: aliceblue;box-shadow: 0 0 5px rgb(232 15 15);border-radius: 5px;}</style>");'';',
'',
'  N_JQ.EXTEND;',
'  N_JQ(N_JQ.COUNT) := ''function set_dynamic(){',
'    $(''''select[name="f02"]'''').change(function(){',
'        var a = $(this).val();',
'        //var b = $(this).parent().next().children().show();',
'        var b = $(this).parent().next().children();',
'        var c = b.prop(''''class'''');',
'        //console.log(a+'''' ''''+b);',
'        if (a != '''''''' &&~c.indexOf(''''apex_disabled'''')){',
'            b.removeClass(''''apex_disabled'''').addClass(''''avi_req'''');',
'        }',
'        else if (a == ''''''''){',
'            b.val('''''''');',
'            b.addClass(''''apex_disabled'''').removeClass(''''avi_req'''');',
'        }',
'    });',
'',
'    $(''''#apply'''').click(function(){',
'        var a = 0;',
'',
'        $(''''.avi_req'''').each(function(){',
'            var b = $(this).val();',
'            if (b.trim() == ''''''''){',
'                $(this).addClass(''''avi_in'''');',
'                a = a + 1;',
'            }',
'        });',
'        if (a == 0){',
'            apex.confirm("Are you sure you want to update Kit Status?","APPLY");',
'        }',
'        else if(a > 0){',
'            alert("Please add reason in highlighted fields.");',
'        }',
'',
'        $(''''.avi_in'''').keydown(function(){',
'            $(this).removeClass(''''avi_in'''');',
'        })',
'    })',
'}',
'',
'set_dynamic();'';',
'',
'',
'  IF N_JQ.COUNT > 0 THEN',
'    FOR I IN N_JQ.FIRST..N_JQ.LAST LOOP',
'--      DOPL(N_JQ(I));',
'      HTP.P(N_JQ(I));',
'    END LOOP;',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4134997657510634231
);
wwv_flow_imp.component_end;
end;
/
