prompt --application/pages/page_00048
begin
--   Manifest
--     PAGE: 00048
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
 p_id=>48
,p_tab_set=>'TS1'
,p_name=>'Edit Kit status at Depot'
,p_step_title=>'Edit Kit status at Depot'
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
 p_id=>wwv_flow_imp.id(11274992127326415438)
,p_name=>'Kit at Depot'
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
'     --, NVL(EDC_UTIL.GET_DRUG_INV_STATUS(IP_ID, IP_STATUS), 1) AS ORG_STATUS',
'     , nvl(IP_STATUS,1) AS ORG_STATUS',
'     , APEX_ITEM.HIDDEN(1, IP_ID) HDN_IP_ID',
'     , APEX_ITEM.SELECT_LIST_FROM_LOV(2, NULL, ''EDIT_IP_STATUS_AT_DEPOT'', NULL, ''YES'', NULL, ''-- Select --'') IP_STATUS',
'     , APEX_ITEM.HIDDEN(3, IP_STATUS) OLD_STATUS',
'     , APEX_ITEM.TEXTAREA(4, NULL, 1, 25, ''style="vertical-align: middle;/*display:none;*/" class="apex_disabled"'') REASON_FOR_CHANGE',
'     ,'''' AS "AUDIT"',
'  FROM EDC_IP_DETAIL',
' WHERE nvl(IP_STATUS,1) IN ( ''1''    -- Received at Depot',
'                  --, ''13''   -- Damaged at Depot',
'                  --, ''14''   -- Lost at Depot',
'                  --, ''15''   -- Qurantined at Depot',
'                  --, ''16''   -- Destroyed at Depot',
'                    , ''22''   -- Temprature Exceursion',
'                  --, ''23''   -- Not Received at Depot',
'                     )',
'   AND SUN_21010_DEV.EDC_AUTH_PKG.CHECK_REGION_ACCESS(COUNTRY_ID, STUDY_DEPOT_ID) = 1',
'   AND SUN_21010_DEV.EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(STUDY_SITE_ID) <> 0'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146133941701911984)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_break_cols=>'0'
,p_query_num_rows_item=>'P48_ROW_PER_PAGE'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11274992528051415439)
,p_query_column_id=>1
,p_column_alias=>'IP_ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11274992936833415441)
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
 p_id=>wwv_flow_imp.id(11274993693208415441)
,p_query_column_id=>3
,p_column_alias=>'ORG_STATUS'
,p_column_display_sequence=>3
,p_column_heading=>'Current Kit Status'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(12152719031561072760)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11274994529111415442)
,p_query_column_id=>4
,p_column_alias=>'HDN_IP_ID'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_column_format=>'PCT_GRAPH:::'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11274993363967415441)
,p_query_column_id=>5
,p_column_alias=>'IP_STATUS'
,p_column_display_sequence=>6
,p_column_heading=>'New Kit Status'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11275488599660600257)
,p_query_column_id=>6
,p_column_alias=>'OLD_STATUS'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_column_format=>'PCT_GRAPH:::'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5237220185377614224)
,p_query_column_id=>7
,p_column_alias=>'REASON_FOR_CHANGE'
,p_column_display_sequence=>7
,p_column_heading=>'Reason For Change'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5237220246678614225)
,p_query_column_id=>8
,p_column_alias=>'AUDIT'
,p_column_display_sequence=>8
,p_column_heading=>'Audit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.:RP:P76_TABLE_NAME,P76_PAGE_ID,P76_PK_ID:EDC_IP_DETAIL,48,#IP_ID#'
,p_column_linktext=>'Audit'
,p_column_link_attr=>'onclick="return false;" class="edit-link"'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11274994910154415443)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11274992127326415438)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11274995375513415445)
,p_name=>'P48_ROW_PER_PAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11274992127326415438)
,p_source=>'100'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5237219955651614222)
,p_name=>'Open Model Audit Trail'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.edit-link'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5237220113237614223)
,p_event_id=>wwv_flow_imp.id(5237219955651614222)
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
 p_id=>wwv_flow_imp.id(11274995708483415459)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update IP Status at Depot'
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
'				id, table_name, column_name, pk1, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc, Reason_for_change',
'			) values (',
'				EDC_IP_SHIP_HIST_seq.nextval, ''EDC_IP_DETAIL'', ''IP_ID'', apex_application.g_f01(I), null, ''U'', LOCALTIMESTAMP, :APP_USER, ''VARCHAR2'',',
'                CRO_IWRS_PKG.GET_IP_STATUS_TEXT(apex_application.g_f03(I)), CRO_IWRS_PKG.GET_IP_STATUS_TEXT(apex_application.g_f02(I)), apex_application.g_f04(I)',
'                     );',
'            COMMIT;',
'',
'       END IF;',
'   END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed...'
,p_internal_uid=>10174044940341911366
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5237219881054614221)
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
,p_internal_uid=>4136269112913110128
);
wwv_flow_imp.component_end;
end;
/
