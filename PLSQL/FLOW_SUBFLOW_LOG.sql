--------------------------------------------------------
--  DDL for Table FLOW_SUBFLOW_LOG
--------------------------------------------------------

  CREATE TABLE "PRJ"."FLOW_SUBFLOW_LOG" 
   (	"SFLG_PRCS_ID" NUMBER, 
	"SFLG_OBJT_ID" VARCHAR2(50 BYTE), 
	"SFLG_SBFL_ID" NUMBER, 
	"SFLG_LAST_UPDATED" DATE, 
	"SFLG_NOTES" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
