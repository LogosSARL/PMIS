--------------------------------------------------------
--  DDL for Package FLOW_PLSQL_RUNNER_PKG
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "PRJ"."FLOW_PLSQL_RUNNER_PKG" 
  authid current_user
as

  e_plsql_call_failed exception;

  function get_current_prcs_id
    return flow_processes.prcs_id%type
  ;

  function get_current_sbfl_id
    return flow_subflows.sbfl_id%type
  ;

  procedure run_task_script
  (
    pi_prcs_id in flow_processes.prcs_id%type
  , pi_sbfl_id in flow_subflows.sbfl_id%type
  , pi_objt_id in flow_objects.objt_id%type
  );

end flow_plsql_runner_pkg;

/
