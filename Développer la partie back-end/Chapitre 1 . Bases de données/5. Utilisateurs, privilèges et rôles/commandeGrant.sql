CREATE USER 'util1'@'localhost' IDENTIFIED BY 'util1';

CREATE USER 'util2'@'localhost' IDENTIFIED BY 'util2';

CREATE USER 'util3'@'localhost' IDENTIFIED BY 'util3';

GRANT ALL PRIVILEGES ON gescom_afpa.* TO 'util1'@'localhost';

GRANT SELECT ON gescom_afpa.* TO 'util2'@'localhost';

GRANT SELECT ON gescom_afpa.suppliers TO 'util3'@'localhost';