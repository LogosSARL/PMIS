--------------------------------------------------------
--  DDL for Package FLOW_CONSTANTS_PKG
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "PRJ"."FLOW_CONSTANTS_PKG" 
  authid definer
as

  gc_vcbool_true   constant varchar2(10 char) := 'true';
  gc_vcbool_false  constant varchar2(10 char) := 'false';
  gc_numbool_true  constant number            := 1;
  gc_numbool_false constant number            := 0;

  gc_nsmap       constant varchar2(200 char) := 'xmlns:bpmn="http://www.omg.org/spec/BPMN/20100524/MODEL"';
  gc_bpmn_prefix constant varchar2(10 char)  := 'bpmn:';
  gc_apex_prefix constant varchar2(10 char)  := 'apex:';

  -- BPMN Keys
  gc_bpmn_terminate_event_definition  constant flow_types_pkg.t_bpmn_id := gc_bpmn_prefix || 'terminateEventDefinition';
  gc_bpmn_error_event_definitition    constant flow_types_pkg.t_bpmn_id := gc_bpmn_prefix || 'errorEventDefinition';
  gc_bpmn_escalation_event_definition constant flow_types_pkg.t_bpmn_id := gc_bpmn_prefix || 'escalationEventDefinition';
  gc_bpmn_link_event_definition       constant flow_types_pkg.t_bpmn_id := gc_bpmn_prefix || 'linkEventDefinition';

  gc_bpmn_timer_event_definition      constant flow_types_pkg.t_bpmn_id := gc_bpmn_prefix || 'timerEventDefinition';
  gc_timer_type_date                  constant flow_types_pkg.t_bpmn_id := gc_bpmn_prefix || 'timeDate';
  gc_timer_type_duration              constant flow_types_pkg.t_bpmn_id := gc_bpmn_prefix || 'timeDuration';
  gc_timer_type_cycle                 constant flow_types_pkg.t_bpmn_id := gc_bpmn_prefix || 'timeCycle';

  gc_bpmn_object_documentation        constant flow_types_pkg.t_bpmn_id := gc_bpmn_prefix || 'documentation';

  gc_bpmn_gateway_exclusive           constant flow_types_pkg.t_bpmn_id := gc_bpmn_prefix || 'exclusiveGateway';
  gc_bpmn_gateway_inclusive           constant flow_types_pkg.t_bpmn_id := gc_bpmn_prefix || 'inclusiveGateway';
  gc_bpmn_sequence_flow               constant flow_types_pkg.t_bpmn_id := gc_bpmn_prefix || 'sequenceFlow';
  gc_bpmn_usertask                    constant flow_types_pkg.t_bpmn_id := gc_bpmn_prefix || 'userTask';

  -- APEX Extensions to BPMN
  -- userTask
  gc_apex_usertask_application        constant flow_types_pkg.t_bpmn_id := gc_apex_prefix || 'apex-application';
  gc_apex_usertask_page               constant flow_types_pkg.t_bpmn_id := gc_apex_prefix || 'apex-page';
  gc_apex_usertask_request            constant flow_types_pkg.t_bpmn_id := gc_apex_prefix || 'apex-request';
  gc_apex_usertask_cache              constant flow_types_pkg.t_bpmn_id := gc_apex_prefix || 'apex-cache';
  gc_apex_usertask_item               constant flow_types_pkg.t_bpmn_id := gc_apex_prefix || 'apex-item';
  gc_apex_usertask_value              constant flow_types_pkg.t_bpmn_id := gc_apex_prefix || 'apex-value';
  gc_apex_usertask_inserturl          constant flow_types_pkg.t_bpmn_id := gc_apex_prefix || 'apex-insertUrl';

  --serviceTask
  --gc_apex_servicetask_insertemail     constant flow_types_pkg.t_bpmn_id := gc_apex_prefix || 'insertEmail';

  --scriptTask
  gc_apex_scripttask_plsql_code       constant flow_types_pkg.t_bpmn_id := gc_apex_prefix || 'plsqlCode';
  gc_apex_scripttask_auto_binds       constant flow_types_pkg.t_bpmn_id := gc_apex_prefix || 'autoBinds';

  -- Special Keys from FLOW_OBJECT_ATTRIBUTES
  gc_timer_type_key                   constant flow_types_pkg.t_bpmn_id := 'timerType';
  gc_timer_def_key                    constant flow_types_pkg.t_bpmn_id := 'timerDefinition';

  -- Flows 4 APEX Substitution Strings
  gc_substitution_flow_identifier     constant varchar2(10 char)                    := 'F4A$';
  gc_substitution_prefix              constant flow_types_pkg.t_single_vc2          := '&';
  gc_substitution_postfix             constant flow_types_pkg.t_single_vc2          := '.';
  gc_substitution_process_id          constant flow_types_pkg.t_bpmn_attributes_key := 'PROCESS_ID';
  gc_substitution_subflow_id          constant flow_types_pkg.t_bpmn_attributes_key := 'SUBFLOW_ID';
  gc_substitution_pattern             constant flow_types_pkg.t_bpmn_attributes_key := gc_substitution_prefix || 'F4A\$(\w*)\.';

end flow_constants_pkg;

/
