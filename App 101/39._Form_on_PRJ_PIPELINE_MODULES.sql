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
--   Date and Time:   09:32 Thursday August 18, 2022
--   Exported By:     PRJ
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         5.1.1.00.08
--   Instance ID:     108805670837021
--

prompt --application/pages/delete_00039
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>39);
end;
/
prompt --application/pages/page_00039
begin
wwv_flow_api.create_page(
 p_id=>39
,p_user_interface_id=>wwv_flow_api.id(64113831873839)
,p_name=>'Form on PRJ_PIPELINE_MODULES'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on PRJ_PIPELINE_MODULES'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SERINE'
,p_last_upd_yyyymmddhh24miss=>'20170109113320'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2408061968382336)
,p_plug_name=>'Form on PRJ_PIPELINE_MODULES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(20902140805019133)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2408446258382351)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(2408061968382336)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(20901145090019119)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P39_PPM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2408602809382352)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2408061968382336)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(20901145090019119)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2408348600382351)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(2408061968382336)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(20901145090019119)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P39_PPM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2408597429382351)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(2408061968382336)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(20901145090019119)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P39_PPM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(2410272113382359)
,p_branch_action=>'f?p=&APP_ID.:38:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2410658634382425)
,p_name=>'P39_PPM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2408061968382336)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ppm Id'
,p_source=>'PPM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(20906254571019158)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2410972989382438)
,p_name=>'P39_PPM_CNT_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(2408061968382336)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ppm Cnt Id'
,p_source=>'PPM_CNT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(20906436051019158)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2411390088382442)
,p_name=>'P39_PPM_MODULE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(2408061968382336)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ppm Module'
,p_source=>'PPM_MODULE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(20906436051019158)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2411732288382445)
,p_name=>'P39_PPM_START_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(2408061968382336)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ppm Start Date'
,p_source=>'PPM_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(20906254571019158)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2412164588382445)
,p_name=>'P39_PPM_END_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(2408061968382336)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ppm End Date'
,p_source=>'PPM_END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(20906254571019158)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2412506903382446)
,p_name=>'P39_PPM_INT_CODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(2408061968382336)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ppm Int Code'
,p_source=>'PPM_INT_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(20906254571019158)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2412991772382446)
,p_name=>'P39_PPM_NEW_IMPLEMENTATION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(2408061968382336)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ppm New Implementation'
,p_source=>'PPM_NEW_IMPLEMENTATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(20906254571019158)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2413306010382446)
,p_name=>'P39_PPM_MAINTENANCE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(2408061968382336)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ppm Maintenance'
,p_source=>'PPM_MAINTENANCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(20906254571019158)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2413778153382447)
,p_name=>'P39_PPM_PRICING_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(2408061968382336)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ppm Pricing Date'
,p_source=>'PPM_PRICING_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(20906254571019158)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2414177204382447)
,p_name=>'P39_PPM_HIGH_LEVEL_ESTIMATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(2408061968382336)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ppm High Level Estimate'
,p_source=>'PPM_HIGH_LEVEL_ESTIMATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(20906254571019158)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2414546418382447)
,p_name=>'P39_PPM_RFP_REF'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(2408061968382336)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ppm Rfp Ref'
,p_source=>'PPM_RFP_REF'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(20906254571019158)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2415306438382453)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from PRJ_PIPELINE_MODULES'
,p_attribute_02=>'PRJ_PIPELINE_MODULES'
,p_attribute_03=>'P39_PPM_ID'
,p_attribute_04=>'PPM_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2415717586382458)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if :P39_PPM_ID is null then',
'        select "#OWNER#"."PRJ_PPM_SEQ".nextval',
'          into :P39_PPM_ID',
'          from sys.dual;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(2408348600382351)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2416111631382459)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of PRJ_PIPELINE_MODULES'
,p_attribute_02=>'PRJ_PIPELINE_MODULES'
,p_attribute_03=>'P39_PPM_ID'
,p_attribute_04=>'PPM_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2416595325382459)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(2408597429382351)
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