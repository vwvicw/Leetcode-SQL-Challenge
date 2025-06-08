select a.machine_id, ROUND(AVG(b.timestamp - a.timestamp),3) AS processing_time
FROM Activity a Join Activity b ON a.machine_id = b.machine_id AND a.process_id = b.process_id 
WHERE a.activity_type = 'start' AND b.activity_type = 'end'
GROUP BY a.machine_id

/* NOTE:
1. comparing values always think about self-join as the first possible solution.
2. AVG() + GROUP BY
3. Rounding decimals ROUND(numbers,decimal places)

BETTER SOLUTION:
SELECT 
  machine_id, 
  ROUND(AVG(processing_time), 3) AS processing_time
FROM (
  SELECT 
    machine_id, 
    process_id,
    MAX(CASE WHEN activity_type = 'end' THEN timestamp END) - 
    MIN(CASE WHEN activity_type = 'start' THEN timestamp END) AS processing_time
  FROM Activity
  GROUP BY machine_id, process_id
) AS test
GROUP BY machine_id;
*/
