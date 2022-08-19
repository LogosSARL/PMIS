--------------------------------------------------------
--  DDL for Package FLOW_TYPES_PKG
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "PRJ"."FLOW_TYPES_PKG" 
  authid definer
as

  subtype t_bpmn_id             is varchar2(50 char);
  subtype t_bpmn_attributes_key is varchar2(50 char);
  subtype t_bpmn_attribute_vc2  is varchar2(4000 char);

  subtype t_single_vc2         is varchar2(1 char);

end flow_types_pkg;

/
