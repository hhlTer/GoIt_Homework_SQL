# ------------------------------------------------------
# 2. show the name of project, with have biggest price
# ------------------------------------------------------

SELECT  mtm_project_developers.mtm_id_project AS id_project,
        projects.name_project AS costly_project,
        sum(developers.salary) AS biggest_price
FROM projects
LEFT JOIN mtm_project_developers ON
          projects.id = mtm_project_developers.mtm_id_project
LEFT JOIN developers ON
          mtm_project_developers.mtm_id_developer = developers.id
GROUP BY projects.name_project
ORDER BY biggest_price DESC LIMIT 1;
# ------------------------------------------------------
