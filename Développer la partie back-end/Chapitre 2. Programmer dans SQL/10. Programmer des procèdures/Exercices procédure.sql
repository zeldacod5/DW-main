-- Exo 1 --

USE gescom_afpa;

DROP PROCEDURE IF EXISTS Lst_Suppliers;

DELIMITER |

CREATE PROCEDURE Lst_Suppliers()

BEGIN
    SELECT sup_name AS 'Nom_du_fournisseur' FROM gescom_afpa.suppliers
    WHERE EXISTS
    (
        SELECT ode_pro_id FROM gescom_afpa.orders_details
        JOIN gescom_afpa.products ON ode_pro_id = pro_id
        WHERE pro_sup_id = sup_id
    );
END |

DELIMITER ;

CALL Lst_Suppliers;


-- Exo 2 --

USE gescom_afpa;

DROP PROCEDURE IF EXISTS Lst_Rush_Orders;

DELIMITER |

CREATE PROCEDURE Lst_Rush_Orders(IN p_ord_status VARCHAR(25))

BEGIN
    SELECT * FROM gescom_afpa.orders
    WHERE ord_status = p_ord_status;
END |

DELIMITER ;

CALL Lst_Rush_Orders('Commande urgente');


-- Exo 3 --

DELIMITER |

DROP PROCEDURE IF EXISTS CA_Supplier |

CREATE PROCEDURE CA_Supplier(

    p_sup_id VARCHAR(50),
    p_ord_order_date CHAR(4)
)

BEGIN

SELECT ROUND(SUM((ode_unit_price * ode_quantity) - ((ode_unit_price * ode_quantity) * (ode_discount/100))),2)  AS 'CA' FROM orders_details

JOIN products ON pro_id = ode_pro_id

JOIN suppliers ON sup_id = pro_sup_id

JOIN orders ON ord_id = ode_ord_id

WHERE sup_id = p_sup_id AND YEAR(ord_order_date) = p_ord_order_date;

END |

DELIMITER ;


-- Commande Call : CALL CA_Supplier(1, 2020); --


-- https://jcrozier.developpez.com/tutoriels/web/php/utilisation-avancee-procedures-stockees-mysql/
-- https://www.youtube.com/watch?v=V9HNXsEpNWY
-- https://ncode.amorce.org/parcours/120/6110