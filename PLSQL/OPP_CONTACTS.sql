--------------------------------------------------------
--  DDL for Table OPP_CONTACTS
--------------------------------------------------------

  CREATE TABLE "PRJ"."OPP_CONTACTS" 
   (	"OCN_ID" NUMBER, 
	"OCN_NAME" VARCHAR2(2000 BYTE), 
	"OCN_POSITION" VARCHAR2(2000 BYTE), 
	"OCN_PHONE" VARCHAR2(20 BYTE), 
	"OCN_EMAIL" VARCHAR2(200 BYTE), 
	"OCN_MOB" VARCHAR2(20 BYTE), 
	"OCN_CLIENT_CODE" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;