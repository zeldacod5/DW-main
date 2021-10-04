<?php

require_once "connexion_bdd.php"; // Inclusion de notre bibliothèque de fonctions
$db = connexionBase(); // Appel de la fonction de connexion


try {

//Récuperation des valeurs
$produit_cat_id = $_POST['cat'];
$reference = $_POST['ref'];
$libelle = $_POST['lib'];
$description = $_POST['desc'];
$prix = $_POST['prix'];
$stock = $_POST['stock'];
$couleur = $_POST['color'];
$photo = $_POST['photo'];
$bloque = $_POST['check'];

var_dump($produit_cat_id);
var_dump($reference);
var_dump($libelle);
var_dump($description);
var_dump($prix);
var_dump($stock);
var_dump($couleur);
var_dump($photo);
var_dump($bloque);

$d_ajout = date("y/m/d");
//Requete sql pour insertion de données
$requete = $db->prepare("INSERT INTO produits(pro_cat_id,pro_ref,pro_libelle,pro_description,pro_prix,pro_stock,pro_couleur,pro_photo,pro_d_ajout,pro_bloque) 
                VALUES (:cat_nom, :pro_ref, :pro_libelle, :pro_description, :pro_prix, :pro_stock, :pro_couleur, :pro_photo, :pro_d_ajout, :pro_bloque)");

$requete->bindValue(":cat_nom", $produit_cat_id);
$requete->bindValue(":pro_ref", $reference);
$requete->bindValue(":pro_libelle", $libelle);
$requete->bindValue(":pro_description", $description);
$requete->bindValue(":pro_prix", $prix);
$requete->bindValue(":pro_stock", $stock);
$requete->bindValue(":pro_couleur", $couleur);
$requete->bindValue(":pro_photo", $photo);
$requete->bindValue(":pro_d_ajout", $d_ajout);
$requete->bindValue(":pro_bloque", $bloque);

$resultat = $requete->execute();

exit;

}
catch (Exception $e) {

    echo "La connexion à la base de données a échoué ! <br>";
    echo "Merci de bien vérifier vos paramètres de connexion ...<br>";
    echo "Erreur : " . $e->getMessage() . "<br>";
    echo "N° : " . $e->getCode();
    die("Fin du script");
}
    header("Location: 11-4-Listes.php");
    exit;

?>
