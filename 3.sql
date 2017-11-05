# ------------------------------------------------------
# 3. show the total salary of all developers
# ------------------------------------------------------

SELECT sum(developers.salary) FROM developers
WHERE skills = 'Java' OR  'java'

# ------------------------------------------------------