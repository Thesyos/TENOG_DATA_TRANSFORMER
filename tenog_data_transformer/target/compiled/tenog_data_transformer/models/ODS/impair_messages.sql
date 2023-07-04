with source_data_impair as (
    SELECT id, label
    FROM public.random_stuff
    WHERE mod(id,2) = 1
)

SELECT * FROM source_data_impair as impair_mess