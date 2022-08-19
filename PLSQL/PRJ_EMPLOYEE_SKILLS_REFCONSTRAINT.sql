--------------------------------------------------------
--  Ref Constraints for Table PRJ_EMPLOYEE_SKILLS
--------------------------------------------------------

  ALTER TABLE "PRJ"."PRJ_EMPLOYEE_SKILLS" ADD CONSTRAINT "PRJ_EMPSKILLSSALARY_GRADES_FK" FOREIGN KEY ("SALARY_SCALE")
	  REFERENCES "PRJ"."PRJ_SALARY_GRADES" ("ID") ENABLE;
