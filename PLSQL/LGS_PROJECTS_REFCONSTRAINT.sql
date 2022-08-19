--------------------------------------------------------
--  Ref Constraints for Table LGS_PROJECTS
--------------------------------------------------------

  ALTER TABLE "PRJ"."LGS_PROJECTS" ADD CONSTRAINT "LGS_PROJECTS_FK1" FOREIGN KEY ("STATUS")
	  REFERENCES "PRJ"."PRJ_STATUS" ("PST_ID") ENABLE;
  ALTER TABLE "PRJ"."LGS_PROJECTS" ADD CONSTRAINT "PROJ_CONT_FK" FOREIGN KEY ("CONTRACT_ID")
	  REFERENCES "PRJ"."LGS_CONTRACTS" ("ID") ENABLE;
