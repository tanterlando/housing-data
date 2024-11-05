select
    hd.zip,
    hd.city,
    hd.county,
    hd.state,
    hd.metro,
    hd.hv_9_24,
    hd.hr_9_24,
    round(hd.hr_9_24 / hd.hv_9_24, 4) * 100 as rtv_9_24,
    hd.hv_8_24,
    hd.hr_8_24,
    round(hd.hr_8_24 / hd.hv_8_24, 4) * 100 as rtv_8_24,
    hd.hv_7_24,
    hd.hr_7_24,
    round(hd.hr_7_24 / hd.hv_7_24, 4) * 100 as rtv_7_24,
    hd.hv_6_24,
    hd.hr_6_24,
    round(hd.hr_6_24 / hd.hv_6_24, 4) * 100 as rtv_6_24,
    hd.hv_5_24,
    hd.hr_5_24,
    round(hd.hr_5_24 / hd.hv_5_24, 4) * 100 as rtv_5_24,
    hd.hv_4_24,
    hd.hr_4_24,
    round(hd.hr_4_24 / hd.hv_4_24, 4) * 100 as rtv_4_24,
    hd.hv_3_24,
    hd.hr_3_24,
    round(hd.hr_3_24 / hd.hv_3_24, 4) * 100 as rtv_3_24,
    hd.hv_2_24,
    hd.hr_2_24,
    round(hd.hr_2_24 / hd.hv_2_24, 4) * 100 as rtv_2_24,
    hd.hv_1_24,
    hd.hr_1_24,
    round(hd.hr_1_24 / hd.hv_1_24, 4) * 100 as rtv_1_24,
    hd.hv_12_23,
    hd.hr_12_23,
    round(hd.hr_12_23 / hd.hv_12_23, 4) * 100 as rtv_9_23,
    hd.hv_11_23,
    hd.hr_11_23,
    round(hd.hr_11_23 / hd.hv_11_23, 4) * 100 as rtv_11_23,
    hd.hv_10_23,
    hd.hr_10_23,
    round(hd.hr_10_23 / hd.hv_10_23, 4) * 100 as rtv_10_23
from {{ ref("values_and_rents_by_zip") }} as hd
