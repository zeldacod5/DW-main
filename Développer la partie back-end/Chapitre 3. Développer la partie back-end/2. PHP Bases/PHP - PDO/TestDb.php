<html>
<head>
   <meta charset="UTF-8">
   <title>testDb.php</title>
   test
   <?php
   try 
   {        
       $db = new PDO('mysql:host=127.0.0.1;charset=utf8;dbname=Jarditou', 'afpa', 'Afpa1234');
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