# Write your MySQL query statement below
SELECT id, SUM(CASE WHEN month='Jan' THEN revenue ELSE NULL end) Jan_Revenue,
SUM(CASE WHEN month='Feb' THEN revenue ELSE NULL end) Feb_Revenue,
SUM(CASE WHEN month='Mar' THEN revenue ELSE NULL end) Mar_Revenue,
SUM(CASE WHEN month='Apr' THEN revenue ELSE NULL end) Apr_Revenue,
SUM(CASE WHEN month='May' THEN revenue ELSE NULL end) May_Revenue,
SUM(CASE WHEN month='Jun' THEN revenue ELSE NULL end) Jun_Revenue,
SUM(CASE WHEN month='Jul' THEN revenue ELSE NULL end) Jul_Revenue,
SUM(CASE WHEN month='Aug' THEN revenue ELSE NULL end) Aug_Revenue,
SUM(CASE WHEN month='Sep' THEN revenue ELSE NULL end) Sep_Revenue,
SUM(CASE WHEN month='Oct' THEN revenue ELSE NULL end) Oct_Revenue,
SUM(CASE WHEN month='Nov' THEN revenue ELSE NULL end) Nov_Revenue,
SUM(CASE WHEN month='Dec' THEN revenue ELSE NULL end) Dec_Revenue
FROM Department
GROUP BY id;
