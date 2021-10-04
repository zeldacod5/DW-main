<!DOCTYPE html>
<html lang="fr">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <title>Ajout d'un produit</title>
</head>
<body>
  <header>
    <div class="container-fluid">
      <div class="d-none d-lg-flex justify-content-between align-items-center">
        <img class="col-2" src="jarditou_photos/jarditou_logo.jpg" alt="logo" title="logo">
        <h1 class="pr-5" style="color: green">Tout le jardin</h1>
      </div>
    </div>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="#">JardiTou.com</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="11-1-Index.php">Accueil <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="11-2-Tableau.php">Tableau</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="11-3-Contact.php">Contact</a>
          <li class="nav-item active">
            <a class="nav-link" href="11-4-Listes.php">Liste des produits</a>
          </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Votre promotion" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Rechercher</button>
        </form>
      </div>
    </nav>
    <img src="jarditou_photos/promotion.jpg" class="img-fluid" alt="promotion" tilte="promotion" width="100%">
  </header>

<div class="row">
      <div class="col-12">
  <form action="ajout.php" method="POST">
  <fieldset>
    <br>
    <div class="form-group">
      <label for="ref">Référence</label>
      <?php 
      echo "<input type='text' class='form-control' name='ref' id='ref' value='".$produit->pro_ref."' >";
      ?>
    </div>
    <div class="form-group">
      <label for="cat">Catégorie</label>
      <?php 
      echo "<input type='text' class='form-control' name='cat' id='cat' value='".$produit->pro_cat_id."' >";
      ?>
    </div>
    <div class="form-group">
      <label for="lib">Libellé</label>
      <?php 
      echo "<input type='text' class='form-control' name='lib' id='lib' value='".$produit->pro_libelle."' >";
      ?>
    </div>
    <div class="form-group">
      <label for="ref">Description</label>
      <?php 
      echo "<input type='text' class='form-control' name='desc' id='desc' value='".$produit->pro_description."' ";
      ?>
    </div>
    <div class="form-group">
      <label for="price">Prix</label>
      <?php 
      echo "<input type='text' class='form-control' name='prix' id='prix' value='".$produit->pro_prix."' >";
      ?>
    </div>
    <div class="form-group">
      <label for="stock">Stock</label>
      <?php 
      echo "<input type='text' class='form-control' name='stock' id='stock' value='".$produit->pro_stock."' >";
      ?>
    </div>
      <div class="form-group">
        <label for="color">Couleur</label>
        <?php 
      echo "<input type='text' class='form-control' name='color' id='color' value='".$produit->pro_couleur."' >";
      ?>
    </div>
      <br>
        <?php
        echo "Produit bloqué : ";

        if ($produit->pro_bloque == 1){
            echo "<div class='form-check form-check-inline'>";
            echo "<input class='form-check-input' type='radio' name='check' id='oui' value='oui' checked >";
            echo "<label class='form-check-label' for='oui'> Oui";
            echo "</label></div>";
            echo "<div class='form-check form-check-inline'>";
            echo "<input class='form-check-input' type='radio' name='check' id='non' value='non' >";
            echo "<label class='form-check-label' for='non'> Non";
            echo "</label></div>";
        }else{
            echo "<div class='form-check form-check-inline'>";
            echo "<input class='form-check-input' type='radio' name='check' id='oui' value='oui' >";
            echo "<label class='form-check-label' for='oui'> Oui";
            echo "</label></div>";
            echo "<div class='form-check form-check-inline'>";
            echo "<input class='form-check-input' type='radio' name='check' id='non' value='non' checked>";
            echo "<label class='form-check-label' for='non'> Non";
            echo "</label></div>";
    };

            echo "<br>";
            echo "Date d'ajout : ";
            echo " $produit->pro_d_ajout ";


            echo "<br>";
            echo "Date de modification : ";
            echo " $produit->pro_d_modif ";
?>
<br>
<br>
<button type="submit" class="btn btn-success">Ajouter</button>
    <a href="11-4-Listes.php" class="btn btn-danger">Retour</a>
<footer>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark mt-3">
            <!-- Copie de Navbar Ncode -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
            </button>   
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Mentions légales</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Horaires</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Plan du site</a>
                    </li>
                </ul>
            </div> 
        </nav>
    </footer>
    </div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
