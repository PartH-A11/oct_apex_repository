prompt --application/pages/page_00069
begin
--   Manifest
--     PAGE: 00069
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
 p_id=>69
,p_tab_set=>'TS1'
,p_name=>'Visit wise Subject Summary'
,p_step_title=>'Visit wise Subject Summary'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9419035560673353238)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9419036127375353240)
,p_plug_name=>'Visit wise Subject Summary'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'  FROM (SELECT A.PARAM_ID, A.PATIENT_VISIT_ID PP_ID, B.STUDY_SITE_ID',
'          FROM EDC_PATIENT_VISIT A',
'          JOIN EDC_PATIENT_PROFILE B',
'            ON A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID',
'       where EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(b.STUDY_SITE_ID) <> 0)',
' PIVOT (COUNT(PP_ID) AS PP_ID_COUNT FOR (PARAM_ID) IN (1 AS Visit_1',
',2 AS Visit_2',
',3 AS Visit_3',
',4 AS Visit_4',
',5 AS Visit_5',
',6 AS Visit_6',
',7 AS Visit_7',
',8 AS Visit_8',
',9 AS Visit_9',
',10 AS Visit_10',
',11 AS Visit_11',
',12 AS Visit_12',
',13 AS Visit_13',
',14 AS Visit_14',
',15 AS Visit_15',
',16 AS Visit_16',
',17 AS Visit_17',
',18 AS Visit_18',
',19 AS Visit_19',
',20 AS Visit_20',
',21 AS Visit_21',
',22 AS Visit_22',
',23 AS Visit_23',
',24 AS Visit_24',
',25 AS Visit_25',
',26 AS Visit_26',
',27 AS Visit_27',
',28 AS Visit_28',
',29 AS Visit_29',
',30 AS Visit_30',
',31 AS Visit_31',
',32 AS Visit_32',
',33 AS Visit_33',
',34 AS Visit_34',
',35 AS Visit_35',
',36 AS Visit_36',
',37 AS Visit_37',
',38 AS Visit_38',
',39 AS Visit_39',
',40 AS Visit_40',
',41 AS Visit_41',
',42 AS Visit_42',
',43 AS Visit_43',
',44 AS Visit_44',
',45 AS Visit_45',
',46 AS Visit_46',
',47 AS Visit_47',
',48 AS Visit_48',
',49 AS Visit_49',
',50 AS Visit_50',
',51 AS Visit_51',
',52 AS Visit_52',
',53 AS Visit_53',
',54 AS Visit_54',
',55 AS Visit_55',
',56 AS Visit_56',
',57 AS Visit_57',
',58 AS Visit_58',
',59 AS Visit_59',
',60 AS Visit_60',
',61 AS Visit_61',
',62 AS Visit_62',
',63 AS Visit_63',
',64 AS Visit_64',
',65 AS Visit_65',
',66 AS Visit_66',
',67 AS Visit_67',
',68 AS Visit_68',
',69 AS Visit_69',
',70 AS Visit_70',
',71 AS Visit_71',
',72 AS Visit_72',
',73 AS Visit_73',
',74 AS Visit_74',
',75 AS Visit_75',
',76 AS Visit_76',
',77 AS Visit_77',
',78 AS Visit_78',
',79 AS Visit_79',
',80 AS Visit_80',
',81 AS Visit_81',
',82 AS Visit_82',
',83 AS Visit_83',
',84 AS Visit_84',
',85 AS Visit_85',
',86 AS Visit_86',
',87 AS Visit_87',
',88 AS Visit_88',
',89 AS Visit_89',
',90 AS Visit_90',
',91 AS Visit_91',
',92 AS Visit_92',
',93 AS Visit_93',
',94 AS Visit_94',
',95 AS Visit_95',
',96 AS Visit_96',
',97 AS Visit_97',
',98 AS Visit_98',
',99 AS Visit_99',
',100 AS Visit_100',
',101 AS Visit_101',
',102 AS Visit_102',
',103 AS Visit_103',
',104 AS Visit_104',
',105 AS Visit_105',
',106 AS Visit_106',
',107 AS Visit_107',
',108 AS Visit_108',
',109 AS Visit_109',
',110 AS Visit_110',
',111 AS Visit_111',
',112 AS Visit_112',
',113 AS Visit_113',
',114 AS Visit_114',
',115 AS Visit_115',
',116 AS Visit_116',
',117 AS Visit_117',
',118 AS Visit_118',
',119 AS Visit_119',
',120 AS Visit_120',
',121 AS Visit_121',
',122 AS Visit_122',
',123 AS Visit_123',
',124 AS Visit_124',
',125 AS Visit_125',
',126 AS Visit_126',
',127 AS Visit_127',
',128 AS Visit_128',
',129 AS Visit_129',
',130 AS Visit_130',
',131 AS Visit_131',
',132 AS Visit_132',
',133 AS Visit_133))',
' ORDER BY STUDY_SITE_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        ',
'        ',
'        ',
'        /*(1 AS Screening,',
'                                                       2 AS Cycle_1,',
'                                                       3 AS Cycle_2,',
'                                                       4 AS Cycle_3,',
'                                                       5 AS Cycle_4,',
'                                                       6 AS Cycle_5,',
'                                                       7 AS Cycle_6,',
'                                                       8 AS Cycle_7,',
'                                                       /*9 AS Cycle_8,',
'                                                       10 AS Cycle_9,',
'                                                       11 AS Cycle_10,',
'                                                       12 AS Cycle_11,',
'                                                       13 AS Cycle_12,',
'                                                       14 AS Cycle_13,*/',
'                                                       9 AS END_STUDY)) */'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9419036209345353240)
,p_name=>'Site vise Visit vise Subjects'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AVINASH.BHATIYA'
,p_internal_uid=>382646810320085536
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9419036628947353245)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Site'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(11051796963439023522)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700946442114184409)
,p_db_column_name=>'VISIT_1_PP_ID_COUNT'
,p_display_order=>11
,p_column_identifier=>'AE'
,p_column_label=>'Screening Visit Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700946504950184410)
,p_db_column_name=>'VISIT_2_PP_ID_COUNT'
,p_display_order=>21
,p_column_identifier=>'AF'
,p_column_label=>'Baseline Visit Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700946657537184411)
,p_db_column_name=>'VISIT_3_PP_ID_COUNT'
,p_display_order=>31
,p_column_identifier=>'AG'
,p_column_label=>'Visit 3 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700946726937184412)
,p_db_column_name=>'VISIT_4_PP_ID_COUNT'
,p_display_order=>41
,p_column_identifier=>'AH'
,p_column_label=>'Visit 4 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700946803768184413)
,p_db_column_name=>'VISIT_5_PP_ID_COUNT'
,p_display_order=>51
,p_column_identifier=>'AI'
,p_column_label=>'Visit 5 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700946958583184414)
,p_db_column_name=>'VISIT_6_PP_ID_COUNT'
,p_display_order=>61
,p_column_identifier=>'AJ'
,p_column_label=>'Visit 6 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700947083076184415)
,p_db_column_name=>'VISIT_7_PP_ID_COUNT'
,p_display_order=>71
,p_column_identifier=>'AK'
,p_column_label=>'Visit 7 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700947176339184416)
,p_db_column_name=>'VISIT_8_PP_ID_COUNT'
,p_display_order=>81
,p_column_identifier=>'AL'
,p_column_label=>'Visit 8 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700947282152184417)
,p_db_column_name=>'VISIT_9_PP_ID_COUNT'
,p_display_order=>91
,p_column_identifier=>'AM'
,p_column_label=>'Visit 9 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700947325393184418)
,p_db_column_name=>'VISIT_10_PP_ID_COUNT'
,p_display_order=>101
,p_column_identifier=>'AN'
,p_column_label=>'Visit 10 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700947447281184419)
,p_db_column_name=>'VISIT_11_PP_ID_COUNT'
,p_display_order=>111
,p_column_identifier=>'AO'
,p_column_label=>'Visit 11 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700947581939184420)
,p_db_column_name=>'VISIT_12_PP_ID_COUNT'
,p_display_order=>121
,p_column_identifier=>'AP'
,p_column_label=>'Visit 12 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700947680006184421)
,p_db_column_name=>'VISIT_13_PP_ID_COUNT'
,p_display_order=>131
,p_column_identifier=>'AQ'
,p_column_label=>'Visit 13 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700947771974184422)
,p_db_column_name=>'VISIT_14_PP_ID_COUNT'
,p_display_order=>141
,p_column_identifier=>'AR'
,p_column_label=>'Visit 14 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700947859373184423)
,p_db_column_name=>'VISIT_15_PP_ID_COUNT'
,p_display_order=>151
,p_column_identifier=>'AS'
,p_column_label=>'Visit 15 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700947919862184424)
,p_db_column_name=>'VISIT_16_PP_ID_COUNT'
,p_display_order=>161
,p_column_identifier=>'AT'
,p_column_label=>'Visit 16 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700948097999184425)
,p_db_column_name=>'VISIT_17_PP_ID_COUNT'
,p_display_order=>171
,p_column_identifier=>'AU'
,p_column_label=>'Visit 17 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700948155734184426)
,p_db_column_name=>'VISIT_18_PP_ID_COUNT'
,p_display_order=>181
,p_column_identifier=>'AV'
,p_column_label=>'Visit 18 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700948279827184427)
,p_db_column_name=>'VISIT_19_PP_ID_COUNT'
,p_display_order=>191
,p_column_identifier=>'AW'
,p_column_label=>'Visit 19 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700948397152184428)
,p_db_column_name=>'VISIT_20_PP_ID_COUNT'
,p_display_order=>201
,p_column_identifier=>'AX'
,p_column_label=>'Visit 20 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700948401744184429)
,p_db_column_name=>'VISIT_21_PP_ID_COUNT'
,p_display_order=>211
,p_column_identifier=>'AY'
,p_column_label=>'Visit 21 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700948510668184430)
,p_db_column_name=>'VISIT_22_PP_ID_COUNT'
,p_display_order=>221
,p_column_identifier=>'AZ'
,p_column_label=>'Visit 22 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700948673423184431)
,p_db_column_name=>'VISIT_23_PP_ID_COUNT'
,p_display_order=>231
,p_column_identifier=>'BA'
,p_column_label=>'Visit 23 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700948799570184432)
,p_db_column_name=>'VISIT_24_PP_ID_COUNT'
,p_display_order=>241
,p_column_identifier=>'BB'
,p_column_label=>'Visit 24 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700948881336184433)
,p_db_column_name=>'VISIT_25_PP_ID_COUNT'
,p_display_order=>251
,p_column_identifier=>'BC'
,p_column_label=>'Visit 25 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700948905884184434)
,p_db_column_name=>'VISIT_26_PP_ID_COUNT'
,p_display_order=>261
,p_column_identifier=>'BD'
,p_column_label=>'Visit 26 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700949083183184435)
,p_db_column_name=>'VISIT_27_PP_ID_COUNT'
,p_display_order=>271
,p_column_identifier=>'BE'
,p_column_label=>'Visit 27 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700949174695184436)
,p_db_column_name=>'VISIT_28_PP_ID_COUNT'
,p_display_order=>281
,p_column_identifier=>'BF'
,p_column_label=>'Visit 28 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700949261405184437)
,p_db_column_name=>'VISIT_29_PP_ID_COUNT'
,p_display_order=>291
,p_column_identifier=>'BG'
,p_column_label=>'Visit 29 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700949325578184438)
,p_db_column_name=>'VISIT_30_PP_ID_COUNT'
,p_display_order=>301
,p_column_identifier=>'BH'
,p_column_label=>'Visit 30 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700949439370184439)
,p_db_column_name=>'VISIT_31_PP_ID_COUNT'
,p_display_order=>311
,p_column_identifier=>'BI'
,p_column_label=>'Visit 31 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700949554329184440)
,p_db_column_name=>'VISIT_32_PP_ID_COUNT'
,p_display_order=>321
,p_column_identifier=>'BJ'
,p_column_label=>'Visit 32 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700949673546184441)
,p_db_column_name=>'VISIT_33_PP_ID_COUNT'
,p_display_order=>331
,p_column_identifier=>'BK'
,p_column_label=>'Visit 33 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700949799554184442)
,p_db_column_name=>'VISIT_34_PP_ID_COUNT'
,p_display_order=>341
,p_column_identifier=>'BL'
,p_column_label=>'Visit 34 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700949891145184443)
,p_db_column_name=>'VISIT_35_PP_ID_COUNT'
,p_display_order=>351
,p_column_identifier=>'BM'
,p_column_label=>'Visit 35 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700949998946184444)
,p_db_column_name=>'VISIT_36_PP_ID_COUNT'
,p_display_order=>361
,p_column_identifier=>'BN'
,p_column_label=>'Visit 36 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700950012590184445)
,p_db_column_name=>'VISIT_37_PP_ID_COUNT'
,p_display_order=>371
,p_column_identifier=>'BO'
,p_column_label=>'Visit 37 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700950133861184446)
,p_db_column_name=>'VISIT_38_PP_ID_COUNT'
,p_display_order=>381
,p_column_identifier=>'BP'
,p_column_label=>'Visit 38 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700950231507184447)
,p_db_column_name=>'VISIT_39_PP_ID_COUNT'
,p_display_order=>391
,p_column_identifier=>'BQ'
,p_column_label=>'Visit 39 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700950336013184448)
,p_db_column_name=>'VISIT_40_PP_ID_COUNT'
,p_display_order=>401
,p_column_identifier=>'BR'
,p_column_label=>'Visit 40 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700950426052184449)
,p_db_column_name=>'VISIT_41_PP_ID_COUNT'
,p_display_order=>411
,p_column_identifier=>'BS'
,p_column_label=>'Visit 41 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700950571061184450)
,p_db_column_name=>'VISIT_42_PP_ID_COUNT'
,p_display_order=>421
,p_column_identifier=>'BT'
,p_column_label=>'Visit 42 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700997006619343601)
,p_db_column_name=>'VISIT_43_PP_ID_COUNT'
,p_display_order=>431
,p_column_identifier=>'BU'
,p_column_label=>'Visit 43 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700997103669343602)
,p_db_column_name=>'VISIT_44_PP_ID_COUNT'
,p_display_order=>441
,p_column_identifier=>'BV'
,p_column_label=>'Visit 44 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700997247023343603)
,p_db_column_name=>'VISIT_45_PP_ID_COUNT'
,p_display_order=>451
,p_column_identifier=>'BW'
,p_column_label=>'Visit 45 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700997375828343604)
,p_db_column_name=>'VISIT_46_PP_ID_COUNT'
,p_display_order=>461
,p_column_identifier=>'BX'
,p_column_label=>'Visit 46 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700997446232343605)
,p_db_column_name=>'VISIT_47_PP_ID_COUNT'
,p_display_order=>471
,p_column_identifier=>'BY'
,p_column_label=>'Visit 47 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700997559772343606)
,p_db_column_name=>'VISIT_48_PP_ID_COUNT'
,p_display_order=>481
,p_column_identifier=>'BZ'
,p_column_label=>'Visit 48 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700997682245343607)
,p_db_column_name=>'VISIT_49_PP_ID_COUNT'
,p_display_order=>491
,p_column_identifier=>'CA'
,p_column_label=>'Visit 49 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700997798904343608)
,p_db_column_name=>'VISIT_50_PP_ID_COUNT'
,p_display_order=>501
,p_column_identifier=>'CB'
,p_column_label=>'Visit 50 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700997844995343609)
,p_db_column_name=>'VISIT_51_PP_ID_COUNT'
,p_display_order=>511
,p_column_identifier=>'CC'
,p_column_label=>'Visit 51 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700997942470343610)
,p_db_column_name=>'VISIT_52_PP_ID_COUNT'
,p_display_order=>521
,p_column_identifier=>'CD'
,p_column_label=>'Visit 52 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700998086013343611)
,p_db_column_name=>'VISIT_53_PP_ID_COUNT'
,p_display_order=>531
,p_column_identifier=>'CE'
,p_column_label=>'Visit 53 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700998195827343612)
,p_db_column_name=>'VISIT_54_PP_ID_COUNT'
,p_display_order=>541
,p_column_identifier=>'CF'
,p_column_label=>'Visit 54 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700998202636343613)
,p_db_column_name=>'VISIT_55_PP_ID_COUNT'
,p_display_order=>551
,p_column_identifier=>'CG'
,p_column_label=>'Visit 55 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700998371904343614)
,p_db_column_name=>'VISIT_56_PP_ID_COUNT'
,p_display_order=>561
,p_column_identifier=>'CH'
,p_column_label=>'Visit 56 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700998472626343615)
,p_db_column_name=>'VISIT_57_PP_ID_COUNT'
,p_display_order=>571
,p_column_identifier=>'CI'
,p_column_label=>'Visit 57 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700998538097343616)
,p_db_column_name=>'VISIT_58_PP_ID_COUNT'
,p_display_order=>581
,p_column_identifier=>'CJ'
,p_column_label=>'Visit 58 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700998610250343617)
,p_db_column_name=>'VISIT_59_PP_ID_COUNT'
,p_display_order=>591
,p_column_identifier=>'CK'
,p_column_label=>'Visit 59 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700998754054343618)
,p_db_column_name=>'VISIT_60_PP_ID_COUNT'
,p_display_order=>601
,p_column_identifier=>'CL'
,p_column_label=>'Visit 60 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700998872232343619)
,p_db_column_name=>'VISIT_61_PP_ID_COUNT'
,p_display_order=>611
,p_column_identifier=>'CM'
,p_column_label=>'Visit 61 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700998999755343620)
,p_db_column_name=>'VISIT_62_PP_ID_COUNT'
,p_display_order=>621
,p_column_identifier=>'CN'
,p_column_label=>'Visit 62 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700999066300343621)
,p_db_column_name=>'VISIT_63_PP_ID_COUNT'
,p_display_order=>631
,p_column_identifier=>'CO'
,p_column_label=>'Visit 63 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700999150603343622)
,p_db_column_name=>'VISIT_64_PP_ID_COUNT'
,p_display_order=>641
,p_column_identifier=>'CP'
,p_column_label=>'Visit 64 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700999216855343623)
,p_db_column_name=>'VISIT_65_PP_ID_COUNT'
,p_display_order=>651
,p_column_identifier=>'CQ'
,p_column_label=>'Visit 65 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700999321701343624)
,p_db_column_name=>'VISIT_66_PP_ID_COUNT'
,p_display_order=>661
,p_column_identifier=>'CR'
,p_column_label=>'Visit 66 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700999488100343625)
,p_db_column_name=>'VISIT_67_PP_ID_COUNT'
,p_display_order=>671
,p_column_identifier=>'CS'
,p_column_label=>'Visit 67 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700999534778343626)
,p_db_column_name=>'VISIT_68_PP_ID_COUNT'
,p_display_order=>681
,p_column_identifier=>'CT'
,p_column_label=>'Visit 68 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700999679942343627)
,p_db_column_name=>'VISIT_69_PP_ID_COUNT'
,p_display_order=>691
,p_column_identifier=>'CU'
,p_column_label=>'Visit 69 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700999700232343628)
,p_db_column_name=>'VISIT_70_PP_ID_COUNT'
,p_display_order=>701
,p_column_identifier=>'CV'
,p_column_label=>'Visit 70 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700999879507343629)
,p_db_column_name=>'VISIT_71_PP_ID_COUNT'
,p_display_order=>711
,p_column_identifier=>'CW'
,p_column_label=>'Visit 71 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(700999906716343630)
,p_db_column_name=>'VISIT_72_PP_ID_COUNT'
,p_display_order=>721
,p_column_identifier=>'CX'
,p_column_label=>'Visit 72 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701000043886343631)
,p_db_column_name=>'VISIT_73_PP_ID_COUNT'
,p_display_order=>731
,p_column_identifier=>'CY'
,p_column_label=>'Visit 73 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701000148140343632)
,p_db_column_name=>'VISIT_74_PP_ID_COUNT'
,p_display_order=>741
,p_column_identifier=>'CZ'
,p_column_label=>'Visit 74 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701000233270343633)
,p_db_column_name=>'VISIT_75_PP_ID_COUNT'
,p_display_order=>751
,p_column_identifier=>'DA'
,p_column_label=>'Visit 75 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701000311046343634)
,p_db_column_name=>'VISIT_76_PP_ID_COUNT'
,p_display_order=>761
,p_column_identifier=>'DB'
,p_column_label=>'Visit 76 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701000453553343635)
,p_db_column_name=>'VISIT_77_PP_ID_COUNT'
,p_display_order=>771
,p_column_identifier=>'DC'
,p_column_label=>'Visit 77 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701000591229343636)
,p_db_column_name=>'VISIT_78_PP_ID_COUNT'
,p_display_order=>781
,p_column_identifier=>'DD'
,p_column_label=>'Visit 78 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701000646826343637)
,p_db_column_name=>'VISIT_79_PP_ID_COUNT'
,p_display_order=>791
,p_column_identifier=>'DE'
,p_column_label=>'Visit 79 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701000758885343638)
,p_db_column_name=>'VISIT_80_PP_ID_COUNT'
,p_display_order=>801
,p_column_identifier=>'DF'
,p_column_label=>'Visit 80 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701000852355343639)
,p_db_column_name=>'VISIT_81_PP_ID_COUNT'
,p_display_order=>811
,p_column_identifier=>'DG'
,p_column_label=>'Visit 81 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701000909434343640)
,p_db_column_name=>'VISIT_82_PP_ID_COUNT'
,p_display_order=>821
,p_column_identifier=>'DH'
,p_column_label=>'Visit 82 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701001037391343641)
,p_db_column_name=>'VISIT_83_PP_ID_COUNT'
,p_display_order=>831
,p_column_identifier=>'DI'
,p_column_label=>'Visit 83 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701001133037343642)
,p_db_column_name=>'VISIT_84_PP_ID_COUNT'
,p_display_order=>841
,p_column_identifier=>'DJ'
,p_column_label=>'Visit 84 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701001290439343643)
,p_db_column_name=>'VISIT_85_PP_ID_COUNT'
,p_display_order=>851
,p_column_identifier=>'DK'
,p_column_label=>'Visit 85 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701001352316343644)
,p_db_column_name=>'VISIT_86_PP_ID_COUNT'
,p_display_order=>861
,p_column_identifier=>'DL'
,p_column_label=>'Visit 86 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701001405080343645)
,p_db_column_name=>'VISIT_87_PP_ID_COUNT'
,p_display_order=>871
,p_column_identifier=>'DM'
,p_column_label=>'Visit 87 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701001584438343646)
,p_db_column_name=>'VISIT_88_PP_ID_COUNT'
,p_display_order=>881
,p_column_identifier=>'DN'
,p_column_label=>'Visit 88 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701001667110343647)
,p_db_column_name=>'VISIT_89_PP_ID_COUNT'
,p_display_order=>891
,p_column_identifier=>'DO'
,p_column_label=>'Visit 89 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701001752791343648)
,p_db_column_name=>'VISIT_90_PP_ID_COUNT'
,p_display_order=>901
,p_column_identifier=>'DP'
,p_column_label=>'Visit 90 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701001808214343649)
,p_db_column_name=>'VISIT_91_PP_ID_COUNT'
,p_display_order=>911
,p_column_identifier=>'DQ'
,p_column_label=>'Visit 91 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701001943303343650)
,p_db_column_name=>'VISIT_92_PP_ID_COUNT'
,p_display_order=>921
,p_column_identifier=>'DR'
,p_column_label=>'Visit 92 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701002155434343601)
,p_db_column_name=>'VISIT_93_PP_ID_COUNT'
,p_display_order=>931
,p_column_identifier=>'DS'
,p_column_label=>'Visit 93 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701002220611343602)
,p_db_column_name=>'VISIT_94_PP_ID_COUNT'
,p_display_order=>941
,p_column_identifier=>'DT'
,p_column_label=>'Visit 94 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701002303839343603)
,p_db_column_name=>'VISIT_95_PP_ID_COUNT'
,p_display_order=>951
,p_column_identifier=>'DU'
,p_column_label=>'Visit 95 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701002425387343604)
,p_db_column_name=>'VISIT_96_PP_ID_COUNT'
,p_display_order=>961
,p_column_identifier=>'DV'
,p_column_label=>'Visit 96 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701002555179343605)
,p_db_column_name=>'VISIT_97_PP_ID_COUNT'
,p_display_order=>971
,p_column_identifier=>'DW'
,p_column_label=>'Visit 97 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701002601950343606)
,p_db_column_name=>'VISIT_98_PP_ID_COUNT'
,p_display_order=>981
,p_column_identifier=>'DX'
,p_column_label=>'Visit 98 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701002770882343607)
,p_db_column_name=>'VISIT_99_PP_ID_COUNT'
,p_display_order=>991
,p_column_identifier=>'DY'
,p_column_label=>'Visit 99 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701002852269343608)
,p_db_column_name=>'VISIT_100_PP_ID_COUNT'
,p_display_order=>1001
,p_column_identifier=>'DZ'
,p_column_label=>'Visit 100 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701002905655343609)
,p_db_column_name=>'VISIT_101_PP_ID_COUNT'
,p_display_order=>1011
,p_column_identifier=>'EA'
,p_column_label=>'Visit 101 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701003072577343610)
,p_db_column_name=>'VISIT_102_PP_ID_COUNT'
,p_display_order=>1021
,p_column_identifier=>'EB'
,p_column_label=>'Visit 102 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701003124873343611)
,p_db_column_name=>'VISIT_103_PP_ID_COUNT'
,p_display_order=>1031
,p_column_identifier=>'EC'
,p_column_label=>'Visit 103 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701003294907343612)
,p_db_column_name=>'VISIT_104_PP_ID_COUNT'
,p_display_order=>1041
,p_column_identifier=>'ED'
,p_column_label=>'Visit 104 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701003391191343613)
,p_db_column_name=>'VISIT_105_PP_ID_COUNT'
,p_display_order=>1051
,p_column_identifier=>'EE'
,p_column_label=>'Visit 105 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701003417950343614)
,p_db_column_name=>'VISIT_106_PP_ID_COUNT'
,p_display_order=>1061
,p_column_identifier=>'EF'
,p_column_label=>'Visit 106 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701003513165343615)
,p_db_column_name=>'VISIT_107_PP_ID_COUNT'
,p_display_order=>1071
,p_column_identifier=>'EG'
,p_column_label=>'Visit 107 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701003630764343616)
,p_db_column_name=>'VISIT_108_PP_ID_COUNT'
,p_display_order=>1081
,p_column_identifier=>'EH'
,p_column_label=>'Visit 108 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701003767697343617)
,p_db_column_name=>'VISIT_109_PP_ID_COUNT'
,p_display_order=>1091
,p_column_identifier=>'EI'
,p_column_label=>'Visit 109 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701003871641343618)
,p_db_column_name=>'VISIT_110_PP_ID_COUNT'
,p_display_order=>1101
,p_column_identifier=>'EJ'
,p_column_label=>'Visit 110 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701003929985343619)
,p_db_column_name=>'VISIT_111_PP_ID_COUNT'
,p_display_order=>1111
,p_column_identifier=>'EK'
,p_column_label=>'Visit 111 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701004030550343620)
,p_db_column_name=>'VISIT_112_PP_ID_COUNT'
,p_display_order=>1121
,p_column_identifier=>'EL'
,p_column_label=>'Visit 112 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701004194060343621)
,p_db_column_name=>'VISIT_113_PP_ID_COUNT'
,p_display_order=>1131
,p_column_identifier=>'EM'
,p_column_label=>'Visit 113 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701004208721343622)
,p_db_column_name=>'VISIT_114_PP_ID_COUNT'
,p_display_order=>1141
,p_column_identifier=>'EN'
,p_column_label=>'Visit 114 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701004300656343623)
,p_db_column_name=>'VISIT_115_PP_ID_COUNT'
,p_display_order=>1151
,p_column_identifier=>'EO'
,p_column_label=>'Visit 115 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701004418321343624)
,p_db_column_name=>'VISIT_116_PP_ID_COUNT'
,p_display_order=>1161
,p_column_identifier=>'EP'
,p_column_label=>'Visit 116 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701004585511343625)
,p_db_column_name=>'VISIT_117_PP_ID_COUNT'
,p_display_order=>1171
,p_column_identifier=>'EQ'
,p_column_label=>'Visit 117 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701004623211343626)
,p_db_column_name=>'VISIT_118_PP_ID_COUNT'
,p_display_order=>1181
,p_column_identifier=>'ER'
,p_column_label=>'Visit 118 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701004717174343627)
,p_db_column_name=>'VISIT_119_PP_ID_COUNT'
,p_display_order=>1191
,p_column_identifier=>'ES'
,p_column_label=>'Visit 119 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701004807247343628)
,p_db_column_name=>'VISIT_120_PP_ID_COUNT'
,p_display_order=>1201
,p_column_identifier=>'ET'
,p_column_label=>'Visit 120 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701004958790343629)
,p_db_column_name=>'VISIT_121_PP_ID_COUNT'
,p_display_order=>1211
,p_column_identifier=>'EU'
,p_column_label=>'Visit 121 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701005099063343630)
,p_db_column_name=>'VISIT_122_PP_ID_COUNT'
,p_display_order=>1221
,p_column_identifier=>'EV'
,p_column_label=>'Visit 122 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701005153669343631)
,p_db_column_name=>'VISIT_123_PP_ID_COUNT'
,p_display_order=>1231
,p_column_identifier=>'EW'
,p_column_label=>'Visit 123 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701005249368343632)
,p_db_column_name=>'VISIT_124_PP_ID_COUNT'
,p_display_order=>1241
,p_column_identifier=>'EX'
,p_column_label=>'Visit 124 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701005328838343633)
,p_db_column_name=>'VISIT_125_PP_ID_COUNT'
,p_display_order=>1251
,p_column_identifier=>'EY'
,p_column_label=>'Visit 125 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701005497337343634)
,p_db_column_name=>'VISIT_126_PP_ID_COUNT'
,p_display_order=>1261
,p_column_identifier=>'EZ'
,p_column_label=>'Visit 126 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701005598747343635)
,p_db_column_name=>'VISIT_127_PP_ID_COUNT'
,p_display_order=>1271
,p_column_identifier=>'FA'
,p_column_label=>'Visit 127 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(701005600063343636)
,p_db_column_name=>'VISIT_128_PP_ID_COUNT'
,p_display_order=>1281
,p_column_identifier=>'FB'
,p_column_label=>'Visit 128 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(725921420118985301)
,p_db_column_name=>'VISIT_129_PP_ID_COUNT'
,p_display_order=>1291
,p_column_identifier=>'FC'
,p_column_label=>'Visit 129 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(725921526202985302)
,p_db_column_name=>'VISIT_130_PP_ID_COUNT'
,p_display_order=>1301
,p_column_identifier=>'FD'
,p_column_label=>'Visit 130 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(725921626621985303)
,p_db_column_name=>'VISIT_131_PP_ID_COUNT'
,p_display_order=>1311
,p_column_identifier=>'FE'
,p_column_label=>'Visit 131 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(725921745974985304)
,p_db_column_name=>'VISIT_132_PP_ID_COUNT'
,p_display_order=>1321
,p_column_identifier=>'FF'
,p_column_label=>'Visit 132 Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(725921881065985305)
,p_db_column_name=>'VISIT_133_PP_ID_COUNT'
,p_display_order=>1331
,p_column_identifier=>'FG'
,p_column_label=>'EOT/Safety Follow-up Pp Id Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9419041006115364283)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3826517'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STUDY_SITE_ID:VISIT_1_PP_ID_COUNT:VISIT_2_PP_ID_COUNT:VISIT_3_PP_ID_COUNT:VISIT_4_PP_ID_COUNT:VISIT_5_PP_ID_COUNT:VISIT_6_PP_ID_COUNT:VISIT_7_PP_ID_COUNT:VISIT_8_PP_ID_COUNT:VISIT_9_PP_ID_COUNT:VISIT_10_PP_ID_COUNT:VISIT_11_PP_ID_COUNT:VISIT_12_PP_ID'
||'_COUNT:VISIT_13_PP_ID_COUNT:VISIT_14_PP_ID_COUNT:VISIT_15_PP_ID_COUNT:VISIT_16_PP_ID_COUNT:VISIT_17_PP_ID_COUNT:VISIT_18_PP_ID_COUNT:VISIT_19_PP_ID_COUNT:VISIT_20_PP_ID_COUNT:VISIT_21_PP_ID_COUNT:VISIT_22_PP_ID_COUNT:VISIT_23_PP_ID_COUNT:VISIT_24_PP_'
||'ID_COUNT:VISIT_25_PP_ID_COUNT:VISIT_26_PP_ID_COUNT:VISIT_27_PP_ID_COUNT:VISIT_28_PP_ID_COUNT:VISIT_29_PP_ID_COUNT:VISIT_30_PP_ID_COUNT:VISIT_31_PP_ID_COUNT:VISIT_32_PP_ID_COUNT:VISIT_33_PP_ID_COUNT:VISIT_34_PP_ID_COUNT:VISIT_35_PP_ID_COUNT:VISIT_36_P'
||'P_ID_COUNT:VISIT_37_PP_ID_COUNT:VISIT_38_PP_ID_COUNT:VISIT_39_PP_ID_COUNT:VISIT_40_PP_ID_COUNT:VISIT_41_PP_ID_COUNT:VISIT_42_PP_ID_COUNT:VISIT_43_PP_ID_COUNT:VISIT_44_PP_ID_COUNT:VISIT_45_PP_ID_COUNT:VISIT_46_PP_ID_COUNT:VISIT_47_PP_ID_COUNT:VISIT_48'
||'_PP_ID_COUNT:VISIT_49_PP_ID_COUNT:VISIT_50_PP_ID_COUNT:VISIT_51_PP_ID_COUNT:VISIT_52_PP_ID_COUNT:VISIT_53_PP_ID_COUNT:VISIT_54_PP_ID_COUNT:VISIT_55_PP_ID_COUNT:VISIT_56_PP_ID_COUNT:VISIT_57_PP_ID_COUNT:VISIT_58_PP_ID_COUNT:VISIT_59_PP_ID_COUNT:VISIT_'
||'60_PP_ID_COUNT:VISIT_61_PP_ID_COUNT:VISIT_62_PP_ID_COUNT:VISIT_63_PP_ID_COUNT:VISIT_64_PP_ID_COUNT:VISIT_65_PP_ID_COUNT:VISIT_66_PP_ID_COUNT:VISIT_67_PP_ID_COUNT:VISIT_68_PP_ID_COUNT:VISIT_69_PP_ID_COUNT:VISIT_70_PP_ID_COUNT:VISIT_71_PP_ID_COUNT:VISI'
||'T_72_PP_ID_COUNT:VISIT_73_PP_ID_COUNT:VISIT_74_PP_ID_COUNT:VISIT_75_PP_ID_COUNT:VISIT_76_PP_ID_COUNT:VISIT_77_PP_ID_COUNT:VISIT_78_PP_ID_COUNT:VISIT_79_PP_ID_COUNT:VISIT_80_PP_ID_COUNT:VISIT_81_PP_ID_COUNT:VISIT_82_PP_ID_COUNT:VISIT_83_PP_ID_COUNT:VI'
||'SIT_84_PP_ID_COUNT:VISIT_85_PP_ID_COUNT:VISIT_86_PP_ID_COUNT:VISIT_87_PP_ID_COUNT:VISIT_88_PP_ID_COUNT:VISIT_89_PP_ID_COUNT:VISIT_90_PP_ID_COUNT:VISIT_91_PP_ID_COUNT:VISIT_92_PP_ID_COUNT:VISIT_93_PP_ID_COUNT:VISIT_94_PP_ID_COUNT:VISIT_95_PP_ID_COUNT:'
||'VISIT_96_PP_ID_COUNT:VISIT_97_PP_ID_COUNT:VISIT_98_PP_ID_COUNT:VISIT_99_PP_ID_COUNT:VISIT_100_PP_ID_COUNT:VISIT_101_PP_ID_COUNT:VISIT_102_PP_ID_COUNT:VISIT_103_PP_ID_COUNT:VISIT_104_PP_ID_COUNT:VISIT_105_PP_ID_COUNT:VISIT_106_PP_ID_COUNT:VISIT_107_PP'
||'_ID_COUNT:VISIT_108_PP_ID_COUNT:VISIT_109_PP_ID_COUNT:VISIT_110_PP_ID_COUNT:VISIT_111_PP_ID_COUNT:VISIT_112_PP_ID_COUNT:VISIT_113_PP_ID_COUNT:VISIT_114_PP_ID_COUNT:VISIT_115_PP_ID_COUNT:VISIT_116_PP_ID_COUNT:VISIT_117_PP_ID_COUNT:VISIT_118_PP_ID_COUN'
||'T:VISIT_119_PP_ID_COUNT:VISIT_120_PP_ID_COUNT:VISIT_121_PP_ID_COUNT:VISIT_122_PP_ID_COUNT:VISIT_123_PP_ID_COUNT:VISIT_124_PP_ID_COUNT:VISIT_125_PP_ID_COUNT:VISIT_126_PP_ID_COUNT:VISIT_127_PP_ID_COUNT:VISIT_128_PP_ID_COUNT:VISIT_129_PP_ID_COUNT:VISIT_'
||'130_PP_ID_COUNT:VISIT_131_PP_ID_COUNT:VISIT_132_PP_ID_COUNT:VISIT_133_PP_ID_COUNT'
,p_sum_columns_on_break=>'PLACEBO_RUNIN_PP_ID_COUNT:RANDOMIZATION_PP_ID_COUNT:INTERIM_VISIT_PP_ID_COUNT:END_OF_TREATMENT_PP_ID_COUNT:SAFETY_FOLLOW_UP_PP_ID_COUNT:SCREENING_PP_ID_COUNT:CYCLE_2_PP_ID_COUNT:CYCLE_3_PP_ID_COUNT:CYCLE_4_PP_ID_COUNT:CYCLE_5_PP_ID_COUNT:CYCLE_6_PP_I'
||'D_COUNT:END_INDUCTION_PP_ID_COUNT:CYCLE_7_PP_ID_COUNT:CYCLE_8_PP_ID_COUNT:CYCLE_9_PP_ID_COUNT:CYCLE_10_PP_ID_COUNT:CYCLE_11_PP_ID_COUNT:CYCLE_12_PP_ID_COUNT:CYCLE_13_PP_ID_COUNT:CYCLE_14_PP_ID_COUNT:CYCLE_15_PP_ID_COUNT:CYCLE_16_PP_ID_COUNT:CYCLE_17_'
||'PP_ID_COUNT:CYCLE_18_PP_ID_COUNT:END_STUDY_PP_ID_COUNT:EARLY_TERMINATION_PP_ID_COUNT:CYCLE_1_PP_ID_COUNT'
,p_avg_columns_on_break=>'END_OF_TREATMENT_PP_ID_COUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9419040204153358919)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045181058343407888)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(11061305288454172215)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11061512871844880215)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8467896353360781699)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9419036127375353240)
,p_button_name=>'PRINT_PDF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print PDF'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8467896405859781700)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9419036127375353240)
,p_button_name=>'PRINT_XLS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print XLS'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8468138138348204615)
,p_name=>'PRINT_PDF'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8467896353360781699)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8468138246021204616)
,p_event_id=>wwv_flow_imp.id(8468138138348204615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var v_pat;',
'var v_flag;',
'',
'',
'',
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Visit Wise Subject Summary/VISIT_WISE_SUBJECT_SUMMARY&_repFormat=pdf&_dataSource=default&_outFilename=VISIT_WISE_SUBJECT_SUMMARY.pdf&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_ST'
||'UDY_ID=&APP_EDC_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8468138292205204617)
,p_name=>'PRINT_XLS'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8467896405859781700)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8468138475447204618)
,p_event_id=>wwv_flow_imp.id(8468138292205204617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var v_pat;',
'var v_flag;',
'',
'',
'',
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Visit Wise Subject Summary/VISIT_WISE_SUBJECT_SUMMARY&_repFormat=xls&_dataSource=default&_outFilename=VISIT_WISE_SUBJECT_SUMMARY.xls&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_ST'
||'UDY_ID=&APP_EDC_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp.component_end;
end;
/
