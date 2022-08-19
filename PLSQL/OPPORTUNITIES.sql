--------------------------------------------------------
--  DDL for Table OPPORTUNITIES
--------------------------------------------------------

  CREATE TABLE "PRJ"."OPPORTUNITIES" 
   (	"OPP_ID" NUMBER, 
	"OPP_INIT_DATE" DATE, 
	"OPP_DESC" VARCHAR2(2000 BYTE), 
	"OPP_HOW_HEARD_ABOUT" VARCHAR2(2000 BYTE), 
	"OPP_WHY_ITS_IMP_FOR_LOGOS" VARCHAR2(2000 BYTE), 
	"OPP_REMARKS" VARCHAR2(2000 BYTE), 
	"OPP_CONTRACT_TYPE" NUMBER, 
	"OPP_CUSTOMER" VARCHAR2(20 BYTE), 
	"OPP_ESTIMATED_TIME" VARCHAR2(20 BYTE), 
	"OPP_ESTIMATED_COST" NUMBER, 
	"OPP_PROJECT_NAME" VARCHAR2(2000 BYTE), 
	"OPP_CODE" VARCHAR2(200 BYTE), 
	"OPP_REFERENCE_TO_PIPELINE" NUMBER, 
	"OPP_STATUS" NUMBER, 
	"OPP_STAGE" NUMBER, 
	"OPP_STAGE_STATUS" NUMBER, 
	"OPP_CRY" NUMBER, 
	"OPP_BUDGET_AMOUNT" NUMBER, 
	"OPP_BUDGET_STATUS" VARCHAR2(200 BYTE), 
	"OPP_BUDGET_SOURCE" VARCHAR2(200 BYTE), 
	"OPP_BUYER_NAME" VARCHAR2(1000 BYTE), 
	"OPP_OWNER_NAME" VARCHAR2(1000 BYTE), 
	"OPP_IT_NAME" VARCHAR2(1000 BYTE), 
	"OPP_CHAMPION_NAME" VARCHAR2(1000 BYTE), 
	"OPP_CONSULTANT_NAME" VARCHAR2(1000 BYTE), 
	"OPP_FORECAST_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
