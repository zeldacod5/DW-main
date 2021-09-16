-- Exo 1 -- 

DELIMITER |

CREATE TRIGGER ins_maj_total 
AFTER INSERT ON lignedecommande
FOR EACH ROW
BEGIN
    DECLARE id_c INT;
    DECLARE tot DOUBLE;
    SET id_c = NEW.id_commande;
    SET tot = (SELECT SUM(prix * quantite) FROM lignedecommande WHERE id_commande = id_c);
    UPDATE commande SET total = tot WHERE id = id_c;
END |

DELIMITER ;

-- Exo 2 --

DELIMITER |

CREATE TRIGGER up_maj_total 
AFTER UPDATE ON lignedecommande
FOR EACH ROW
BEGIN
    DECLARE id_c INT;
    DECLARE tot DOUBLE;
    SET id_c = NEW.id_commande;
    SET tot = (SELECT SUM(prix * quantite) FROM lignedecommande WHERE id_commande = id_c);
    UPDATE commande SET total = tot WHERE id = id_c;
END |

DELIMITER ;


-- Exo 3 --

DELIMITER |

CREATE TRIGGER del_maj_total
AFTER DELETE ON lignedecommande
FOR EACH ROW
BEGIN
    DECLARE id_c INT;
    DECLARE tot DOUBLE;
    SET id_c = OLD.id_commande; -- NEW remplacé par OLD puisqu'après la suppression il n'existe pas de nouvelle ligne, il faut donc modifier l'ancienne. --
    SET tot = (SELECT SUM(prix * quantite) FROM lignedecommande WHERE id_commande = id_c);
    UPDATE commande SET total = tot WHERE id = id_c;
END |

DELIMITER ;

-- Exo 4 --

DELIMITER |

CREATE TRIGGER maj_total_remise
AFTER INSERT ON lignedecommande
FOR EACH ROW
BEGIN
    DECLARE id_c INT;
    DECLARE tot DOUBLE;
    SET id_c = NEW.id_commande;
    SET tot = (SUM((prix * quantite) * (1 - (remise/100))) FROM lignedecommande, commande WHERE id_commande = id_c);
    UPDATE commande SET total = tot WHERE id = id_c;
END |

DELIMITER ;