CREATE TABLE mtm_project_developers(
  mtm_id_project INT NOT NULL,
  mtm_id_developer INT NOT NULL,

  FOREIGN KEY (mtm_id_developer) REFERENCES
  developers(id),

  FOREIGN KEY (mtm_id_project) REFERENCES
  projects(id)
)
