--------------------------------------------------------
--  Ref Constraints for Table DEMO_ORDERS
--------------------------------------------------------

  ALTER TABLE "PRJ"."DEMO_ORDERS" ADD CONSTRAINT "DEMO_ORDERS_CUSTOMER_ID_FK" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "PRJ"."DEMO_CUSTOMERS" ("CUSTOMER_ID") ENABLE;
  ALTER TABLE "PRJ"."DEMO_ORDERS" ADD CONSTRAINT "DEMO_ORDERS_USER_ID_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "PRJ"."DEMO_USERS" ("USER_ID") ENABLE;
