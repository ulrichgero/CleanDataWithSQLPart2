** Duplicate Table**
``` CREATE TALBE layoffs_copy
    LIKE layoffs```

-- check if every columns has been duplicated correctly
``` SELECT * FROM layoffs_copy```
-- Now let copy everything from orginal table to the copy

```  INSERT layoffs_copy
    SELECT *
    FROM layoffs ```
