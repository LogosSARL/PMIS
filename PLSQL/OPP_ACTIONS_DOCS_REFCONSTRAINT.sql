--------------------------------------------------------
--  Ref Constraints for Table OPP_ACTIONS_DOCS
--------------------------------------------------------

  ALTER TABLE "PRJ"."OPP_ACTIONS_DOCS" ADD CONSTRAINT "OPP_ACTIONS_DOCS_FK1" FOREIGN KEY ("OAD_OAC_ID")
	  REFERENCES "PRJ"."OPP_ACTIONS" ("OAC_ID") ENABLE;
