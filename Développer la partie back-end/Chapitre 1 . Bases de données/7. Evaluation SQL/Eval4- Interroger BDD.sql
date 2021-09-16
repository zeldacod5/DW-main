-- Evaluation faite sur Phpmyadmin --
-- Requête 1 --
SELECT CONCAT(emp_lastname,' ',emp_firstname) AS Employé, emp_children AS Nb_enfants
FROM employees
ORDER BY emp_children DESC, CONCAT(emp_lastname,' ',emp_firstname) ASC


-- Requête 2 --
SELECT cus_lastname AS Nom, cus_firstname AS Prénom, cus_countries_id AS Pays_de_résidence
FROM customers
WHERE cus_countries_id NOT LIKE 'FR'
ORDER BY cus_lastname


-- Requête 3 --
SELECT cus_city, cus_countries_id, cou_name FROM gescom_afpa.customers, gescom_afpa.countries 
WHERE cou_name = 'France' 
ORDER BY cus_city ASC;


SELECT cus_city AS Ville_du_client, cus_countries_id AS Pays_du_client, cou_name AS Nom_du_pays 
FROM customers JOIN countries 
ORDER BY cus_city


-- Requête 4 --
SELECT cus_lastname AS Nom_du_client, cus_update_date AS Jour_de_modif
FROM customers
WHERE cus_update_date IS NOT NULL


-- Requête 5 --
SELECT * FROM customers
WHERE cus_city LIKE '%divos%'


-- Requête 6 --
SELECT pro_id, pro_name, pro_price FROM gescom_afpa.products
ORDER BY pro_price ASC
LIMIT 1 ;


--logique mais ne marche pas--
SELECT pro_id AS ID, MIN(pro_price) AS Prix, pro_name AS Nom_du_produit
FROM products


-- Requête 7 --
SELECT pro_id, pro_ref, pro_name 
FROM gescom_afpa.products
WHERE NOT EXISTS (SELECT ode_pro_id FROM gescom_afpa.orders_details WHERE ode_pro_id = pro_id);


-- Requête 8 --
SELECT pro_id, pro_ref, pro_color, pro_name, cus_id, cus_lastname, ord_id, ode_id FROM gescom_afpa.orders_details
JOIN gescom_afpa.products ON pro_id = ode_pro_id
JOIN gescom_afpa.orders ON ord_id = ode_ord_id
JOIN gescom_afpa.customers ON cus_id = ord_cus_id
WHERE cus_lastname = "Pikatchien"


-- Requête 9 --
SELECT cat_id, cat_name, pro_name FROM gescom_afpa.categories, gescom_afpa.products
WHERE pro_cat_id = cat_id
ORDER BY cat_name ASC;


-- Requête 10 --
SELECT CONCAT(t1.emp_lastname,' ', t1.emp_firstname) AS Employé, CONCAT(t2.emp_lastname,' ', t2.emp_firstname) AS Supérieur_direct
FROM employees AS t1
JOIN employees AS t2 ON t1.emp_superior_id = t2.emp_id
ORDER BY CONCAT(t1.emp_lastname, ' ', t1.emp_firstname) ASC;


-- Requête 11 --
SELECT pro_id, pro_name, ((ode_unit_price/100)*ode_discount) AS remise, ode_ord_id AS commande, ode_id AS ligne_commande
FROM gescom_afpa.products JOIN gescom_afpa.orders_details ON ode_pro_id = pro_id
ORDER BY Remise DESC
LIMIT 1


-- Requête 12 --
SELECT COUNT(cus_countries_id) AS Nb_clients_Canada FROM gescom_afpa.customers
WHERE cus_countries_id LIKE 'CA';


-- Requête 13 --
SELECT ode_id, ode_unit_price, ode_quantity, ode_ord_id, ode_pro_id, ord_order_date FROM gescom_afpa.orders_details
JOIN gescom_afpa.orders ON orders_details.ode_ord_id = orders.ord_id
WHERE ord_order_date LIKE '2020-%-%';


-- Requête 14 --
SELECT * FROM gescom_afpa.suppliers
WHERE sup_name NOT LIKE 'FOURNIRIEN'


-- Requête 15 --
SELECT SUM((ode_unit_price * ode_quantity) * (1-(ode_discount/100))) FROM gescom_afpa.orders_details
JOIN gescom_afpa.orders ON ord_id = ode_ord_id
WHERE ord_order_date LIKE '2020-%-%'


-- Requête 16 -- 
SELECT ord_id, cus_lastname, ord_order_date, ode_quantity, (ode_unit_price * ode_quantity) AS 'Total' 
FROM gescom_afpa.orders_details
JOIN gescom_afpa.orders ON ode_ord_id = ord_id 
JOIN gescom_afpa.customers ON ord_cus_id = cus_id
ORDER BY (ode_unit_price * ode_quantity) DESC


-- Requête 17 --
SELECT AVG((ode_unit_price * ode_quantity) * (1 - (ode_discount/100))) 
FROM gescom_afpa.orders_details


-- Requête 18 -- 
UPDATE gescom_afpa.products
SET 
pro_price = 90.00,
pro_name = 'Camper'
WHERE pro_id = 12


-- Requête 19 --
UPDATE products
SET
pro_price = pro_price*(1+(1.1/100))
WHERE pro_cat_id = 25


-- Requête 20 --
DELETE gescom_afpa.products FROM gescom_afpa.products 
JOIN gescom_afpa.categories ON categories.cat_id = products.pro_cat_id
WHERE  pro_id  NOT IN
(SELECT ode_pro_id FROM orders_details)
AND cat_name ='Tondeuses électriques'