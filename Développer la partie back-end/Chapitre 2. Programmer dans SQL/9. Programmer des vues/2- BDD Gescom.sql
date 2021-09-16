-- Exo 1 --
DROP VIEW IF EXISTS v_details;

CREATE VIEW v_details
AS
SELECT ode_id, SUM(ode_quantity) AS QteTot, 
FROM gescom_afpa.orders_details


-- Exo 2 --
DROP VIEW IF EXISTS v_ventes_zoom;

CREATE VIEW v_ventes_zoom
AS
SELECT * FROM gescom_afpa.orders_details
JOIN gescom_afpa.products ON ode_pro_id = pro_id
WHERE pro_ref = 'ZOOM'