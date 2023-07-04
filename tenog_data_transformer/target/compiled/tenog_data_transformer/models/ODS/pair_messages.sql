with source_data_pair as (
    SELECT id, label,md5(cast(coalesce(cast(id as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(label as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT)) as sr_key
    FROM public.random_stuff
    WHERE mod(id,2) = 0
)

SELECT * FROM source_data_pair as pair_mess