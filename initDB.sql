#--------------------------------------------------------------
#------------------ create DEVELOPERS table -------------------
#--------------------------------------------------------------
CREATE DATABASE dvlop_3;
USE dvlop_3;
CREATE TABLE developers (
  id          SMALLINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  first_name  VARCHAR(50)       NOT NULL,
  second_name VARCHAR(50)       NOT NULL,
  skills      VARCHAR(255)      NOT NULL
);

#--------------------------------------------------------------
#------------------------ SKILLS ------------------------------
#--------------------------------------------------------------
CREATE TABLE skills (
  id    SMALLINT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  skill VARCHAR(50)                   NOT NULL
);

#--------------------------------------------------------------
#------------------------ PROJECTS ----------------------------
#--------------------------------------------------------------
CREATE TABLE projects (
  id           SMALLINT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name_project VARCHAR(50)                   NOT NULL,
  descryption  VARCHAR(255)
);

#--------------------------------------------------------------
#----------------------- COMPANIES ----------------------------
#--------------------------------------------------------------

CREATE TABLE companies (
  id             SMALLINT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name_company   VARCHAR(50)                   NOT NULL,
  addres_company VARCHAR(50)
);

#--------------------------------------------------------------
#----------------------- CUSTOMERS ----------------------------
#--------------------------------------------------------------

CREATE TABLE customers (
  id          SMALLINT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name_cstmer VARCHAR(50)                   NOT NULL
);

#--------------------------------------------------------------
#-------------------------- MTM -------------------------------
#--------------------------------------------------------------

#--------------------------------------------------------------
#------------------ DEVELOPER / SKILLS ------------------------
#--------------------------------------------------------------

CREATE TABLE mtm_developers_skills(
  mtm_id_developer SMALLINT UNSIGNED NOT NULL,
  mtm_id_skills    SMALLINT UNSIGNED NOT NULL,

  FOREIGN KEY (mtm_id_developer) REFERENCES developers(id),
  FOREIGN KEY (mtm_id_skills)    REFERENCES skills(id)
);

#--------------------------------------------------------------
#------------------ PROJECT / DEVELOPERS ----------------------
#--------------------------------------------------------------

CREATE TABLE mtm_project_developers (
  mtm_id_project   SMALLINT UNSIGNED NOT NULL,
  mtm_id_developer SMALLINT UNSIGNED NOT NULL,

  FOREIGN KEY (mtm_id_developer) REFERENCES developers (id),
  FOREIGN KEY (mtm_id_project)   REFERENCES projects (id)
);

#--------------------------------------------------------------
#----------------- COMPANIES / DEVELOPERS ---------------------
#--------------------------------------------------------------

CREATE TABLE mtm_companies_developers (
  mtm_id_company   SMALLINT UNSIGNED NOT NULL,
  mtm_id_developer SMALLINT UNSIGNED NOT NULL,

  FOREIGN KEY (mtm_id_company)   REFERENCES companies (id),
  FOREIGN KEY (mtm_id_developer) REFERENCES developers (id)
);

#--------------------------------------------------------------
#------------------ COMPANIES / PROJECTS ----------------------
#--------------------------------------------------------------

CREATE TABLE mtm_companies_projects (
  mtm_id_company  SMALLINT UNSIGNED NOT NULL,
  mtm_id_projects SMALLINT UNSIGNED NOT NULL,

  FOREIGN KEY (mtm_id_company)  REFERENCES companies (id),
  FOREIGN KEY (mtm_id_projects) REFERENCES projects (id)
);

#--------------------------------------------------------------
#------------------ CUSTOMERS / PROJECTS ----------------------
#--------------------------------------------------------------

CREATE TABLE mtm_customer_projects (
  mtm_customer_id SMALLINT UNSIGNED NOT NULL,
  mtm_projects_id  SMALLINT UNSIGNED NOT NULL,

  FOREIGN KEY (mtm_customer_id) REFERENCES customers(id),
  FOREIGN KEY (mtm_projects_id)  REFERENCES projects(id)

);






