<html>
<head>
   <meta charset="UTF-8">
   <title>testDb.php</title>
   <?php
   try 
   {        
       $db = new PDO('mysql:host=localhost;charset=utf8;dbname=jarditou', 'afpa', 'Afpa1234');
       $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   } catch (Exception $e) {
      echo "Erreur : " . $e->getMessage() . "<br>";
      echo "N° : " . $e->getCode();
      die("<br>Fin du script");
}       
?>
</head>
<body>
<p>Ma page</p>   
</body>
</html> 