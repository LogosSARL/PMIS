--------------------------------------------------------
--  Ref Constraints for Table PRJ_PIPELINE_MODULES
--------------------------------------------------------

  ALTER TABLE "PRJ"."PRJ_PIPELINE_MODULES" ADD CONSTRAINT "PRJ_PIPELINE_MODULES_FK1" FOREIGN KEY ("PPM_CNT_ID")
	  REFERENCES "PRJ"."LGS_CONTRACTS" ("ID") ENABLE;
