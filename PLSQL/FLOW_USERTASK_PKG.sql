--------------------------------------------------------
--  DDL for Package FLOW_USERTASK_PKG
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "PRJ"."FLOW_USERTASK_PKG" 
  authid definer
as

  function get_url
  (
    pi_prcs_id in flow_processes.prcs_id%type
  , pi_sbfl_id in flow_subflows.sbfl_id%type
  , pi_objt_id in flow_objects.objt_id%type
  ) return varchar2;

end flow_usertask_pkg;

/
