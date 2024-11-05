SELECT 
    hd.zip,
    hd.city,
    hd.county,
    hd.state,
    hd.metro,
    ROUND(((hd.rtv_9_24 - hd.rtv_10_23) / NULLIF(hd.rtv_10_23, 0)), 4) AS annual_change,
    hd.rtv_9_24 AS rtv_2024,
    hd.rtv_10_23 AS rtv_2023,
    hd.hr_9_24 AS rent_2024,
    hd.hr_10_23 AS rent_2023,
    hd.hv_9_24 AS value_2024,
    hd.hv_10_23 AS value_2023
FROM  {{ ref('values_and_rents_ttm') }} AS hd
WHERE ((hd.rtv_9_24 - hd.rtv_10_23) / NULLIF(hd.rtv_10_23, 0)) IS NOT NULL
ORDER BY annual_change DESC