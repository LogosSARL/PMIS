--------------------------------------------------------
--  DDL for Table CSS
--------------------------------------------------------

  CREATE TABLE "PRJ"."CSS" 
   (	"ID" NUMBER, 
	"EMP" VARCHAR2(20 BYTE), 
	"DAY" VARCHAR2(20 BYTE), 
	"COMP" VARCHAR2(20 BYTE), 
	"MOD" VARCHAR2(20 BYTE), 
	"TASK" VARCHAR2(20 BYTE), 
	"HRS" VARCHAR2(20 BYTE), 
	"DESCR" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 851968 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
