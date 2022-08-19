--------------------------------------------------------
--  Ref Constraints for Table LGS_CONTRACT_DOCS
--------------------------------------------------------

  ALTER TABLE "PRJ"."LGS_CONTRACT_DOCS" ADD CONSTRAINT "LGS_CONTRACT_DOCS_FK1" FOREIGN KEY ("LCD_CNT_ID")
	  REFERENCES "PRJ"."LGS_CONTRACTS" ("ID") ENABLE;
