--------------------------------------------------------
--  DDL for Table LGS_CONTRACTS
--------------------------------------------------------

  CREATE TABLE "PRJ"."LGS_CONTRACTS" 
   (	"ID" NUMBER(8,0), 
	"DSP_CODE" VARCHAR2(100 BYTE), 
	"COMPANY_CODE" VARCHAR2(5 BYTE), 
	"START_DATE" DATE, 
	"END_DATE" DATE, 
	"USD_VALUE" NUMBER, 
	"FINALIZED" VARCHAR2(1 BYTE), 
	"CONTRACT_TYPE_ID" NUMBER(*,0), 
	"CONTRACT_STAGE_ID" NUMBER(*,0), 
	"DISPLAY_IN_CONTRACTS" VARCHAR2(1 BYTE), 
	"PRICING_DATE" DATE, 
	"PERDIUM" NUMBER(*,3), 
	"DAYS_PER_TICKET" NUMBER, 
	"TICKET_VALUE" NUMBER(*,3), 
	"HOTEL_RATE" NUMBER(*,3), 
	"CAR_RENTAL_PER_DAY" NUMBER(*,3), 
	"INTERNATIONAL" VARCHAR2(1 CHAR), 
	"WHO_CREATED" VARCHAR2(75 BYTE), 
	"ACCOUNT_MANAGER" VARCHAR2(2000 BYTE), 
	"USAGE_TYPE" NUMBER, 
	"PARENT_CONTRACT" NUMBER, 
	"REF_TO_PIPELINE" NUMBER, 
	"REF_TO_CONTRACT" NUMBER, 
	"PROJECT_NAME" VARCHAR2(4000 BYTE), 
	"REF_PM" VARCHAR2(2000 BYTE), 
	"REF_INTERNAL" VARCHAR2(2000 BYTE), 
	"INHOUSE_RATE" NUMBER, 
	"ONSITE_RATE" NUMBER, 
	"IN_SCOPE" NUMBER, 
	"INVOICED_DAYS" NUMBER, 
	"INITIAL_AMOUNT" NUMBER, 
	"DISCOUNT_IN_DAYS" NUMBER, 
	"DISCOUNT_IN_AMOUNT" NUMBER, 
	"VAT_VALUE" NUMBER, 
	"FINAL_AMOUNT" NUMBER, 
	"EXPECTED_DELIVERY_DATE" DATE, 
	"WARRANTY_IN_MONTH" NUMBER, 
	"VALUE_IN_MAINTENANCE" NUMBER, 
	"SIGNATURE_DATE" DATE, 
	"SIGNED_BY" VARCHAR2(2000 BYTE), 
	"OFFER_STATUS" NUMBER, 
	"PAYMENT_TERM" VARCHAR2(2000 BYTE), 
	"REMARKS" VARCHAR2(4000 BYTE), 
	"OTHER_EXPENSES_ON_CLIENT" NUMBER, 
	"SETTLED" NUMBER, 
	"STATUS" NUMBER, 
	"IH_INVOICE_DAYS" NUMBER, 
	"AS_INVOICE_DAYS" NUMBER, 
	"IH_INITIAL_AMOUNT" NUMBER, 
	"AS_INITIAL_AMOUNT" NUMBER, 
	"INTERNAL_CLASSIFICATION" NUMBER, 
	"APPROVAL_DATE" DATE, 
	"BRANCH_ID" NUMBER, 
	"RFP_FILES" VARCHAR2(2000 BYTE), 
	"RESPONSE_TO_RFP_FILES" VARCHAR2(2000 BYTE), 
	"DESCRIPTION" VARCHAR2(2000 BYTE), 
	"REFERENCES" VARCHAR2(2000 BYTE), 
	"CLIENT_SIGNATURE_NAME" VARCHAR2(200 BYTE), 
	"CLIENT_SIGNATURE_DATE" DATE, 
	"EXPECTED_DELIVERY_NUM_OF_DAYS" NUMBER, 
	"CREATED_DATE" DATE DEFAULT SYSDATE, 
	"LL_VALUE" NUMBER, 
	"ACCEPTANCE_DATE" DATE, 
	"DELIVERY_DATE" DATE, 
	"ORACLE_LICENSE" NUMBER, 
	"APP_LICENSE" NUMBER, 
	"IS_INVOICED" VARCHAR2(1 BYTE), 
	"STEP" VARCHAR2(4000 BYTE), 
	"ACTIVITI_TASK_ID" NUMBER, 
	"INHOUSE_O_RATE" NUMBER, 
	"ONSITE_O_RATE" NUMBER, 
	"PAYMENT_METHOD" VARCHAR2(100 BYTE), 
	"WORK_TO_BE_CONDUCTED" VARCHAR2(100 BYTE), 
	"SURCHARGE_FLG" VARCHAR2(1 BYTE), 
	"COMMENTS" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "PRJ"."LGS_CONTRACTS"."USAGE_TYPE" IS 'PIPLINE/PROPOSAL
 OR CONTRACT';
   COMMENT ON COLUMN "PRJ"."LGS_CONTRACTS"."PARENT_CONTRACT" IS 'REFERENCE TO PARENT CONTRACT';
   COMMENT ON COLUMN "PRJ"."LGS_CONTRACTS"."REF_TO_PIPELINE" IS 'REFERENCE TO UTILIZED PIPELINE';
   COMMENT ON COLUMN "PRJ"."LGS_CONTRACTS"."REF_TO_CONTRACT" IS 'WHEN THE CONTRACT IS CREATED FROM PIPELINE, WE NEED TO FILL THIS COLUMN FOR PIPELINE RECORD';
   COMMENT ON COLUMN "PRJ"."LGS_CONTRACTS"."INHOUSE_RATE" IS 'MAN DAY RATE';
   COMMENT ON COLUMN "PRJ"."LGS_CONTRACTS"."ONSITE_RATE" IS 'MAN DAY RATE';
   COMMENT ON COLUMN "PRJ"."LGS_CONTRACTS"."IN_SCOPE" IS 'IN_SCOPE = 1; OUT OF SCOPE = 0';
   COMMENT ON COLUMN "PRJ"."LGS_CONTRACTS"."OFFER_STATUS" IS 'REFERENCE TO OFFER STATUS TABLE';
   COMMENT ON COLUMN "PRJ"."LGS_CONTRACTS"."PAYMENT_TERM" IS 'REFERENCE TO PAYMENT TERMS TABLE';
   COMMENT ON COLUMN "PRJ"."LGS_CONTRACTS"."OTHER_EXPENSES_ON_CLIENT" IS '1 ON CLIENT, 0 ON LOGOS';
   COMMENT ON COLUMN "PRJ"."LGS_CONTRACTS"."SETTLED" IS '1 YES, 0 NO';
