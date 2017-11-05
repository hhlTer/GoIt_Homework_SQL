#---------------------------------------------------------------------------------------------
#-------- 5. Найти клиента (customer), которая приносит меньше всего -------------------------
#-----------  прибыли компании (company) для каждой из компаний ------------------------------
#--- Смог вывести только таблицу, которая показывает по каждой компании всех -----------------
# -- клиентов и их прибыль.
#---------------------------------------------------------------------------------------------


SELECT
  companies.id,
  companies.name_company,
  customers.id,
  customers.name_cstmer,
  projects.name_project,
  sum(projects.cost) AS sumpc
FROM mtm_customer_projects

  LEFT JOIN customers ON customers.id = mtm_customer_projects.mtm_customer_id
  LEFT JOIN projects ON mtm_customer_projects.mtm_projects_id = projects.id
  LEFT JOIN mtm_companies_projects ON mtm_companies_projects.mtm_id_projects = projects.id
  LEFT JOIN companies ON mtm_companies_projects.mtm_id_company = companies.id

GROUP BY name_cstmer, name_company
ORDER BY name_company, name_cstmer