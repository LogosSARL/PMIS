--------------------------------------------------------
--  Ref Constraints for Table EMP
--------------------------------------------------------

  ALTER TABLE "PRJ"."EMP" ADD FOREIGN KEY ("DEPTNO")
	  REFERENCES "PRJ"."DEPT" ("DEPTNO") ENABLE;
  ALTER TABLE "PRJ"."EMP" ADD FOREIGN KEY ("MGR")
	  REFERENCES "PRJ"."EMP" ("EMPNO") ENABLE;
