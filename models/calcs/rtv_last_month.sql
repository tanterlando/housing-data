SELECT 
    hd.zip,
    hd.city,
    hd.county,
    hd.state,
    hd.metro,
    hd.rtv_9_24 AS rtv,
    hd.hr_9_24 AS rent,
    hd.hv_9_24 AS value
FROM  {{ ref('values_and_rents_ttm') }} AS hd
WHERE hd.rtv_9_24 IS NOT NULL
ORDER BY rtv DESC