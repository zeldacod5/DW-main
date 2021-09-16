-- Exercices sur les vues --

DROP VIEW IF EXISTS v_catalogue_des_produits

CREATE VIEW v_catalogue_des_produits
AS
SELECT cat_id, cat_name, pro_id, pro_cat_id, pro_ref
FROM gescom_afpa.categories JOIN products ON cat_id = pro_id



-- Exercices sur les procédures stockées --

USE gescom_afpa;

DROP PROCEDURE IF EXISTS facture;

DELIMITER |

CREATE PROCEDURE facture()


BEGIN
    SELECT * AS '' FROM gescom_afpa.
    WHERE EXISTS
    (
        SELECT ode_pro_id FROM gescom_afpa.orders_details
        JOIN gescom_afpa.products ON ode_pro_id = pro_id
        WHERE pro_sup_id = sup_id
    );
END |

-- Exercices sur les triggers --

USE gescom_afpa;

CREATE TABLE `commander_articles` (
    `codart` INT,
    `qte` INT NOT NULL,
    `date` DATE NOT NULL,
    PRIMARY KEY(`codart`)
);

DELIMITER |

CREATE TRIGGER after_products_update
AFTER UPDATE ON products
FOR EACH ROW
BEGIN
    DECLARE v_pro_id INT(10);
    DECLARE v_pro_stock INT(5);
    DECLARE v_pro_stock_alert INT(5);
    DECLARE v_codart INT(10);

    SET v_pro_id = NEW.pro_id;
    SET v_pro_stock = NEW.pro_stock;
    SET v_pro_stock_alert = NEW.pro_stock_alert;
    SET v_codart = (SELECT codart FROM commander_articles WHERE codart = v_pro_id);

    IF (v_pro_stock < v_pro_stock_alert)
    THEN
        IF ISNULL(v_codart)
        THEN
            INSERT INTO commander_articles 
            VALUES
            (v_pro_id, v_pro_stock_alert - v_pro_stock, now());
        ELSE
            UPDATE commander_articles
            SET
                qte = v_pro_stock_alert - v_pro_stock,
                date = now()
            WHERE codart = v_codart;
        END IF;
    END IF;
END |


-- Exercice sur les transactions --