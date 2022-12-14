--------------------------------------------------------
--  DDL for Table OPP_ROLE
--------------------------------------------------------

  CREATE TABLE "PRJ"."OPP_ROLE" 
   (	"ORL_ID" NUMBER, 
	"ORL_EMPLOYEE" VARCHAR2(20 BYTE), 
	"ORL_ROL_ID" NUMBER, 
	"ORL_OPP_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
