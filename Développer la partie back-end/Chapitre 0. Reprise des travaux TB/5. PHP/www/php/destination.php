<?php
// Nom
if (preg_match("/^[a-zéèêA-Z]+$/", $_POST["nom"]) == false)
{
    echo "Le nom n'a pas été renseigné.";
}

// Prénom
elseif (preg_match("/^[a-zéèêA-Z]+$/", $_POST["prenom"]) == false)
{
    echo "Le prénom n'a pas était renseigné.";
}
 // Sexe
 elseif (empty($_POST["sexe"]))
 {
    echo "Veuillez pressez le bouton du sexe.";
 }

 // Date de naissance
 elseif (empty($_POST["ddn"]))
 {
     echo "La date de naissance n'a pas été saisie.";
 }

 // Code Postal
 elseif (preg_match("/^[0-9]{5}$/", $_POST["cp"]) == false)
 {
     echo "Le code postal n'est pas bon.";
 }

// email
elseif (empty($_POST["email"]))
{
    echo "L'email n'est pas le bon ptn!";
}

// sujet
elseif (empty($_POST["demandes"]))
{
    echo "Le sujet n'a pas été sélécitonner.";
}
 
else
{
    echo "<pre>";
    print_r($_POST);
    echo "</pre>";
}
?>