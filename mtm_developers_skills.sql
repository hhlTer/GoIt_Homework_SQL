CREATE TABLE mtm_developers_skills(
  mtm_id_developer INT NOT NULL,
  mtm_id_skill INT NOT NULL,

  FOREIGN KEY (mtm_id_developer) REFERENCES
    developers(id),

  FOREIGN KEY (mtm_id_skill) REFERENCES
    skills(id)


)