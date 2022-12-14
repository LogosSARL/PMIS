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
,p_default_application_id=>101
,p_default_owner=>'PRJ'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 101 - Projects
--
-- Application Export:
--   Application:     101
--   Name:            Projects
--   Date and Time:   09:34 Thursday August 18, 2022
--   Exported By:     PRJ
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         5.1.1.00.08
--   Instance ID:     108805670837021
--

prompt --application/pages/delete_00112
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>112);
end;
/
prompt --application/pages/page_00112
begin
wwv_flow_api.create_page(
 p_id=>112
,p_user_interface_id=>wwv_flow_api.id(64113831873839)
,p_name=>'chart'
,p_page_mode=>'NORMAL'
,p_step_title=>'chart'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'JAWAD'
,p_last_upd_yyyymmddhh24miss=>'20180515111415'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(174118596427863930)
,p_plug_name=>'chart'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(20903049949019134)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(174118844038863933)
,p_region_id=>wwv_flow_api.id(174118596427863930)
,p_chart_type=>'pie'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_value_format_scaling=>'auto'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(174118906157863934)
,p_chart_id=>wwv_flow_api.id(174118844038863933)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL_QUERY'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null,b.e_name contractName, d.e_name taskName,SUM(g.no_of_hours) Enrolledhours',
'',
'from lgs_contracts a,logos.lgs_companies b,lgs_projects c,',
'     prj_work_types d,prj_projectwork_types e,prj_estimated_dets f',
'     , prj_enrolled_dets g',
'where a.company_code = b.code ',
'and a.usage_type= 2',
'and a.id= c.contract_id',
'and c.id= e.proj_id',
'and d.id= e.wrktyp_id',
'and f.project_worktype_id = e.id',
'and g.project_worktype_id = e.id',
'and (a.id = :P112_CONTRACT OR  :P112_CONTRACT IS NULL )',
'---and (d.id = :P112_TASK  OR :P112_TASK  IS NULL )',
'GROUP BY b.e_name , d.e_name ',
''))
,p_items_value_column_name=>'ENROLLEDHOURS'
,p_items_label_column_name=>'TASKNAME'
,p_items_label_rendered=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(174119219004863937)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(20903049949019134)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(174119515447863940)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(174119219004863937)
,p_button_name=>'go'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(20901145090019119)
,p_button_image_alt=>'Go'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT-CENTER'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174119331914863938)
,p_name=>'P112_CONTRACT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(174119219004863937)
,p_prompt=>'Contract'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DSP_CODE d, ID r',
'from   LGS_CONTRACTS',
'where usage_type = 2',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(20906254571019158)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
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
