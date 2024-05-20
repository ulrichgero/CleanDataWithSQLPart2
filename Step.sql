-- Duplicate Table

CREATE TABLE data_2022
LIKE FAOSTAT_DATA_2022

-- check if every columns has been duplicated correctly
SELECT * 
FROM data_2022 

-- Now let copy everything from orginal table to the copy

INSERT data_2022 
SELECT *
FROM FAOSTAT_DATA_2022 

-- Let do the same with data from 2020

