--------------------------------------------------------
--  Constraints for Table LGS_CONTRACT_DOCS
--------------------------------------------------------

  ALTER TABLE "PRJ"."LGS_CONTRACT_DOCS" ADD CONSTRAINT "LGS_CONTRACT_DOCS_PK" PRIMARY KEY ("LCD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PRJ"."LGS_CONTRACT_DOCS" MODIFY ("LCD_ID" NOT NULL ENABLE);
