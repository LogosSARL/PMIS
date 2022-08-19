--------------------------------------------------------
--  Ref Constraints for Table OPP_SCOPE
--------------------------------------------------------

  ALTER TABLE "PRJ"."OPP_SCOPE" ADD CONSTRAINT "OPP_SCOPE_FK1" FOREIGN KEY ("OPS_OPP_ID")
	  REFERENCES "PRJ"."OPPORTUNITIES" ("OPP_ID") ENABLE;
