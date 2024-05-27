-- checking all columns from 2020 data
SELECT * from data_2020;
-- from the result, we've 15 columns 
-- now let do the same with 2022 data

SELECT * from data_2022; 
-- The result give me the same numbers of columns as 2020 data. 

-- since our data contains many columns, I'm going to use the most important to my cleaning

SELECT Item_2022, Value_2022, Unit_2022 
FROM simpleDB.data_2022
WHERE Area_2022 = 'Benin';

-- let use union to unite data from 2020 and 2022

SELECT Item_2022, Value_2022, Unit_2022 
FROM simpleDB.data_2022
WHERE Area_2022 = 'Benin'
UNION
SELECT Item, Value, Unit
FROM simpleDB.data_2020
WHERE Area = 'Benin';

-- joining two tables to perform analysis.
SELECT *
from simpleDB.data_2020
LEFT Join data_2022
on data_2020.Value = data_2022.Value_2022
Where Area = 'Benin';

-- Joining data from 2020 and 2022, especially from the Value from each year to see the different

SELECT Item, Value_2022, Value AS Value_2020
FROM data_2020
LEFT JOIN data_2022
ON data_2020.Item = data_2022.Item_2022
WHERE Area_2022 = 'Benin'
ORDER BY Value DESC; 

-- Union of two table from two different year
 
SELECT Item, Unit, Value 
from simpleDB.data_2020
union ALL
SELECT Item_2022, Unit_2022, Value_2022 
from simpleDB.data_2022;

-- Case statement to check which Item has perform better in year 2020

SELECT Item, Unit, Value, 
CASE
	 WHEN Value > 30000 THEN 'Well Done'
     WHEN Value > 14000 THEN 'Improve It'
     WHEN Value < 1000 THEN 'Low'
     ELSE 'Poor'
END AS Observations
FROM simpleDB.data_2020
WHERE Area = 'Benin';

-- Subqueries
