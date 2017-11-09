#---------------------------------------------------------------------------------------------
#-------- 5. Найти клиента (customer), которая приносит меньше всего -------------------------
#-----------  прибыли компании (company) для каждой из компаний ------------------------------
#---------------------------------------------------------------------------------------------

SELECT
  name_company,
  name_cstmer,
  min(t1.sumCost) AS msc

FROM (
                                 SELECT mtm_id_company,
                                   name_company,
                                   name_cstmer,
                                   mtm_customer_id AS cstmr,
                                   sum(cost) as sumCost
                                 FROM  mtm_companies_projects
                                   JOIN mtm_customer_projects ON mtm_projects_id = mtm_id_projects
                                   JOIN projects ON projects.id = mtm_companies_projects.mtm_id_projects
                                   JOIN companies on companies.id = mtm_companies_projects.mtm_id_company
                                   JOIN customers on customers.id = mtm_customer_projects.mtm_customer_id
                                 GROUP BY mtm_customer_id, mtm_id_company, name_cstmer
                                 ORDER BY mtm_id_company
                               ) t1
GROUP BY name_company
