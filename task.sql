SELECT a.dimension_1, map.correct_dimension_2, SUM(a.measure_1), SUM(b.measure_2)
FROM TABLE_A AS a
FULL OUTER JOIN TABLE_B as b
LEFT JOIN TABLE_MAP AS map on a.dimension_1 = map.dimension_1
GROUP BY 1, 2
