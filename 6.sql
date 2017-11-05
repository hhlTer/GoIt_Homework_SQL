# ------------------------------------------------------------------------------------------
# - 6. Вычислить, среднюю ЗП программистов в проекте, который приносит наименьшую прибыль. -
# ------------------------------------------------------------------------------------------


SELECT
  projects.name_project,
  cost AS Cost,
  COUNT(mtm_id_developer) AS Count_developers,
  AVG(developers.salary) AS Average_salary
FROM mtm_project_developers
  LEFT JOIN developers ON mtm_project_developers.mtm_id_developer = developers.id
  LEFT JOIN projects   ON mtm_project_developers.mtm_id_project = projects.id
GROUP BY mtm_id_project
ORDER BY Cost ASC
LIMIT 1;


