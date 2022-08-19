--------------------------------------------------------
--  Ref Constraints for Table PRJ_WBS_DEPENDENCIES
--------------------------------------------------------

  ALTER TABLE "PRJ"."PRJ_WBS_DEPENDENCIES" ADD CONSTRAINT "PRJ_WBS_DEPENDE_WBD_WBS_ID_FK" FOREIGN KEY ("WBD_WBS_ID")
	  REFERENCES "PRJ"."PRJ_WBS" ("WBS_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "PRJ"."PRJ_WBS_DEPENDENCIES" ADD CONSTRAINT "PRJ_WBS_DEPEN_PRJ_WBS_DOC_I_FK" FOREIGN KEY ("PRJ_WBS_DOC_ID")
	  REFERENCES "PRJ"."PRJ_WBS_DOCS" ("WBC_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "PRJ"."PRJ_WBS_DEPENDENCIES" ADD CONSTRAINT "PRJ_WBS_DEPEN_WBD_DEP_TASK_FK" FOREIGN KEY ("WBD_DEP_TASK_ID")
	  REFERENCES "PRJ"."PRJ_WBS" ("WBS_ID") ON DELETE CASCADE ENABLE;
