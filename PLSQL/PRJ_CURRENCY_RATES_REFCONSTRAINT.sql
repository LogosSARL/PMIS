--------------------------------------------------------
--  Ref Constraints for Table PRJ_CURRENCY_RATES
--------------------------------------------------------

  ALTER TABLE "PRJ"."PRJ_CURRENCY_RATES" ADD CONSTRAINT "PRJ_CURRENCY_RATES_FK" FOREIGN KEY ("CURRENCY_ID")
	  REFERENCES "PRJ"."PRJ_CURRENCIES" ("ID") ENABLE;
