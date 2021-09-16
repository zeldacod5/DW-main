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