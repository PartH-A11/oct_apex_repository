prompt --application/shared_components/plugins/dynamic_action/com_af_plugin_jq_irfreezecols
begin
--   Manifest
--     PLUGIN: COM.AF.PLUGIN.JQ.IRFREEZECOLS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>1100950768141504093
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(12010033345072843929)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'COM.AF.PLUGIN.JQ.IRFREEZECOLS'
,p_display_name=>'IR Freeze Columns'
,p_category=>'EFFECT'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- =============================================================================',
'--',
'--   ____________________________  __    __________                ______                                ',
'--   ___    |__  __ \__  ____/_  |/ /    ___  ____/___________________  /_____ __________________________',
'--   __  /| |_  /_/ /_  __/  __    /     __  /_   __  ___/  _ \  _ \_  /_  __ `/_  __ \  ___/  _ \_  ___/',
'--   _  ___ |  ____/_  /___  _    |      _  __/   _  /   /  __/  __/  / / /_/ /_  / / / /__ /  __/  /    ',
'--   /_/  |_/_/     /_____/  /_/|_|      /_/      /_/    \___/\___//_/  \__,_/ /_/ /_/\___/ \___//_/     ',
'--                                                                                                    ',
'--',
'-- =============================================================================',
'--',
'-- Plugin      : com.af.plugin.jq.irfreezecols',
'-- Description : This is a dynamic action plugin to freeze Interactive Report',
'--               columns.',
'--',
'-- Author      : Matt Nolan',
'-- Email       : matt.nolan@theapexfreelancer.com',
'-- Twitter     : apex_freelancer',
'-- Webiste     : www.theapexfreelancer.com',
'-- Created     : 21-May-2011',
'--',
'-- =============================================================================',
'--',
'-- Change Log',
'--',
'-- Date         Author              Description',
'-- ------------ ------------------- --------------------------------------------',
'-- 21-May-2011  Matt Nolan          v1.0 - Plugin Created.',
'-- 23-Jul-2011  Matt Nolan          v1.2   - Plugin Released.',
'--                                         - Fixed Column Filter Display Issue',
'--                                         - Added row hover support',
'--                                         - Fixed vertical scrollbar issue for IE 7',
'--                                         - Added a delay for page load to cater for image loading',
'-- 17-Feb-2012  Matt Nolan          v1.3   - jQuery Selector changes for setting widths/heights',
'-- 27-Jul-2012  Matt Nolan          v1.3.1 - Bug fix to stop stack overflow for columns with spaces in column alises',
'-- 01-Oct-2012  Matt Nolan          v1.4.0 - Stretch the unfrozen container to the width of the page.',
'--                                         - Bug fix for pagination top left issue',
'-- 08-Feb-2013  Matt Nolan          v1.4.1 - Bug fix for adding to much height when freeze columns and freeze header is used',
'-- 12-Mar-2013  Matt Nolan          v1.4.2 - Bug fix for zooming',
'-- 12-Mar-2014  Matt Nolan          v1.4.3 - Bug fix for control breaks causing only "None" to be displayed in the actions menu',
'-- =============================================================================',
'',
'  FUNCTION render_plugin',
'  ( p_dynamic_action  in apex_plugin.t_dynamic_action',
'  , p_plugin          in apex_plugin.t_plugin',
'  ) RETURN apex_plugin.t_dynamic_action_render_result ',
'  AS',
'  ',
'    l_columns               VARCHAR2(10)  := coalesce(p_dynamic_action.attribute_01, ''3'');',
'    l_width                 VARCHAR2(100) := coalesce(p_dynamic_action.attribute_02, ''400px'');',
'    l_stretch               VARCHAR2(100) := coalesce(p_dynamic_action.attribute_06, ''N'');',
'    l_addMenu               VARCHAR2(100) := coalesce(p_dynamic_action.attribute_03, ''true'');',
'    l_rowHoverCls           VARCHAR2(100) := coalesce(p_dynamic_action.attribute_04, ''irFreezeCols_HOVER'');',
'    l_delay                 VARCHAR2(100) := coalesce(p_dynamic_action.attribute_05, ''500'');',
'    l_result                apex_plugin.t_dynamic_action_render_result;',
'',
'  BEGIN',
'    --',
'    -- Debug information',
'    --',
'    IF apex_application.g_debug THEN',
'      apex_plugin_util.debug_dynamic_action',
'      ( p_plugin         => p_plugin',
'      , p_dynamic_action => p_dynamic_action',
'      );',
'    END IF;',
'',
'    --',
'    -- If we are stretching the unfrozen container we specify a setting of auto',
'    --',
'    IF l_stretch = ''Y'' THEN',
'      l_width := ''auto'';',
'    END IF;',
'',
'    --',
'    -- Include CSS.',
'    --',
'    apex_css.add_file ',
'    ( p_name      => ''irfreezecol''',
'    , p_directory => p_plugin.file_prefix',
'    , p_version   => NULL',
'    );',
'    --',
'    -- Include Javascript.',
'    --',
'    apex_javascript.add_library ',
'    ( p_name      => ''irfreezecol''',
'    , p_directory => p_plugin.file_prefix',
'    , p_version   => NULL',
'    ) ;',
'',
'    l_result.javascript_function := ',
'           ''function(){ ''||',
'              ''if(this.browserEvent==="load"){''||',
'                 ''var that = this;''||',
'                 ''setTimeout(function() {''||',
'                    ''apex.jQuery(that.triggeringElement).irFreezeCols({ "id":apex.jQuery(that.triggeringElement).attr("id"),"delay":''||l_delay||'',"width":"''||l_width||''","columns":''||l_columns||'',"addMenu":''||l_addMenu||'',"hoverCls":"''||l_rowHoverCls'
||'||''","imgPrefix":"''||v(''IMAGE_PREFIX'')||''" });''||',
'                    ''return true;''||',
'                 ''},''||l_delay||'');''||',
'              ''}else{''||',
'                 ''apex.jQuery(this.triggeringElement).irFreezeCols();''||',
'                 ''return true;''||',
'              ''}''||',
'           ''}'';    ',
'    RETURN l_result;',
'    ',
'  END render_plugin;',
''))
,p_api_version=>1
,p_render_function=>'render_plugin'
,p_standard_attributes=>'REGION:JQUERY_SELECTOR'
,p_substitute_attributes=>true
,p_version_scn=>1
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'	<strong>APEX Freelancer - IR Freeze Columns</strong></p>',
'<p>',
'	<strong>Plug-in Type</strong>: Dynamic Action<br />',
'	<strong>Summary</strong>: On wide reports this plugin allows the ability to freeze/lock a number of columns in place, whilst the unfrozen columns are placed into a fixed/stretched width scrollable container.</p>',
'<div>',
'	<div>',
'		<strong>Documentation URL: </strong><a href="http://www.theapexfreelancer.com/apex/f?p=APEXFREELANCER:IR_PLUGIN_PACKAGE:0" target="_blank">http://www.theapexfreelancer.com/apex/f?p=APEXFREELANCER:IR_PLUGIN_PACKAGE:0</a></div>',
'	<div>',
'		&nbsp;</div>',
'	<div>',
'		<strong>Licensing: </strong>This plugin requires the purchase of an appropriate commercial license. Please visit the following URL for more <a href="http://www.theapexfreelancer.com/apex/f?p=APEXFREELANCER:IR_PLUGIN_PACKAGE:0:LICENSE" target="_blan'
||'k">licensing</a> information.</div>',
'	<div>',
'		&nbsp;</div>',
'	<div>',
'		<a href="http://www.theapexfreelancer.com/" target="_blank"><img alt="APEX Freelancer" src="http://www.theapexfreelancer.com/c/af-logo.png" style="width: 125px; height: 110px;" /></a></div>',
'</div>',
''))
,p_version_identifier=>'1.4.3'
,p_about_url=>'http://www.theapexfreelancer.com/apex/f?p=APEXFREELANCER:IR_PLUGIN_PACKAGE:0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(12010046568544046183)
,p_plugin_id=>wwv_flow_imp.id(12010033345072843929)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Freeze Columns'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'2'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The number of columns you wish to freeze on the left side of the report (the edit link if visible/enabled will be counted as a column).',
'<br /><br />',
'The number selected is the default setting on report display for each page view. It can be changed manually through the Interactive report menu but will revert back to this setting on each full page view/refresh.'))
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(12010047238546047012)
,p_plugin_attribute_id=>wwv_flow_imp.id(12010046568544046183)
,p_display_sequence=>10
,p_display_value=>'1'
,p_return_value=>'1'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(12010047641663047960)
,p_plugin_attribute_id=>wwv_flow_imp.id(12010046568544046183)
,p_display_sequence=>20
,p_display_value=>'2'
,p_return_value=>'2'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(12010048044433048692)
,p_plugin_attribute_id=>wwv_flow_imp.id(12010046568544046183)
,p_display_sequence=>30
,p_display_value=>'3'
,p_return_value=>'3'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(12010048446858049397)
,p_plugin_attribute_id=>wwv_flow_imp.id(12010046568544046183)
,p_display_sequence=>40
,p_display_value=>'4'
,p_return_value=>'4'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(12010048848935050019)
,p_plugin_attribute_id=>wwv_flow_imp.id(12010046568544046183)
,p_display_sequence=>50
,p_display_value=>'5'
,p_return_value=>'5'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(12010049250667050575)
,p_plugin_attribute_id=>wwv_flow_imp.id(12010046568544046183)
,p_display_sequence=>60
,p_display_value=>'6'
,p_return_value=>'6'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(12010049652398051067)
,p_plugin_attribute_id=>wwv_flow_imp.id(12010046568544046183)
,p_display_sequence=>70
,p_display_value=>'7'
,p_return_value=>'7'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(12010050054823051678)
,p_plugin_attribute_id=>wwv_flow_imp.id(12010046568544046183)
,p_display_sequence=>80
,p_display_value=>'8'
,p_return_value=>'8'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(12010050456208052106)
,p_plugin_attribute_id=>wwv_flow_imp.id(12010046568544046183)
,p_display_sequence=>90
,p_display_value=>'9'
,p_return_value=>'9'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(12010050861056053537)
,p_plugin_attribute_id=>wwv_flow_imp.id(12010046568544046183)
,p_display_sequence=>100
,p_display_value=>'10'
,p_return_value=>'10'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(12010051263480054255)
,p_plugin_attribute_id=>wwv_flow_imp.id(12010046568544046183)
,p_display_sequence=>110
,p_display_value=>'11'
,p_return_value=>'11'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(12010051665904054897)
,p_plugin_attribute_id=>wwv_flow_imp.id(12010046568544046183)
,p_display_sequence=>120
,p_display_value=>'12'
,p_return_value=>'12'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(12010052068675055683)
,p_plugin_attribute_id=>wwv_flow_imp.id(12010046568544046183)
,p_display_sequence=>130
,p_display_value=>'13'
,p_return_value=>'13'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(12010052438331056454)
,p_plugin_attribute_id=>wwv_flow_imp.id(12010046568544046183)
,p_display_sequence=>140
,p_display_value=>'14'
,p_return_value=>'14'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(12010052841101057217)
,p_plugin_attribute_id=>wwv_flow_imp.id(12010046568544046183)
,p_display_sequence=>150
,p_display_value=>'15'
,p_return_value=>'15'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(12010053243872058007)
,p_plugin_attribute_id=>wwv_flow_imp.id(12010046568544046183)
,p_display_sequence=>160
,p_display_value=>'16'
,p_return_value=>'16'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(12010053646296058718)
,p_plugin_attribute_id=>wwv_flow_imp.id(12010046568544046183)
,p_display_sequence=>170
,p_display_value=>'17'
,p_return_value=>'17'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(12010054049413059589)
,p_plugin_attribute_id=>wwv_flow_imp.id(12010046568544046183)
,p_display_sequence=>180
,p_display_value=>'18'
,p_return_value=>'18'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(12010054452183060407)
,p_plugin_attribute_id=>wwv_flow_imp.id(12010046568544046183)
,p_display_sequence=>190
,p_display_value=>'19'
,p_return_value=>'19'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(12010054855300061331)
,p_plugin_attribute_id=>wwv_flow_imp.id(12010046568544046183)
,p_display_sequence=>200
,p_display_value=>'20'
,p_return_value=>'20'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(12010055560279072267)
,p_plugin_id=>wwv_flow_imp.id(12010033345072843929)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'UnFrozen Column Container Width'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'500px'
,p_display_length=>10
,p_max_length=>10
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(12027227739210165997)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The width of the container which holds all the unfrozen columns. The pixel size or % must be added. ',
'<br /><br />',
'e.g. 500px or 50%',
'<br /><br />',
'A bottom scollbar will appear when the width of the unfrozen columns exceed the container width.'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(12010056842318095432)
,p_plugin_id=>wwv_flow_imp.id(12010033345072843929)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Add Menu'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'true'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'True/false to show/hide the menu which allows manual override of the number of frozen columns. ',
'<br /><br />',
'<strong>Note: </strong>The number of columns you can freeze is always the total number of columns - 1. The drop down menu will be changed each time the report is refreshed reflect this, including when columns are (de)selected.'))
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(12010057546127096509)
,p_plugin_attribute_id=>wwv_flow_imp.id(12010056842318095432)
,p_display_sequence=>10
,p_display_value=>'true'
,p_return_value=>'true'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(12010057950283097739)
,p_plugin_attribute_id=>wwv_flow_imp.id(12010056842318095432)
,p_display_sequence=>20
,p_display_value=>'false'
,p_return_value=>'false'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(12005451832579725033)
,p_plugin_id=>wwv_flow_imp.id(12010033345072843929)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Row Hover CSS Class'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'irFreezeCols_HOVER'
,p_display_length=>30
,p_max_length=>100
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This CSS class will be used to highlight the row on hover. It is required since the plugin splits the actual report into two distinct HTML tables. When we hover on one table row we need to manually highlight the other. This is done by adding this cla'
||'ss setting to the table cells. <strong>Note: </strong>it is only applied to one side of the report which the mouse is not hovering over.',
'<br /><br />',
'You will need to add your own class setting here if your background row hover color does not match the default setting provided in the plugin class "irFreezeCols_HOVER". Otherwise the row hover will have 2 different colors. You can determine your row'
||' hover color by inspecting the CSS through firebug wehn hovering on a row.',
'<br /><br />',
'e.g.',
'<pre>',
'.irFreezeCols_HOVER{',
'   background-color: #E2E2E2 !important;',
'}',
'</pre>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(12005452555220740960)
,p_plugin_id=>wwv_flow_imp.id(12010033345072843929)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Delay on Page Load'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'500'
,p_display_length=>6
,p_max_length=>6
,p_is_translatable=>false
,p_help_text=>'The delay on page load before the plugin is initiated. This is required for rows which have images in them. The row heights will be calculated incorrectly if the images haven''t been loaded on the page. Use this delay to ensure the images have been lo'
||'aded before the heights are calculated. If no images are in use in the row then set the value to zero.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(12027227739210165997)
,p_plugin_id=>wwv_flow_imp.id(12010033345072843929)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>15
,p_prompt=>'Stretch Unfrozen Columns?'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When set to "Yes" the unfrozen container will be stretched to the browser screen width minus any offsets/padding of the parent container.',
'</p>',
'<p>When set to "No" you will be required to specify the width of the unfrozen container using another plugin attribute.',
'</p>',
'<p><strong>Note:</strong> it is only recommended that you set to "Yes" for IR report regions which do not have any regions positioned to the left of the interactive report. e.g. navigation list. It is because this setting uses an offset from the left'
||' side of the page to calculate the right side offset.',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_event(
 p_id=>wwv_flow_imp.id(12005372735174568866)
,p_plugin_id=>wwv_flow_imp.id(12010033345072843929)
,p_name=>'end'
,p_display_name=>'IR Freeze Columns - End'
);
wwv_flow_imp_shared.create_plugin_event(
 p_id=>wwv_flow_imp.id(12005372429633567319)
,p_plugin_id=>wwv_flow_imp.id(12010033345072843929)
,p_name=>'start'
,p_display_name=>'IR Freeze Columns - Start'
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '74642E6972467265657A65436F6C735F484F5645527B0D0A2020206261636B67726F756E642D636F6C6F723A20234532453245322021696D706F7274616E743B0D0A7D0D0A6469762E6972467265657A65436F6C735F57524150504552207B0D0A202070';
wwv_flow_imp.g_varchar2_table(2) := '616464696E673A303B0D0A20206D617267696E3A303B0D0A7D0D0A2E6972467265657A654C656674207B0D0A2020626F726465722D72696768743A6E6F6E653B0D0A7D0D0A2E6972467265657A655269676874207B0D0A2020626F726465722D6C656674';
wwv_flow_imp.g_varchar2_table(3) := '3A6E6F6E653B0D0A2020626F726465722D72696768743A31707820736F6C696420234141414141413B0D0A7D0D0A2F2A20495220435353204F766572726964657320666F7220696D70726F76656420646973706C6179202A2F0D0A2E6170657869725F57';
wwv_flow_imp.g_varchar2_table(4) := '4F524B53484545545F44415441207B0D0A20202070616464696E673A20303B0D0A2020206D617267696E3A20303B0D0A202020626F726465722D7261646975733A20303B0D0A202020626F726465722D636F6C6C617073653A20636F6C6C617073653B0D';
wwv_flow_imp.g_varchar2_table(5) := '0A7D0D0A2F2A20436F6E7461696E6572206164647320616E20657874726120333020706978656C73206F666620737061636520736F207765206E65656420746F206F6666736574206F757220706167696E6174696F6E0D0A236170657869725F44415441';
wwv_flow_imp.g_varchar2_table(6) := '5F50414E454C202E706167696E6174696F6E207370616E2E6669656C6464617461207B0D0A202020206D617267696E2D72696768743A20333070783B0D0A7D0D0A2A2F';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(12027075838090717574)
,p_plugin_id=>wwv_flow_imp.id(12010033345072843929)
,p_file_name=>'irfreezecol.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A2A0A202A200A202A20496E746572616374697665205265706F727420467265657A6520436F6C756D6E202D204479616E6D696320416374696F6E20506C7567696E0A202A20A92032303131204D617474204E6F6C616E2028206D6174742E6E6F6C61';
wwv_flow_imp.g_varchar2_table(2) := '6E2861742974686561706578667265656C616E6365722E636F6D2029200A202A200A202A20412076616C696420636F6D6D65726369616C206C6963656E736520697320726571756972656420746F207573652074686973204150455820506C7567696E0A';
wwv_flow_imp.g_varchar2_table(3) := '202A20766973697420687474703A2F2F7777772E74686561706578667265656C616E6365722E636F6D2F20746F2070757263686173652061206C6963656E73650A202A0A202A2F0A2866756E6374696F6E2861297B612E776964676574282275692E6972';
wwv_flow_imp.g_varchar2_table(4) := '467265657A65436F6C73222C7B6F7074696F6E733A7B69643A22222C77696474683A226175746F222C636F6C756D6E733A322C6164644D656E753A747275652C686F766572436C733A226972467265657A65436F6C735F484F564552222C696D67507265';
wwv_flow_imp.g_varchar2_table(5) := '6669783A222F692F227D2C5F6372656174653A66756E6374696F6E28297B7D2C5F696E69743A66756E6374696F6E28297B76617220623D746869733B6128622E656C656D656E74292E74726967676572282273746172742E434F4D5F41465F504C554749';
wwv_flow_imp.g_varchar2_table(6) := '4E5F4A515F4952465245455A45434F4C5322293B69662828622E6F7074696F6E732E6164644D656E7529262628622E676574436F6C436F756E7428293E3029297B622E5F6164645375624D656E7528293B622E5F6164644D656E754974656D28297D622E';
wwv_flow_imp.g_varchar2_table(7) := '667265657A65436F6C7328293B696628622E6F7074696F6E732E77696474683D3D3D226175746F22297B612877696E646F77292E726573697A652866756E6374696F6E28297B622E73657453747265746368576964746828293B622E7365745772617070';
wwv_flow_imp.g_varchar2_table(8) := '6572576964746828293B622E666978526F774865696768747328297D297D656C73657B612877696E646F77292E726573697A652866756E6374696F6E28297B622E73657457726170706572576964746828293B622E666978526F77486569676874732829';
wwv_flow_imp.g_varchar2_table(9) := '7D297D6128622E656C656D656E74292E747269676765722822656E642E434F4D5F41465F504C5547494E5F4A515F4952465245455A45434F4C5322293B72657475726E20747275657D2C5F616464526F77486F7665723A66756E6374696F6E28642C6329';
wwv_flow_imp.g_varchar2_table(10) := '7B76617220623D746869733B642E686F7665722866756E6374696F6E28297B612874686973292E66696E642822746422292E616464436C61737328622E6F7074696F6E732E686F766572436C73293B632E66696E642822746422292E616464436C617373';
wwv_flow_imp.g_varchar2_table(11) := '28622E6F7074696F6E732E686F766572436C73297D2C66756E6374696F6E28297B612874686973292E66696E642822746422292E72656D6F7665436C61737328622E6F7074696F6E732E686F766572436C73293B632E66696E642822746422292E72656D';
wwv_flow_imp.g_varchar2_table(12) := '6F7665436C61737328622E6F7074696F6E732E686F766572436C73297D293B632E686F7665722866756E6374696F6E28297B612874686973292E66696E642822746422292E616464436C61737328622E6F7074696F6E732E686F766572436C73293B642E';
wwv_flow_imp.g_varchar2_table(13) := '66696E642822746422292E616464436C61737328622E6F7074696F6E732E686F766572436C73297D2C66756E6374696F6E28297B612874686973292E66696E642822746422292E72656D6F7665436C61737328622E6F7074696F6E732E686F766572436C';
wwv_flow_imp.g_varchar2_table(14) := '73293B642E66696E642822746422292E72656D6F7665436C61737328622E6F7074696F6E732E686F766572436C73297D297D2C73656C6563744D656E754974656D3A66756E6374696F6E2862297B612822236170657869725F465245455A45434F4C535F';
wwv_flow_imp.g_varchar2_table(15) := '4D454E5522292E66696E6428226C692E6468746D6C5375624D656E7553656C656374656422292E72656D6F7665436C61737328226468746D6C5375624D656E7553656C656374656422293B612822236170657869725F465245455A45434F4C535F4D454E';
wwv_flow_imp.g_varchar2_table(16) := '5522292E66696E6428226C6920615B7469746C653D222B622B225D22292E706172656E7428292E616464436C61737328226468746D6C5375624D656E7553656C656374656422293B746869732E6F7074696F6E732E636F6C756D6E733D623B675265706F';
wwv_flow_imp.g_varchar2_table(17) := '72742E70756C6C28297D2C5F6164645375624D656E753A66756E6374696F6E28297B76617220663D746869732C653D22222C623B666F722876617220643D303B643C662E676574436F6C436F756E7428293B642B2B297B76617220633D28643D3D30293F';
wwv_flow_imp.g_varchar2_table(18) := '224E6F6E65223A643B623D28643D3D746869732E6F7074696F6E732E636F6C756D6E73293F273C6C6920636C6173733D226468746D6C5375624D656E7553656C6563746564223E273A223C6C693E223B652B3D622B273C61207469746C653D22272B642B';
wwv_flow_imp.g_varchar2_table(19) := '2722206F6E6D6F7573656F7665723D226468746D6C5F436C6F7365416C6C5375624D656E75734C2874686973292220636C6173733D226468746D6C5375624D656E754E2220687265663D226A6176617363726970743A2866756E6374696F6E2824297B24';
wwv_flow_imp.g_varchar2_table(20) := '285C27235C272B5C27272B746869732E6F7074696F6E732E69642B2227292E6972467265657A65436F6C73282773656C6563744D656E754974656D272C222B642B27293B7D2928617065782E6A5175657279293B223E272B632B223C2F613E3C2F6C693E';
wwv_flow_imp.g_varchar2_table(21) := '227D612822236170657869725F465245455A45434F4C535F4D454E5522292E72656D6F766528293B6128273C756C2068746D6C64623A6C6973746C6576656C3D223422207374796C653D22646973706C61793A206E6F6E653B2220636C6173733D226468';
wwv_flow_imp.g_varchar2_table(22) := '746D6C5375624D656E75222069643D226170657869725F465245455A45434F4C535F4D454E55223E3C2F756C3E27292E617070656E64546F28612822236170657869725F414354494F4E534D454E5522292E706172656E742829292E617070656E642865';
wwv_flow_imp.g_varchar2_table(23) := '297D2C5F6164644D656E754974656D3A66756E6374696F6E28297B612822236170657869725F414354494F4E534D454E5522292E70726570656E6428273C6C693E3C61206F6E6D6F7573656F7665723D226468746D6C5F4D656E754F70656E2874686973';
wwv_flow_imp.g_varchar2_table(24) := '2C5C276170657869725F465245455A45434F4C535F4D454E555C272C747275652C5C274C6566745C27292220636C6173733D226468746D6C5375624D656E75532220687265663D2223223E3C696D67207374796C653D22666C6F61743A206C6566743B20';
wwv_flow_imp.g_varchar2_table(25) := '77696474683A20333270783B206865696768743A20323470783B22207372633D22272B746869732E6F7074696F6E732E696D675072656669782B2777732F656469745F636F6C5F33327832342E676966223E3C7370616E3E467265657A6520436F6C756D';
wwv_flow_imp.g_varchar2_table(26) := '6E733C2F7370616E3E3C696D6720616C69676E3D226162736D6964646C652220636C6173733D2268746D6C64624D494D472220616C743D2222207372633D22272B746869732E6F7074696F6E732E696D675072656669782B276D656E755F6F70656E5F72';
wwv_flow_imp.g_varchar2_table(27) := '69676874322E676966223E3C2F613E3C6C693E27297D2C5F6765744865696768743A66756E6374696F6E2863297B632E6373732822686569676874222C2222293B76617220623D632E68656967687428293B696628612E62726F777365722E6D73696529';
wwv_flow_imp.g_varchar2_table(28) := '7B623D632E68656967687428292B347D696628612E62726F777365722E7765626B6974297B623D632E68656967687428292B357D696628612E62726F777365722E6D6F7A696C6C61297B623D632E6F7574657248656967687428292B347D72657475726E';
wwv_flow_imp.g_varchar2_table(29) := '20627D2C5F6765745363726F6C6C62617257696474683A66756E6374696F6E28297B76617220643D746869733B696628642E7363726F6C6C6261725769647468297B72657475726E20642E7363726F6C6C62617257696474687D76617220653D6128273C';
wwv_flow_imp.g_varchar2_table(30) := '646976207374796C653D2277696474683A353070783B6865696768743A353070783B6F766572666C6F773A68696464656E3B706F736974696F6E3A6162736F6C7574653B746F703A2D32303070783B6C6566743A2D32303070783B223E3C646976207374';
wwv_flow_imp.g_varchar2_table(31) := '796C653D226865696768743A31303070783B223E3C2F6469763E3C2F6469763E27293B612822626F647922292E617070656E642865293B76617220633D612822646976222C65292E696E6E6572576964746828293B652E63737328226F766572666C6F77';
wwv_flow_imp.g_varchar2_table(32) := '2D79222C226175746F22293B76617220623D612822646976222C65292E696E6E6572576964746828293B612865292E72656D6F766528293B642E7363726F6C6C62617257696474683D28632D62293B72657475726E20642E7363726F6C6C626172576964';
wwv_flow_imp.g_varchar2_table(33) := '74687D2C5F736574486569676874733A66756E6374696F6E28297B76617220623D746869733B69662821622E247461626C654F6E65297B72657475726E20746869737D76617220643D622E247461626C654F6E652E66696E642822747222293B76617220';
wwv_flow_imp.g_varchar2_table(34) := '633D622E247461626C6554776F2E66696E642822747222293B642E656163682866756E6374696F6E2867297B766172206A3D612874686973293B76617220693D632E65712867293B76617220653D303B6A2E6368696C6472656E28223A66697273742229';
wwv_flow_imp.g_varchar2_table(35) := '2E656163682866756E6374696F6E28297B653D4D6174682E6D617828622E5F6765744865696768742861287468697329292C65297D293B76617220663D303B692E6368696C6472656E28223A666972737422292E656163682866756E6374696F6E28297B';
wwv_flow_imp.g_varchar2_table(36) := '663D4D6174682E6D617828622E5F6765744865696768742861287468697329292C66297D293B76617220683D28653C66293F663A653B6A2E6368696C6472656E28223A666972737422292E6865696768742868293B692E6368696C6472656E28223A6669';
wwv_flow_imp.g_varchar2_table(37) := '72737422292E6865696768742868297D297D2C666978526F77486569676874733A66756E6374696F6E28297B76617220623D746869733B622E5F7365744865696768747328622E247461626C654F6E652C622E247461626C6554776F297D2C676574436F';
wwv_flow_imp.g_varchar2_table(38) := '6C436F756E743A66756E6374696F6E28297B72657475726E2061282223222B746869732E6F7074696F6E732E69642B22202E6170657869725F574F524B53484545545F4441544122292E66696E64282274723A6C61737422292E6368696C6472656E2829';
wwv_flow_imp.g_varchar2_table(39) := '2E6C656E6774687C7C307D2C5F67657442726F7773657257696474683A66756E6374696F6E28297B72657475726E20612877696E646F77292E776964746828297D2C6765745772617070657257696474683A66756E6374696F6E28297B76617220633D74';
wwv_flow_imp.g_varchar2_table(40) := '6869732C623D4D6174682E6D617828632E24636F6E7461696E65724C6566742E6F75746572576964746828292B632E24636F6E7461696E657252696768742E6F75746572576964746828292C30292B313B696628632E247461626C654F6E652E68656967';
wwv_flow_imp.g_varchar2_table(41) := '687428293C3D632E24636F6E7461696E657252696768742E6865696768742829297B622B3D632E5F6765745363726F6C6C626172576964746828297D72657475726E20627D2C7365745772617070657257696474683A66756E6374696F6E28297B766172';
wwv_flow_imp.g_varchar2_table(42) := '20633D746869733B69662821632E24636F6E7461696E65724C656674297B72657475726E20746869737D76617220623D632E67657457726170706572576964746828293B632E24777261707065722E63737328227769647468222C62293B72657475726E';
wwv_flow_imp.g_varchar2_table(43) := '20746869737D2C7365745374726574636857696474683A66756E6374696F6E28297B76617220643D746869732C633D4D6174682E6D617828642E24636F6E7461696E65724C6566742E6F75746572576964746828292C30292C653D28612E62726F777365';
wwv_flow_imp.g_varchar2_table(44) := '722E6D73696526267061727365496E7428612E62726F777365722E76657273696F6E293D3D36293F227769647468223A226D61782D7769647468223B76617220623D28642E5F67657442726F77736572576964746828292D632D61282223617065786972';
wwv_flow_imp.g_varchar2_table(45) := '5F574F524B53484545545F524547494F4E22292E6F666673657428292E6C6566742D3330293B696628612E62726F777365722E6D736965297B623D622B317D642E24636F6E7461696E657252696768742E63737328652C4D6174682E6D617828622C3230';
wwv_flow_imp.g_varchar2_table(46) := '3029293B72657475726E20746869737D2C667265657A65436F6C733A66756E6374696F6E28297B766172206B3D746869733B76617220673D746869732E6F7074696F6E733B76617220663D672E636F6C756D6E733B76617220633D672E69642B225F6663';
wwv_flow_imp.g_varchar2_table(47) := '223B76617220643D632B225F6C656674223B76617220693D632B225F7269676874223B766172206A3D28612E62726F777365722E6D73696526267061727365496E7428612E62726F777365722E76657273696F6E293D3D36293F227769647468223A226D';
wwv_flow_imp.g_varchar2_table(48) := '61782D7769647468223B6966286128222E6170657869725F574F524B53484545545F4441544122292E66696E64282274723A666972737422292E6C656E6774683D3D3D30297B72657475726E7D662D2D3B696628663E3D30297B6B2E247461626C654F6E';
wwv_flow_imp.g_varchar2_table(49) := '653D61282223222B672E69642B22202E6170657869725F574F524B53484545545F4441544122293B766172206C3D61282274683A6571283029222C6B2E247461626C654F6E65293B6B2E24777261707065723D6128223C6469762F3E222C7B69643A632C';
wwv_flow_imp.g_varchar2_table(50) := '22636C617373223A226972467265657A65436F6C735F57524150504552227D292E617070656E64546F286B2E247461626C654F6E652E706172656E742829292E63737328226F766572666C6F77222C2268696464656E22293B6B2E24636F6E7461696E65';
wwv_flow_imp.g_varchar2_table(51) := '724C6566743D6128223C6469762F3E222C7B69643A642C22636C617373223A226972467265657A65436F6C735F434F4E5441494E4552206972467265657A654C656674227D292E617070656E64546F282223222B63292E637373287B22666C6F6174223A';
wwv_flow_imp.g_varchar2_table(52) := '226C656674222C6F766572666C6F773A2268696464656E222C22626F726465722D626F74746F6D2D7769647468223A6C2E6373732822626F726465722D626F74746F6D2D776964746822292C22626F726465722D626F74746F6D2D636F6C6F72223A6C2E';
wwv_flow_imp.g_varchar2_table(53) := '6373732822626F726465722D626F74746F6D2D636F6C6F7222292C22626F726465722D626F74746F6D2D7374796C65223A6C2E6373732822626F726465722D626F74746F6D2D7374796C6522297D292E6669784F766572666C6F7728293B6B2E24746162';
wwv_flow_imp.g_varchar2_table(54) := '6C654F6E652E617070656E64546F2861282223222B6429293B6B2E24636F6E7461696E657252696768743D6128223C6469762F3E222C7B69643A692C22636C617373223A226972467265657A65436F6C735F434F4E5441494E4552206972467265657A65';
wwv_flow_imp.g_varchar2_table(55) := '5269676874227D292E617070656E64546F282223222B63292E637373286A2C28672E77696474683D3D3D226175746F22293F303A672E7769647468292E637373287B22666C6F6174223A226C656674222C6F766572666C6F773A226175746F222C22626F';
wwv_flow_imp.g_varchar2_table(56) := '726465722D626F74746F6D2D7769647468223A6C2E6373732822626F726465722D626F74746F6D2D776964746822292C22626F726465722D626F74746F6D2D636F6C6F72223A6C2E6373732822626F726465722D626F74746F6D2D636F6C6F7222292C22';
wwv_flow_imp.g_varchar2_table(57) := '626F726465722D626F74746F6D2D7374796C65223A6C2E6373732822626F726465722D626F74746F6D2D7374796C6522297D292E6669784F766572666C6F7728293B6B2E247461626C6554776F3D6B2E247461626C654F6E652E636C6F6E6528292E6174';
wwv_flow_imp.g_varchar2_table(58) := '747228226964222C6B2E247461626C654F6E652E617474722822696422292B225F3222292E617070656E64546F2861282223222B6929293B76617220653D6B2E247461626C654F6E652E66696E642822747222293B766172206D3D6B2E247461626C6554';
wwv_flow_imp.g_varchar2_table(59) := '776F2E66696E642822747222293B652E656163682866756E6374696F6E286E297B76617220703D612874686973293B766172206F3D6D2E6571286E293B702E6368696C6472656E28223A677428222B662B222922292E72656D6F766528293B6966286F2E';
wwv_flow_imp.g_varchar2_table(60) := '6368696C6472656E28223A666972737422292E617474722822636F6C7370616E22293E66297B6F2E6368696C6472656E28223A666972737422292E68746D6C2822266E6273703B22297D656C73657B6F2E6368696C6472656E28223A6C7428222B28662B';
wwv_flow_imp.g_varchar2_table(61) := '31292B222922292E72656D6F766528297D6B2E5F616464526F77486F76657228702C6F297D297D6B2E666978526F774865696768747328293B6966286B2E6F7074696F6E732E77696474683D3D3D226175746F22297B6B2E736574537472657463685769';
wwv_flow_imp.g_varchar2_table(62) := '64746828297D6B2E73657457726170706572576964746828293B76617220623D612822236170657869725F726F6C6C6F76657222292E617070656E64546F2822626F647922293B76617220683D66756E6374696F6E28297B696628747970656F66206752';
wwv_flow_imp.g_varchar2_table(63) := '65706F72742E636F6E74726F6C732E7769646765745F6F6C64213D3D2266756E6374696F6E22297B675265706F72742E636F6E74726F6C732E7769646765745F6F6C643D675265706F72742E636F6E74726F6C732E7769646765743B675265706F72742E';
wwv_flow_imp.g_varchar2_table(64) := '636F6E74726F6C732E7769646765743D66756E6374696F6E286F297B675265706F72742E636F6E74726F6C732E7769646765745F6F6C64286F293B766172206E3D61282223222B6F292E706172656E742822746822293B675265706F72742E5F46696E69';
wwv_flow_imp.g_varchar2_table(65) := '736865645F4C6F6164696E675F6F6C643D675265706F72742E5F46696E69736865645F4C6F6164696E673B675265706F72742E5F46696E69736865645F4C6F6164696E673D2866756E6374696F6E28712C70297B72657475726E2066756E6374696F6E28';
wwv_flow_imp.g_varchar2_table(66) := '297B7472797B675265706F72742E5F46696E69736865645F4C6F6164696E675F6F6C6428293B712E63737328226C656674222C702E6F666673657428292E6C656674293B675265706F72742E5F46696E69736865645F4C6F6164696E673D675265706F72';
wwv_flow_imp.g_varchar2_table(67) := '742E5F46696E69736865645F4C6F6164696E675F6F6C647D63617463682872297B675265706F72742E5F46696E69736865645F4C6F6164696E673D675265706F72742E5F46696E69736865645F4C6F6164696E675F6F6C647D7D7D2928622C6E297D7D7D';
wwv_flow_imp.g_varchar2_table(68) := '3B6966286B2E6F7074696F6E732E64656C61793D3D30297B73657454696D656F757428682C323030297D656C73657B6828297D7D7D293B612E666E2E6669784F766572666C6F773D66756E6374696F6E28297B696628612E62726F777365722E6D736965';
wwv_flow_imp.g_varchar2_table(69) := '26267061727365496E7428612E62726F777365722E76657273696F6E293C3D37297B72657475726E20746869732E656163682866756E6374696F6E28297B612874686973292E637373287B2270616464696E672D626F74746F6D223A2231377078222C22';
wwv_flow_imp.g_varchar2_table(70) := '6F766572666C6F772D79223A2268696464656E227D297D297D656C73657B72657475726E20746869737D7D7D2928617065782E6A5175657279293B';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(12029972645849101217)
,p_plugin_id=>wwv_flow_imp.id(12010033345072843929)
,p_file_name=>'irfreezecol.js'
,p_mime_type=>'text/javascript'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.component_end;
end;
/
