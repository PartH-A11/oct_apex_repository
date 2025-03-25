prompt --application/pages/page_00139
begin
--   Manifest
--     PAGE: 00139
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
 p_id=>139
,p_tab_set=>'TS1'
,p_name=>'IWRS - Study Statistical Analysis'
,p_alias=>'IWRS-STUDY-STATISTICAL-ANALYSIS'
,p_step_title=>'IWRS - Study Statistical Analysis'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ssa_csv(){',
'    var v_pat;',
'    var v_flag;',
'    var v_site = $v("P139_SITE_RIGHT");',
'    var m = v_site.length < 1;',
'    var crf = $v("P139_VISIT");',
'    if($v("P139_PATIENT") != ""){v_pat = $v("P139_PATIENT");}else{v_pat=0;}',
'    if($v("P139_FLAG") != ""){v_flag= $v("P139_FLAG");}else{v_flag=0;}',
'if (m)',
'    {',
'        alert("Please Select Any Site.");',
'    }',
'    else',
'        {',
'            var res = crf.split('':'');',
'            for ( var i in res)',
'                {',
'                    if (res[i]==1) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_1&_repFormat=csv&_dataSource=default&_outFilename=Visit 1 (Screening).csv&_repLocale=en_US&_re'
||'pEncoding=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==2) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_2&_repFormat=csv&_dataSource=default&_outFilename=Visit 2.csv&_repLocale=en_US&_repEncoding=UT'
||'F-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==3) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_3&_repFormat=csv&_dataSource=default&_outFilename=Visit 3.csv&_repLocale=en_US&_repEncoding=UT'
||'F-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==4) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_4&_repFormat=csv&_dataSource=default&_outFilename=Visit 4.csv&_repLocale=en_US&_repEncoding=UT'
||'F-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==5) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_5&_repFormat=csv&_dataSource=default&_outFilename=Visit 5.csv&_repLocale=en_US&_repEncoding=UT'
||'F-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==6) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_6&_repFormat=csv&_dataSource=default&_outFilename=Visit 6.csv&_repLocale=en_US&_repEncoding=UT'
||'F-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==7) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_7&_repFormat=csv&_dataSource=default&_outFilename=Visit 7.csv&_repLocale=en_US&_repEncoding=UT'
||'F-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==8) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_8&_repFormat=csv&_dataSource=default&_outFilename=Visit 8.csv&_repLocale=en_US&_repEncoding=UT'
||'F-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==9) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_9&_repFormat=csv&_dataSource=default&_outFilename=Visit 9.csv&_repLocale=en_US&_repEncoding=UT'
||'F-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==10) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_10&_repFormat=csv&_dataSource=default&_outFilename=Visit 10.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==11) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_11&_repFormat=csv&_dataSource=default&_outFilename=Visit 11.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==12) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_12&_repFormat=csv&_dataSource=default&_outFilename=Visit 12.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==13) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_13&_repFormat=csv&_dataSource=default&_outFilename=Visit 13.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==14) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_14&_repFormat=csv&_dataSource=default&_outFilename=Visit 14.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==15) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_15&_repFormat=csv&_dataSource=default&_outFilename=Visit 15.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==16) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_16&_repFormat=csv&_dataSource=default&_outFilename=Visit 16.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==17) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_17&_repFormat=csv&_dataSource=default&_outFilename=Visit 17.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==18) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_18&_repFormat=csv&_dataSource=default&_outFilename=Visit 18.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==19) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_19&_repFormat=csv&_dataSource=default&_outFilename=Visit 19.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==20) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_20&_repFormat=csv&_dataSource=default&_outFilename=Visit 20.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==21) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_21&_repFormat=csv&_dataSource=default&_outFilename=Visit 21.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==22) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_22&_repFormat=csv&_dataSource=default&_outFilename=Visit 22.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==23) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_23&_repFormat=csv&_dataSource=default&_outFilename=Visit 23.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==24) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_24&_repFormat=csv&_dataSource=default&_outFilename=Visit 24.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==25) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_25&_repFormat=csv&_dataSource=default&_outFilename=Visit 25.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==26) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_26&_repFormat=csv&_dataSource=default&_outFilename=Visit 26.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==27) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_27&_repFormat=csv&_dataSource=default&_outFilename=Visit 27.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==28) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_28&_repFormat=csv&_dataSource=default&_outFilename=Visit 28.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==29) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_29&_repFormat=csv&_dataSource=default&_outFilename=Visit 29.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==30) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_30&_repFormat=csv&_dataSource=default&_outFilename=Visit 30.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==31) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_31&_repFormat=csv&_dataSource=default&_outFilename=Visit 31.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==32) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_32&_repFormat=csv&_dataSource=default&_outFilename=Visit 32.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==33) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_33&_repFormat=csv&_dataSource=default&_outFilename=Visit 33.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==34) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_34&_repFormat=csv&_dataSource=default&_outFilename=Visit 34.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==35) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_35&_repFormat=csv&_dataSource=default&_outFilename=Visit 35.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==36) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_36&_repFormat=csv&_dataSource=default&_outFilename=Visit 36.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==37) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_37&_repFormat=csv&_dataSource=default&_outFilename=Visit 37.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==38) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_38&_repFormat=csv&_dataSource=default&_outFilename=Visit 38.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==39) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_39&_repFormat=csv&_dataSource=default&_outFilename=Visit 39.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==40) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_40&_repFormat=csv&_dataSource=default&_outFilename=Visit 40.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==41) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_41&_repFormat=csv&_dataSource=default&_outFilename=Visit 41.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==42) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_42&_repFormat=csv&_dataSource=default&_outFilename=Visit 42.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==43) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_43&_repFormat=csv&_dataSource=default&_outFilename=Visit 43.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==44) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_44&_repFormat=csv&_dataSource=default&_outFilename=Visit 44.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==45) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_45&_repFormat=csv&_dataSource=default&_outFilename=Visit 45.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==46) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_46&_repFormat=csv&_dataSource=default&_outFilename=Visit 46.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==47) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_47&_repFormat=csv&_dataSource=default&_outFilename=Visit 47.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==48) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_48&_repFormat=csv&_dataSource=default&_outFilename=Visit 48.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==49) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_49&_repFormat=csv&_dataSource=default&_outFilename=Visit 49.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==50) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_50&_repFormat=csv&_dataSource=default&_outFilename=Visit 50.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==51) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_51&_repFormat=csv&_dataSource=default&_outFilename=Visit 51.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==52) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_52&_repFormat=csv&_dataSource=default&_outFilename=Visit 52.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==53) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_53&_repFormat=csv&_dataSource=default&_outFilename=Visit 53.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==54) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_54&_repFormat=csv&_dataSource=default&_outFilename=Visit 54.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==55) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_55&_repFormat=csv&_dataSource=default&_outFilename=Visit 55.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==56) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_56&_repFormat=csv&_dataSource=default&_outFilename=Visit 56.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==57) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_57&_repFormat=csv&_dataSource=default&_outFilename=Visit 57.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==58) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_58&_repFormat=csv&_dataSource=default&_outFilename=Visit 58.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==59) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_59&_repFormat=csv&_dataSource=default&_outFilename=Visit 59.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==60) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_60&_repFormat=csv&_dataSource=default&_outFilename=Visit 60.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==61) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_61&_repFormat=csv&_dataSource=default&_outFilename=Visit 61.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==62) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_62&_repFormat=csv&_dataSource=default&_outFilename=Visit 62.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==63) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_63&_repFormat=csv&_dataSource=default&_outFilename=Visit 63.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==64) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_64&_repFormat=csv&_dataSource=default&_outFilename=Visit 64.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==65) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_65&_repFormat=csv&_dataSource=default&_outFilename=Visit 65.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==66) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_66&_repFormat=csv&_dataSource=default&_outFilename=Visit 66.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==67) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_67&_repFormat=csv&_dataSource=default&_outFilename=Visit 67.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==68) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_68&_repFormat=csv&_dataSource=default&_outFilename=Visit 68.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==69) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_69&_repFormat=csv&_dataSource=default&_outFilename=Visit 69.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==70) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_70&_repFormat=csv&_dataSource=default&_outFilename=Visit 70.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==71) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_71&_repFormat=csv&_dataSource=default&_outFilename=Visit 71.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==72) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_72&_repFormat=csv&_dataSource=default&_outFilename=Visit 72.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==73) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_73&_repFormat=csv&_dataSource=default&_outFilename=Visit 73.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==74) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_74&_repFormat=csv&_dataSource=default&_outFilename=Visit 74.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==75) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_75&_repFormat=csv&_dataSource=default&_outFilename=Visit 75.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==76) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_76&_repFormat=csv&_dataSource=default&_outFilename=Visit 76.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==77) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_77&_repFormat=csv&_dataSource=default&_outFilename=Visit 77.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==78) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_78&_repFormat=csv&_dataSource=default&_outFilename=Visit 78.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==79) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_79&_repFormat=csv&_dataSource=default&_outFilename=Visit 79.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==80) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_80&_repFormat=csv&_dataSource=default&_outFilename=Visit 80.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==81) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_81&_repFormat=csv&_dataSource=default&_outFilename=Visit 81.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==82) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_82&_repFormat=csv&_dataSource=default&_outFilename=Visit 82.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==83) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_83&_repFormat=csv&_dataSource=default&_outFilename=Visit 83.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==84) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_84&_repFormat=csv&_dataSource=default&_outFilename=Visit 84.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==85) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_85&_repFormat=csv&_dataSource=default&_outFilename=Visit 85.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==86) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_86&_repFormat=csv&_dataSource=default&_outFilename=Visit 86.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==87) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_87&_repFormat=csv&_dataSource=default&_outFilename=Visit 87.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==88) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_88&_repFormat=csv&_dataSource=default&_outFilename=Visit 88.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==89) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_89&_repFormat=csv&_dataSource=default&_outFilename=Visit 89.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==90) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_90&_repFormat=csv&_dataSource=default&_outFilename=Visit 90.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==91) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_91&_repFormat=csv&_dataSource=default&_outFilename=Visit 91.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==92) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_92&_repFormat=csv&_dataSource=default&_outFilename=Visit 92.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==93) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_93&_repFormat=csv&_dataSource=default&_outFilename=Visit 93.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==94) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_94&_repFormat=csv&_dataSource=default&_outFilename=Visit 94.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==95) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_95&_repFormat=csv&_dataSource=default&_outFilename=Visit 95.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                }',
'            }',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if (res[i]==91) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_91&_repFormat=csv&_dataSource=default&_outFilename=Visit 91.csv&_repLocale=en_US&_repEncoding=UTF-8&P_SITE=''+$v('
||'"P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==92) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_92&_repFormat=csv&_dataSource=default&_outFilename=Visit 92.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==93) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_93&_repFormat=csv&_dataSource=default&_outFilename=Visit 93.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==94) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_94&_repFormat=csv&_dataSource=default&_outFilename=Visit 94.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==95) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_95&_repFormat=csv&_dataSource=default&_outFilename=Visit 95.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==96) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_96&_repFormat=csv&_dataSource=default&_outFilename=Visit 96.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==97) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_97&_repFormat=csv&_dataSource=default&_outFilename=Visit 97.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==98) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_98&_repFormat=csv&_dataSource=default&_outFilename=Visit 98.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==99) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_99&_repFormat=csv&_dataSource=default&_outFilename=Visit 99.csv&_repLocale=en_US&_repEncoding'
||'=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'                    if (res[i]==100) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/CSV_VISIT_REPORT/VISIT_100&_repFormat=csv&_dataSource=default&_outFilename=Visit 100.csv&_repLocale=en_US&_repEncod'
||'ing=UTF-8&P_SITE=''+$v("P139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT"),''_blank'')};',
'    '))
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(773572395204366545)
,p_plug_name=>'RADIO LIST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179264140407886)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(773572599741366547)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045181058343407888)
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(11061305288454172215)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11061512871844880215)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(773572623848366548)
,p_plug_name=>'IWRS - Study Statistical Analysis'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_plug_comment=>',APP_EDC_SITE_TYPE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(785150564844550930)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11045189164405407923)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(785165245781949713)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(773572623848366548)
,p_button_name=>'DOWNLOAD_XLS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download XLS'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(785165540262949716)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(773572623848366548)
,p_button_name=>'DOWNLOAD_CSV'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'DOWNLOAD CSV'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(773572435159366546)
,p_name=>'P139_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(773572395204366545)
,p_item_default=>':APP_USER_NAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(773572779363366549)
,p_name=>'P139_RADIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(773572623848366548)
,p_prompt=>'IWRS/ePRO'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:IWRS;2'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(773572866568366550)
,p_name=>'P139_SITE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(773572623848366548)
,p_prompt=>'<b>Sites</b>'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.site_number || '' ('' || FIRST_NAME || '' '' || LAST_NAME || '' - '' || b.invname || '')'' D',
'     , A.STUDY_SITE_ID R',
'  FROM EDC_STUDY_SITES A,',
'       EDC_SITES B',
' WHERE A.SITE_ID = B.SITE_ID',
'   AND A.STUDY_ID = :APP_EDC_STUDY_ID',
'   AND SUN_21010_DEV.EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
' ORDER BY 1'))
,p_cHeight=>5
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ALL'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(773572927696366551)
,p_name=>'P139_PATIENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(773572623848366548)
,p_prompt=>'<b>Subjects</b>'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SCRNO||'' (''||PTINTL||'')'' D,PATIENT_PROFILE_ID R FROM EDC_PATIENT_PROFILE',
' WHERE STUDY_SITE_ID IN (SELECT SHUTTLE_VALUE FROM REPORT_SHUTTLE_VALUES WHERE SHUTTLE_TYPE = ''SITE'' AND UPPER(USERNAME) = UPPER(:APP_USER_NAME))',
' --AND EPRO_STATUS IS NOT NULL',
'order by 1'))
,p_lov_cascade_parent_items=>'P139_SITE'
,p_ajax_items_to_submit=>'P139_SITE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>5
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ALL'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(773573102761366552)
,p_name=>'P139_VISIT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(773572623848366548)
,p_prompt=>'<b>Visits</b>'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT VISIT_NAME AS D, PARAM_ID AS R',
'               FROM EDC_PATIENT_VISIT_PARAMS',
'                ORDER BY 2 ASC'))
,p_cHeight=>5
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ALL'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(773573151314366553)
,p_name=>'P139_SECTION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(773572623848366548)
,p_prompt=>'<b>CRF</b>'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT A.CRF_NAME||''-''||A.CRF_SHORT_NAME D, A.CRF_ID R',
'FROM EDC_CRF_MASTER A, EDC_PATIENT_DIARY_PAGES B',
'WHERE A.STUDY_ID = :APP_EDC_STUDY_ID',
'AND A.CRF_ID = B.CRF_ID',
'AND A.PARENT_PAGE IS NULL',
'AND B.SCHEDULE_ID IN (SELECT SHUTTLE_VALUE FROM REPORT_SHUTTLE_VALUES WHERE SHUTTLE_TYPE = ''VISIT'' AND UPPER(USERNAME) = UPPER(:APP_USER_NAME))',
'--AND A.CRF_ID NOT IN (28,30)',
'AND CRF_PAGE_NO IN (100,509,510)',
'ORDER BY A.CRF_ID;'))
,p_lov_cascade_parent_items=>'P139_VISIT'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>5
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ALL'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(773573219204366554)
,p_name=>'P139_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(773572623848366548)
,p_item_default=>'to_char(LOCALTIMESTAMP,''DD-MON-YYYY'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(773573408178366555)
,p_name=>'set site'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P139_SITE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(773573507516366556)
,p_event_id=>wwv_flow_imp.id(773573408178366555)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    tab apex_application_global.vc_arr2;',
'    v_value varchar2(400) := '''';',
'begin',
'    ',
'    tab := apex_util.string_to_table(:P139_SITE);',
'    delete from REPORT_SHUTTLE_VALUES WHERE SHUTTLE_TYPE = ''SITE'' AND UPPER(USERNAME) = UPPER(:APP_USER_NAME);',
'    commit;',
'    ',
'    delete from REPORT_SHUTTLE_VALUES WHERE SHUTTLE_TYPE = ''PATIENT'' AND UPPER(USERNAME) = UPPER(:APP_USER_NAME);',
'    commit;',
'    ',
'    for i in 1..tab.count loop',
'        ',
'        insert into REPORT_SHUTTLE_VALUES(SHUTTLE_TYPE,SHUTTLE_VALUE,USERNAME) values (''SITE'',tab(i),:APP_USER_NAME);',
'        commit;',
'        ',
'    end loop;',
'    ',
'end;    '))
,p_attribute_02=>'APP_USER_NAME,P139_SITE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(773573580968366557)
,p_event_id=>wwv_flow_imp.id(773573408178366555)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P139_PATIENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(773573635083366558)
,p_name=>'Set Patient'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P139_PATIENT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(773573723885366559)
,p_event_id=>wwv_flow_imp.id(773573635083366558)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    tab apex_application_global.vc_arr2;',
'    v_value varchar2(400) := '''';',
'begin',
'    ',
'    tab := apex_util.string_to_table(:P139_PATIENT);',
'    ',
'    delete from REPORT_SHUTTLE_VALUES WHERE SHUTTLE_TYPE = ''PATIENT'' AND UPPER(USERNAME) = UPPER(:APP_USER_NAME);',
'    commit;',
'    ',
'    for i in 1..tab.count loop',
'        ',
'        insert into REPORT_SHUTTLE_VALUES(SHUTTLE_TYPE,SHUTTLE_VALUE,USERNAME) values(''PATIENT'',tab(i),:APP_USER_NAME);',
'        commit;',
'        ',
'    end loop;',
'    ',
'end;    '))
,p_attribute_02=>'APP_USER_NAME,P139_PATIENT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(773573909716366560)
,p_name=>'Set Visit'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P139_VISIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(773573983903366561)
,p_event_id=>wwv_flow_imp.id(773573909716366560)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    tab apex_application_global.vc_arr2;',
'    v_value varchar2(400) := '''';',
'begin',
'    ',
'    tab := apex_util.string_to_table(:P139_VISIT);',
'    delete from REPORT_SHUTTLE_VALUES WHERE SHUTTLE_TYPE = ''VISIT'' AND UPPER(USERNAME) = UPPER(:APP_USER_NAME);',
'    commit;',
'    ',
'    delete from REPORT_SHUTTLE_VALUES WHERE SHUTTLE_TYPE = ''SECTION'' AND UPPER(USERNAME) = UPPER(:APP_USER_NAME);',
'    commit;',
'    ',
'    for i in 1..tab.count loop',
'        ',
'        insert into REPORT_SHUTTLE_VALUES(SHUTTLE_TYPE,SHUTTLE_VALUE,USERNAME) values(''VISIT'',tab(i),:APP_USER_NAME);',
'        commit;',
'',
'    end loop;',
'',
'end;'))
,p_attribute_02=>'APP_USER_NAME,P139_VISIT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(773574097581366562)
,p_event_id=>wwv_flow_imp.id(773573909716366560)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P139_SECTION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(785165374279949714)
,p_name=>'Download Xls'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(785165245781949713)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(785165502913949715)
,p_event_id=>wwv_flow_imp.id(785165374279949714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var v_pat;',
'var v_flag;',
'//var v_study = $v("P139_STUDY_ID");',
'var v_site = $v("P139_SITE_RIGHT");//P139_SITES_RIGHT',
'var m = v_site.length < 1;',
'',
'',
'if($v("P139_PATIENT") != ""){v_pat = $v("P139_PATIENT");}else{v_pat=0;}',
'if($v("P139_FLAG") != ""){v_flag= $v("P139_FLAG");}else{v_flag=0;}',
'',
'if (m)',
'    {  ',
'        alert("Please Select Any Site.");',
'    }',
'',
'else',
'{',
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IWRS_STATISTICAL_ANALYSIS/VISIT_REPORT/IWRS_MAIN&_repFormat=xlsx&_dataSource=default&_outFilename=IWRS STATISTICAL ANALYSIS.xlsx&_repLocale=en_US&_repEncoding=UTF-8&P_SITE=''+$v("P'
||'139_SITE")+''&P_PATIENT=''+$v("P139_PATIENT")+''&P_VISIT=''+$v("P139_VISIT"),''_blank'');',
'}    '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(785165693300949717)
,p_name=>'Download CSV'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(785165540262949716)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(785165750700949718)
,p_event_id=>wwv_flow_imp.id(785165693300949717)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'ssa_csv();'
);
wwv_flow_imp.component_end;
end;
/
