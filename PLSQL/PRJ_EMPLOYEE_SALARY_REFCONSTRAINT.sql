--------------------------------------------------------
--  Ref Constraints for Table PRJ_EMPLOYEE_SALARY
--------------------------------------------------------

  ALTER TABLE "PRJ"."PRJ_EMPLOYEE_SALARY" ADD CONSTRAINT "EMPSAL_SALGRD_FK" FOREIGN KEY ("SALARY_GRADE_ID")
	  REFERENCES "PRJ"."PRJ_SALARY_GRADES" ("ID") ENABLE;
