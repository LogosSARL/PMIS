--------------------------------------------------------
--  DDL for Package CSS_PCK
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "PRJ"."CSS_PCK" as
procedure refresh_data(Cust_Code_P varchar2 default null);
procedure insert_tasks;
procedure insert_employee;
procedure insert_modules;
 procedure insert_projectwork_types (p_project_id in number, p_wrktyp_id in number);
end css_pck;

/
