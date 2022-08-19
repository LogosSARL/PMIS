--------------------------------------------------------
--  DDL for Table EMPLOYEE_IMAGE_JAWAD
--------------------------------------------------------

  CREATE TABLE "PRJ"."EMPLOYEE_IMAGE_JAWAD" 
   (	"ID" NUMBER(10,0), 
	"EMPLOYEE_ID" NUMBER(6,0), 
	"MIMETYPE" VARCHAR2(50 BYTE), 
	"FILENAME" VARCHAR2(50 BYTE), 
	"IMAGE_LAST_UPDATE_DATE" DATE, 
	"IMAGE" BLOB
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("IMAGE") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING ) ;