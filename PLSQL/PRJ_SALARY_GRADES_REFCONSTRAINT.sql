--------------------------------------------------------
--  Ref Constraints for Table PRJ_SALARY_GRADES
--------------------------------------------------------

  ALTER TABLE "PRJ"."PRJ_SALARY_GRADES" ADD CONSTRAINT "SALGRD_GRDPR_FK" FOREIGN KEY ("GRADE_PRICE_ID")
	  REFERENCES "PRJ"."PRJ_GRADE_PRICES" ("ID") ENABLE;
