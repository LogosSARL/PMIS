--------------------------------------------------------
--  Ref Constraints for Table PRJ_ESTIMATED_DETS
--------------------------------------------------------

  ALTER TABLE "PRJ"."PRJ_ESTIMATED_DETS" ADD CONSTRAINT "PRJ_ESTIMATED_WORK_TYP_FK" FOREIGN KEY ("PROJECT_WORKTYPE_ID")
	  REFERENCES "PRJ"."PRJ_PROJECTWORK_TYPES" ("ID") ENABLE;
