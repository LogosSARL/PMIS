--------------------------------------------------------
--  DDL for Table PRJ_INVOICES
--------------------------------------------------------

  CREATE TABLE "PRJ"."PRJ_INVOICES" 
   (	"INV_ID" NUMBER, 
	"INV_PROJECT_ID" NUMBER, 
	"INV_PERCENTAGE" NUMBER, 
	"INV_DATE" DATE, 
	"INV_INVOICE_NUMBER" VARCHAR2(200 BYTE), 
	"INV_REMAINING_AMOUNT" NUMBER(2,0), 
	"INV_NOTE" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;