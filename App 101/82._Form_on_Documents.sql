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

prompt --application/pages/delete_00082
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>82);
end;
/
prompt --application/pages/page_00082
begin
wwv_flow_api.create_page(
 p_id=>82
,p_user_interface_id=>wwv_flow_api.id(64113831873839)
,p_name=>'Form on Documents'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on Documents'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20170410180418'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(183854342363502818)
,p_plug_name=>'Form on OPP_ACTIONS_DOCS'
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
 p_id=>wwv_flow_api.id(183854812928502819)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(183854342363502818)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(20901145090019119)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P82_OAD_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(183855050384502819)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(183854342363502818)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(20901145090019119)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(183854730140502819)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(183854342363502818)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(20901145090019119)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P82_OAD_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(183854932615502819)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(183854342363502818)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(20901145090019119)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P82_OAD_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(183856601079502823)
,p_branch_name=>'Go To Page 81'
,p_branch_action=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.::P81_OAC_ID:&P82_OAC_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48424936281072117)
,p_name=>'P82_OAD_FILE_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(183854342363502818)
,p_prompt=>'File'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(20906254571019158)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48425069993072118)
,p_name=>'P82_RFPFILES_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(183854342363502818)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New'
,p_source=>'OAD_FILE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(20906254571019158)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182442506237285630)
,p_name=>'P82_OAC_ID'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(183854342363502818)
,p_use_cache_before_default=>'NO'
,p_source=>'OAD_OAC_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183857060927502824)
,p_name=>'P82_OAD_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(183854342363502818)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Oad Id'
,p_source=>'OAD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(20906254571019158)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(183858631490502843)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from OPP_ACTIONS_DOCS'
,p_attribute_02=>'OPP_ACTIONS_DOCS'
,p_attribute_03=>'P82_OAD_ID'
,p_attribute_04=>'OAD_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(182442602847285631)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'getPK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'  if :P82_OAD_ID is null then',
'        select "#OWNER#"."OPP_OAD_SEQ".nextval',
'          into :P82_OAD_ID',
'          from sys.dual;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(183859002455502843)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of OPP_ACTIONS_DOCS'
,p_attribute_02=>'OPP_ACTIONS_DOCS'
,p_attribute_03=>'P82_OAD_ID'
,p_attribute_04=>'OAD_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48426405994072232)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPLOADRSF'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update OPP_ACTIONS_DOCS',
'set OAD_FILE_NAME = :P82_OAD_FILE_NAME',
'where OAD_ID = :P82_OAD_ID;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'DOCUMENT ATTACHED'
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
