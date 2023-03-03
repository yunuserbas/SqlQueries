

-- For this challenge you need to create a simple SELECT statement. Your task is to calculate the MIN, MEDIAN and MAX scores of the students from the results table.



SELECT MIN(score) AS min, PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY score) AS median, MAX(score) AS max
FROM result;


-- The PERCENTILE_CONT function calculates the median score in the score column. 
-- The 0.5 argument specifies that the median should be calculated (since the median is the 50th percentile).
-- The WITHIN GROUP (ORDER BY score) clause specifies that the scores should be sorted in ascending order before the median is calculated. The result is aliased as median.


