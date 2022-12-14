set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.1.00.08'
,p_default_workspace_id=>1680420756714069
,p_default_application_id=>222
,p_default_owner=>'PRJ'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 222 - PMS
--
-- Application Export:
--   Application:     222
--   Name:            PMS
--   Date and Time:   10:54 Thursday August 18, 2022
--   Exported By:     PRJ
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         5.1.1.00.08
--   Instance ID:     108805670837021
--

prompt --application/pages/delete_00030
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>30);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_api.create_page(
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(148753632100243889)
,p_name=>'copy from page 14'
,p_page_mode=>'NORMAL'
,p_step_title=>'copy from page 14'
,p_step_sub_title=>'copy from page 14'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'JAWAD'
,p_last_upd_yyyymmddhh24miss=>'20190822104532'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(964144819878467844)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(148720099995243498)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html>',
'  <head>',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes">',
'    <meta http-equiv="Content-type" content="text/html;charset=UTF-8">',
'    <title>Map with Driving Route from A to B</title>',
'    <link rel="stylesheet" type="text/css" href="https://js.api.here.com/v3/3.1/mapsjs-ui.css" />',
'    <link rel="stylesheet" type="text/css" href="demo.css" />',
'    <link rel="stylesheet" type="text/css" href="styles.css" />',
'    <link rel="stylesheet" type="text/css" href="../template.css" />',
'    <script type="text/javascript" src=''../test-credentials.js''></script>    ',
'    <script type="text/javascript" src="https://js.api.here.com/v3/3.1/mapsjs-core.js"></script>',
'    <script type="text/javascript" src="https://js.api.here.com/v3/3.1/mapsjs-service.js"></script>',
'    <script type="text/javascript" src="https://js.api.here.com/v3/3.1/mapsjs-ui.js"></script>',
'    <script type="text/javascript" src="https://js.api.here.com/v3/3.1/mapsjs-mapevents.js"></script>',
'    <style type="text/css">',
'      .directions li span.arrow {',
'        display:inline-block;',
'        min-width:28px;',
'        min-height:28px;',
'        background-position:0px;',
'        background-image: url("https://heremaps.github.io/maps-api-for-javascript-examples/map-with-route-from-a-to-b/img/arrows.png");',
'        position:relative;',
'        top:8px;',
'      }',
'      .directions li span.depart  {',
'        background-position:-28px;',
'      }',
'      .directions li span.rightUTurn  {',
'        background-position:-56px;',
'      }',
'      .directions li span.leftUTurn  {',
'        background-position:-84px;',
'      }',
'      .directions li span.rightFork  {',
'        background-position:-112px;',
'      }',
'      .directions li span.leftFork  {',
'        background-position:-140px;',
'      }',
'      .directions li span.rightMerge  {',
'        background-position:-112px;',
'      }',
'      .directions li span.leftMerge  {',
'        background-position:-140px;',
'      }',
'      .directions li span.slightRightTurn  {',
'        background-position:-168px;',
'      }',
'      .directions li span.slightLeftTurn{',
'        background-position:-196px;',
'      }',
'      .directions li span.rightTurn  {',
'        background-position:-224px;',
'      }',
'      .directions li span.leftTurn{',
'        background-position:-252px;',
'      }',
'      .directions li span.sharpRightTurn  {',
'        background-position:-280px;',
'      }',
'      .directions li span.sharpLeftTurn{',
'        background-position:-308px;',
'      }',
'      .directions li span.rightRoundaboutExit1 {',
'        background-position:-616px;',
'      }',
'      .directions li span.rightRoundaboutExit2 {',
'        background-position:-644px;',
'      }',
'      ',
'      .directions li span.rightRoundaboutExit3 {',
'        background-position:-672px;',
'      }',
'      ',
'      .directions li span.rightRoundaboutExit4 {',
'        background-position:-700px;',
'      }',
'      ',
'      .directions li span.rightRoundaboutPass {',
'        background-position:-700px;',
'      }',
'      ',
'      .directions li span.rightRoundaboutExit5 {',
'        background-position:-728px;',
'      }',
'      .directions li span.rightRoundaboutExit6 {',
'        background-position:-756px;',
'      }',
'      .directions li span.rightRoundaboutExit7 {',
'        background-position:-784px;',
'      }',
'      .directions li span.rightRoundaboutExit8 {',
'        background-position:-812px;',
'      }',
'      .directions li span.rightRoundaboutExit9 {',
'        background-position:-840px;',
'      }',
'      .directions li span.rightRoundaboutExit10 {',
'        background-position:-868px;',
'      }',
'      .directions li span.rightRoundaboutExit11 {',
'        background-position:896px;',
'      }',
'      .directions li span.rightRoundaboutExit12 {',
'        background-position:924px;',
'      }',
'      .directions li span.leftRoundaboutExit1  {',
'        background-position:-952px;',
'      }',
'      .directions li span.leftRoundaboutExit2  {',
'        background-position:-980px;',
'      }',
'      .directions li span.leftRoundaboutExit3  {',
'        background-position:-1008px;',
'      }',
'      .directions li span.leftRoundaboutExit4  {',
'        background-position:-1036px;',
'      }',
'      .directions li span.leftRoundaboutPass {',
'        background-position:1036px;',
'      }',
'      .directions li span.leftRoundaboutExit5  {',
'        background-position:-1064px;',
'      }',
'      .directions li span.leftRoundaboutExit6  {',
'        background-position:-1092px;',
'      }',
'      .directions li span.leftRoundaboutExit7  {',
'        background-position:-1120px;',
'      }',
'      .directions li span.leftRoundaboutExit8  {',
'        background-position:-1148px;',
'      }',
'      .directions li span.leftRoundaboutExit9  {',
'        background-position:-1176px;',
'      }',
'      .directions li span.leftRoundaboutExit10  {',
'        background-position:-1204px;',
'      }',
'      .directions li span.leftRoundaboutExit11  {',
'        background-position:-1232px;',
'      }',
'      .directions li span.leftRoundaboutExit12  {',
'        background-position:-1260px;',
'      }',
'      .directions li span.arrive  {',
'        background-position:-1288px;',
'      }',
'      .directions li span.leftRamp  {',
'        background-position:-392px;',
'      }',
'      .directions li span.rightRamp  {',
'        background-position:-420px;',
'      }',
'      .directions li span.leftExit  {',
'        background-position:-448px;',
'      }',
'      .directions li span.rightExit  {',
'        background-position:-476px;',
'      }',
'      .directions li span.ferry  {',
'        background-position:-1316px;',
'      }',
'      </style>',
'  <script type="text/javascript" src=''../js-examples-rendering-helpers/iframe-height.js''></script></head>',
'  <body id="markers-on-the-map">',
'    ',
'    <div class="page-header">',
'        <h1>Map with Driving Route from A to B</h1>',
'        <p>Request a driving route from A to B and display it on the map</p>',
'    </div>',
'    <p>This example calculates the fastest car route from the <b>Brandenburg Gate</b> ',
'      in the centre of Berlin <i>(52.51605?N, 13.37787?E)</i> to <b>Friedrichstra?e Railway Station</b> ',
'      <i>(52.52058?N, 13.38615?E)</i>, and displays it on the map.</p>',
'    <div id="map"></div>',
'    <div id="panel"></div>',
'    <h3>Code</h3>',
'    <p>Access to the routing service is obtained from the <code>H.service.Platform</code> by calling ',
'      <code>getRoutingService()</code>. The <code>calculateRoute()</code> method is used to calculate the fastest ',
'      car (<code>mode:fastest;car</code>) route by passing in the relevant parameters as defined in ',
'      <a href="http://developer.here.com/rest-apis/documentation/routing/topics/resource-calculate-route.html" target="_blank">Routing API</a>. ',
'      The styling and display of the response is under the control of the developer.</p>',
'    <script type="text/javascript" src=''demo.js''></script>',
'  </body>',
'</html>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(482095656109357647)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(964144819878467844)
,p_button_name=>'findlocation'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(148742800503243679)
,p_button_image_alt=>'Find Location'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(482096082497357648)
,p_name=>'P30_LATITUDE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(964144819878467844)
,p_prompt=>'Latitude'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(148742305227243640)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(482096483856357650)
,p_name=>'P30_LONGTTUDE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(964144819878467844)
,p_prompt=>'Longttude'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(148742305227243640)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(482096895081357653)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(482095656109357647)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(482097374847357653)
,p_event_id=>wwv_flow_api.id(482096895081357653)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map = new google.maps.Map(document.getElementById(''map''), {',
' center: {lat: -34.397, lng: 150.644},',
' zoom: 15',
'});',
'var infoWindow = new google.maps.InfoWindow({map: map});',
'',
'// Try HTML5 geolocation.',
'if (navigator.geolocation) {',
' navigator.geolocation.getCurrentPosition(function(position) {',
' var pos = {',
' lat: position.coords.latitude,',
' lng: position.coords.longitude',
' };',
' $(''#P30_LATITUDE'').val(position.coords.latitude);',
' $(''#P30_LONGTTUDE'').val(position.coords.longitude);',
'',
' infoWindow.setPosition(pos);',
' infoWindow.setContent(''Location found.'');',
' map.setCenter(pos);',
' }, function() {',
' handleLocationError(true, infoWindow, map.getCenter());',
' });',
'} else {',
' // Browser doesn''t support Geolocation',
' handleLocationError(false, infoWindow, map.getCenter());',
'}',
'',
'function handleLocationError(browserHasGeolocation, infoWindow, pos) {',
' infoWindow.setPosition(pos);',
' infoWindow.setContent(browserHasGeolocation ?',
' ''Error: The Geolocation service failed.'' :',
' ''Error: Your browser doesn\''t support geolocation.'');',
'}'))
,p_stop_execution_on_error=>'Y'
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
