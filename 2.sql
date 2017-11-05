# ------------------------------------------------------
# 2. show the name of project, with have biggest price
# ------------------------------------------------------

SELECT projects.name_project, mtm_project_developers.mtm_id_project AS id_project,
       sum(developers.salary) AS biggest_price
FROM projects
LEFT JOIN mtm_project_developers ON
          projects.id = mtm_project_developers.mtm_id_project
LEFT JOIN developers ON
          mtm_project_developers.mtm_id_developer = developers.id
GROUP BY mtm_id_project
ORDER BY sum_salary DESC LIMIT 1;
# ------------------------------------------------------