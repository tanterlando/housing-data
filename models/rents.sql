SELECT *
FROM {{ source('gsheets_home_values_and_rents', 'home_rents') }}