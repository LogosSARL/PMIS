--------------------------------------------------------
--  Ref Constraints for Table PRJ_WBS_DOCS
--------------------------------------------------------

  ALTER TABLE "PRJ"."PRJ_WBS_DOCS" ADD CONSTRAINT "PRJ_WBS_DOCS_PRJ_WB_ID_FK" FOREIGN KEY ("PRJ_WB_ID")
	  REFERENCES "PRJ"."PRJ_WBS" ("WBS_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "PRJ"."PRJ_WBS_DOCS" ADD CONSTRAINT "PRJ_WBS_DOCS_WBC_WBS_ID_FK" FOREIGN KEY ("WBC_WBS_ID")
	  REFERENCES "PRJ"."PRJ_WBS" ("WBS_ID") ON DELETE CASCADE ENABLE;
