
  
    

  create  table "tenog"."public_DWH"."stats_messages__dbt_tmp"
  as (
    with stats_mess_impair as (
    SELECT count(1) as nb_mess_impair
    FROM "tenog"."public_ODS"."impair_messages"
), 

stats_mess_pair as (
    SELECT count(1) as nb_mess_pair
    FROM "tenog"."public_ODS"."pair_messages"
)

SELECT 'nb_mess_impair' as title, nb_mess_impair as nb_mess
FROM stats_mess_impair
UNION
SELECT 'nb_mess_pair' as title, nb_mess_pair as nb_mess
FROM stats_mess_pair
  );
  