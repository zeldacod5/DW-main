<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tableaux PHP</title>
</head>
<body>
    

<?php
$tab_annee = array("Janvier"=>31, "Février"=>28, "Mars"=>31, "Avril"=>30, "Mai"=>30, "Juin"=>30,
"Juillet"=>31, "Aout"=>31, "Septembre"=>30,"Octobre"=>31, "Novembre"=>30, "Décembre"=>31);

asort($tab_annee);
foreach ($tab_annee as $key => $val) {
    echo "<br>";
    echo "$key = $val\n";
}

?>


</body>
</html>