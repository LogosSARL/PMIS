--------------------------------------------------------
--  Ref Constraints for Table PRJ_GROUP_EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "PRJ"."PRJ_GROUP_EMPLOYEES" ADD CONSTRAINT "PRJ_GROUP_EMPLOYEES_FK1" FOREIGN KEY ("PGE_EMPLOYEE")
	  REFERENCES "PRJ"."PRJ_EMPLOYEE_SALARY" ("EMP_CODE") ENABLE;
