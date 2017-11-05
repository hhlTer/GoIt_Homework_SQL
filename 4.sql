
# ------------------------------------------------------
# 4. Добавить поле (cost - стоимость) в таблицу Projects .
# **** Так-же добавил стоимость каждого проекта ****
# ********* исходя из ЗП разработчиков **************
# ------------------------------------------------------

ALTER TABLE projects
    ADD cost DECIMAL UNSIGNED,
    ADD developers_salary_cost DECIMAL UNSIGNED;

UPDATE projects SET projects.developers_salary_cost = (
    SELECT sum(developers.salary)
    FROM mtm_project_developers LEFT JOIN developers
    ON mtm_project_developers.mtm_id_developer = developers.id
      WHERE projects.id = mtm_project_developers.mtm_id_project
    GROUP BY mtm_id_project
);

UPDATE projects SET projects.cost = 2000;
UPDATE projects SET projects.cost = 1000 WHERE id = 2;
UPDATE projects SET projects.cost = 1600 WHERE id = 3;
UPDATE projects SET projects.cost = 3300 WHERE id = 4;
UPDATE projects SET projects.cost = 2500 WHERE id = 5;
# # ------------------------------------------------------

