--------------------------------------------------------
--  DDL for Table FLOW_OBJECT_ATTRIBUTES
--------------------------------------------------------

  CREATE TABLE "PRJ"."FLOW_OBJECT_ATTRIBUTES" 
   (	"OBAT_OBJT_ID" NUMBER, 
	"OBAT_KEY" VARCHAR2(50 CHAR), 
	"OBAT_NUM_VALUE" NUMBER, 
	"OBAT_DATE_VALUE" DATE, 
	"OBAT_VC_VALUE" VARCHAR2(4000 CHAR), 
	"OBAT_CLOB_VALUE" CLOB, 
	 CONSTRAINT "OBAT_PK" PRIMARY KEY ("OBAT_OBJT_ID", "OBAT_KEY") ENABLE
   ) ORGANIZATION INDEX NOCOMPRESS PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 PCTTHRESHOLD 50 OVERFLOW
 PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("OBAT_CLOB_VALUE") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
