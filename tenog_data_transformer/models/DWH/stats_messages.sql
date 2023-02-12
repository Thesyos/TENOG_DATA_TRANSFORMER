with stats_mess_impair as (
    SELECT count(1) as nb_mess_impair
    FROM {{ ref('impair_messages') }}
), 

stats_mess_pair as (
    SELECT count(1) as nb_mess_pair
    FROM {{ ref('pair_messages') }}
)

SELECT nb_mess_impair 
FROM stats_mess_impair
UNION
SELECT nb_mess_pair 
FROM stats_mess_pair