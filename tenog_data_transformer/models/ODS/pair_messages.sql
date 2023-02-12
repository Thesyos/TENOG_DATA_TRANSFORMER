with source_data_pair as (
    SELECT id, label,{{ dbt_utils.generate_surrogate_key(['id', 'label']) }} as sr_key
    FROM public.random_stuff
    WHERE mod(id,2) = 0
)

SELECT * FROM source_data_pair as pair_mess