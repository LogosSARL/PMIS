--------------------------------------------------------
--  Constraints for Table FLOW_OBJECT_ATTRIBUTES
--------------------------------------------------------

  ALTER TABLE "PRJ"."FLOW_OBJECT_ATTRIBUTES" ADD CONSTRAINT "OBAT_CK" CHECK ( ( obat_num_value IS NOT NULL
                                     AND obat_date_value IS NULL
                                     AND obat_vc_value IS NULL
                                     AND obat_clob_value IS NULL )
                                   OR ( obat_num_value IS NULL
                                        AND obat_date_value IS NOT NULL
                                        AND obat_vc_value IS NULL
                                        AND obat_clob_value IS NULL )
                                   OR ( obat_num_value IS NULL
                                        AND obat_date_value IS NULL
                                        AND obat_vc_value IS NOT NULL
                                        AND obat_clob_value IS NULL )
                                   OR ( obat_num_value IS NULL
                                        AND obat_date_value IS NULL
                                        AND obat_vc_value IS NULL
                                        AND obat_clob_value IS NOT NULL ) ) ENABLE;
  ALTER TABLE "PRJ"."FLOW_OBJECT_ATTRIBUTES" ADD CONSTRAINT "OBAT_PK" PRIMARY KEY ("OBAT_OBJT_ID", "OBAT_KEY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PRJ"."FLOW_OBJECT_ATTRIBUTES" MODIFY ("OBAT_OBJT_ID" NOT NULL ENABLE);
  ALTER TABLE "PRJ"."FLOW_OBJECT_ATTRIBUTES" MODIFY ("OBAT_KEY" NOT NULL ENABLE);
