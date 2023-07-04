
      insert into "tenog"."public_ODS"."pair_messages" ("id", "sr_key", "label")
    (
        select "id", "sr_key", "label"
        from "pair_messages__dbt_tmp005530999328"
    )


  