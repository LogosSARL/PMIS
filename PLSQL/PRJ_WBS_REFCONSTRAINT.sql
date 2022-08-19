--------------------------------------------------------
--  Ref Constraints for Table PRJ_WBS
--------------------------------------------------------

  ALTER TABLE "PRJ"."PRJ_WBS" ADD CONSTRAINT "PRJ_WBS_WBS_PRJ_ID_FK" FOREIGN KEY ("WBS_PRJ_ID")
	  REFERENCES "PRJ"."LGS_PROJECTS" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "PRJ"."PRJ_WBS" ADD CONSTRAINT "PRJ_WBS_WBS_STATUS_FK" FOREIGN KEY ("WBS_STATUS")
	  REFERENCES "PRJ"."PRJ_STATUS" ("PST_ID") ON DELETE CASCADE ENABLE;
