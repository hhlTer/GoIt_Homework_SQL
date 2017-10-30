CREATE TABLE mtm_companies_projects(
  mtm_id_company INT NOT NULL,
  mtm_id_projects INT NOT NULL,

  FOREIGN KEY (mtm_id_company) REFERENCES
     companies(id),

  FOREIGN KEY (mtm_id_projects) REFERENCES
      projects(id)

)