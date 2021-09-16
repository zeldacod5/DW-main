<html>
<body>
<?php

$prenom = "Dave";
$nom = "Loper";

function bonjour($prenom, $nom) 
{

    echo "Bonjour " .$prenom." " .$nom;
}
bonjour($prenom, $nom);



function addition($entier1, $entier2) 
{
   $resultat = $entier1 + $entier2;
   return $resultat;
}

$resultat = addition(1, 2);
echo $resultat; // affichera 3

echo addition(1, 2);

$age = 19;

function isMineur($age) 
{      
    if ($age > 18) 
    {
        return "majeur";
    } 
    else 
    {
        return "mineur";
    } 
}

?>

