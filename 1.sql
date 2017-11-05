ALTER TABLE developers ADD COLUMN
  salary DECIMAL UNSIGNED NOT NULL;

UPDATE developers SET developers.salary = 1000;
UPDATE developers SET developers.salary = 1500 WHERE id = 2;
UPDATE developers SET developers.salary = 2000 WHERE id = 3;
UPDATE developers SET developers.salary = 1200 WHERE id = 4;
UPDATE developers SET developers.salary = 1000 WHERE id = 5;
