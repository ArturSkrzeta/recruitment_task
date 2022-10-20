SELECT a.dimension_1, map.correct_dimension_2, SUM(a.measure_1), SUM(b.measure_2)
FROM TABLE_A AS a
FULL OUTER JOIN TABLE_B as b ON a.dimension_1 = b.dimension_1
LEFT JOIN TABLE_MAP AS map ON a.dimension_1 = map.dimension_1
GROUP BY 1, 2
