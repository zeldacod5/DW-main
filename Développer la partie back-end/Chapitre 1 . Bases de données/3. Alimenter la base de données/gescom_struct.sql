INSERT INTO gescom_struct.posts
VALUES
(1, 'PDG'),
(2, 'Manager'),
(3, 'Employee');
-- Script d'alimentation de la table posts --

INSERT INTO gescom_struct.employees
VALUES
(1, NULL, 1, 'Messi', 'Lionel', '30 Rue de Poulainville', '80000', 'Amiens', 'lionel.messi@afpa.fr', '0123456789', NULL, '2021-05-10', 'M', 0),
(2, 1, 2, 'Verratti', 'Marco', '30 Rue de Poulainville', '80000', 'Amiens', 'marco.verratti@afpa.fr', '0123456789', NULL, '2021-05-10', 'M', 0),
(3, 1, 3, 'Di Maria', 'Angel', '30 Rue de Poulainville', '80000', 'Amiens', 'angel.dimaria@afpa.fr', '0123456789', NULL, '2021-05-10', 'M', 0),
(4, 1, 3, 'Mbappé', 'Killian', '30 Rue de Poulainville', '80000', 'Amiens', 'killian.mbappe@afpa.fr', '0123456789', NULL, '2021-05-10', 'M', 0);
-- Script d'alimentation de la table employees --


INSERT INTO gescom_struct.suppliers
VALUES
(1, 'Fournisseur 1', 'Amiens', 'FR', '31 Rue de Poulainville', '80000', 'Monsieur X', '0123456789', 'fournisseur1@afpa.fr'),
(2, 'Fournisseur 2', 'Amiens', 'FR', '32 Rue de Poulainville', '80000', 'Monsieur Y', '0123456789', 'fournisseur2@afpa.fr'),
(3, 'Fournisseur 3', 'Amiens', 'FR', '33 Rue de Poulainville', '80000', 'Monsieur Z', '0123456789', 'fournisseur3@afpa.fr');
-- Script d'alimentation de la table suppliers --

INSERT INTO gescom_struct.categories
VALUES
(1, 'Catégorie 1', NULL),
(2, 'Sous-Catégorie 1', 1),
(3, 'Catégorie 2', NULL),
(4, 'Sous-Catégorie 2', 3);
-- Script d'alimentation de la table categories --

INSERT INTO gescom_struct.customers
VALUES
(1, 'Bomber', 'Jean', '3 Rue du Casse-croutte', '69069', 'Pain-ville', 'FR', 'jean.bomber@gladalle.fr', '1669696969','JeanBomber69', '2021-07-13', NULL),
(2, 'Némare', 'Jean', '3 Rue du Tibia-cassé', '00000', 'Foot-ville', 'FR', 'jean.némare@cafaitmal.fr', '1000000000','JeanNemaredavoirmal', '2021-07-13', NULL),
(3, 'Jackson', 'Michael', '4 boulevard du Billiejean', '01001', 'Cimetière', 'FR', 'michael.jackson@jsuismort.fr', '1698745632', 'RecussitezmoiSVP', '2021-07-13', NULL);
-- Script d'alimentation de la table customers --

INSERT INTO gescom_struct.orders
VALUES
(1, '2021-05-10', '2021-05-10', '2021-05-12', '2021-05-15', 'delivred', 1),
(2, '2021-05-30', '2021-05-30', '2021-06-02', '2021-06-05', 'delivred', 2),
(3, '2021-06-27', '2021-05-10', '2021-06-30', '2021-07-02', 'delivred', 3);
-- Script d'alimentation de la table orders --