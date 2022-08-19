--------------------------------------------------------
--  DDL for Table PRJ_ENROLLED_DETS_BAK
--------------------------------------------------------

  CREATE TABLE "PRJ"."PRJ_ENROLLED_DETS_BAK" 
   (	"ID" NUMBER(8,0), 
	"PROJECT_WORKTYPE_ID" NUMBER, 
	"FROM_DATE" DATE, 
	"NO_OF_HOURS" NUMBER, 
	"EMPLOYEE" VARCHAR2(20 BYTE), 
	"CUSTOMER_CERTIFIED" VARCHAR2(1 BYTE), 
	"NOTES" VARCHAR2(2000 BYTE), 
	"ON_SITE_DAYS" NUMBER, 
	"MODULE" VARCHAR2(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
