--------------------------------------------------------
--  Ref Constraints for Table PRJ_ENROLLED_DETS
--------------------------------------------------------

  ALTER TABLE "PRJ"."PRJ_ENROLLED_DETS" ADD CONSTRAINT "PRJ_ENROLLED_WORK_TYP_FK" FOREIGN KEY ("PROJECT_WORKTYPE_ID")
	  REFERENCES "PRJ"."PRJ_PROJECTWORK_TYPES" ("ID") ENABLE;
