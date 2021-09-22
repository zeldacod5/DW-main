<?php
 // Fichier 'index.php'

include("functions.php"); 
$sMessage = "Hello world !";
?>
 <!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>Inclusion de fichiers PHP</title>           
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">           
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">    
</head>
<body> 
<?php 
writeMessage($sMessage); 
?>
<br>
<?php 
writeMessage("Bonjour tout le monde !"); 
?>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script> 
</body>
</html>