-- Exo 1 --

DROP VIEW IF EXISTS v_hotel_station;

CREATE VIEW v_hotel_station
AS
SELECT hot_nom, sta_nom
FROM hotel JOIN station
WHERE hot_sta_id = sta_id

-- Exo 2 --

DROP VIEW IF EXISTS v_chambre_hotel;

CREATE VIEW v_chambre_hotel
AS
SELECT cha_id, hot_nom 
FROM chambre JOIN hotel
WHERE cha_hot_id = hot_id

-- Exo 3 --

DROP VIEW IF EXISTS v_reservation_clients;

CREATE VIEW v_reservation_clients
AS
SELECT CONCAT ( cli_nom,' ', cli_prenom) AS Clients, res_id
FROM client JOIN reservation
WHERE res_cli_id = cli_id

-- Exo 4 --

DROP VIEW IF EXISTS v_chambre_hotel_station;

CREATE VIEW v_chambre_hotel_station
AS
SELECT cha_id, hot_nom, sta_nom
FROM chambre JOIN hotel
JOIN station 
WHERE cha_hot_id = hot_id = sta_id

-- Exo 5 -- (pas bon celui la)

DROP VIEW IF EXISTS v_reservation_client_hotel;

CREATE VIEW v_reservation_client_hotel
AS
SELECT res_id, CONCAT ( cli_nom,' ', cli_prenom) AS Clients, hot_nom
FROM hotel.hotel
JOIN hotel.chambre ON hot_id = cha_hot_id
JOIN hotel.reservation ON cha_id = res_cha_id
JOIN hotel.client ON res_cli_id = cli_id