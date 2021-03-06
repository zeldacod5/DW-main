<!DOCTYPE html>
<html lang="fr">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <title>CONTACT BOOTSTRAP</title>
</head>

<body>
  <div class='container'>
    <header>
      <div class="container-fluid">
        <div class="d-none d-lg-flex justify-content-between align-items-center">
          <img class="col-2" src="jarditou_html_zip/images/jarditou_logo.jpg" alt="logo" title="logo">
          <h1 class="pr-5" style="color: green">La qualité depuis 70 ans</h1>
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
              <a class="nav-link" href="11-1-Index.html">Accueil <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="11-2-Tableau.html">Tableau</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="#">Contact</a>
            </li>
          </ul>
          <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Votre promotion" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Rechercher</button>
          </form>
        </div>
      </nav>
      <img src="jarditou_html_zip/images/promotion.jpg" class="img-fluid" alt="promotion" tilte="promotion"
        width="100%">
    </header>

    <section>
      <p>*Ces zones sont obligatoires</p>
      <h2>Vos coordonnées</h2>
      <form action="destination.php" method="POST">
        <div class="form-group">
          <label for="nom">Nom*</label>
          <input type="text" class="form-control" id="nom" name="nom" placeholder="Veuillez saisir votre nom">
        </div>
        <div class="form-group">
          <label for="prenom">Prénom*</label>
          <input type="text" class="form-control" id="prenom" name="prenom" placeholder="Veuillez saisir votre prénom">
        </div>
        Sexe*<br>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="sexe" name="sexe" value="féminin">
          <label class="form-check-label" for="sexe">Féminin</label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="sexe" value="masculin">
          <label class="form-check-label" for="sexe">Masculin</label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="sexe" value="neutre">
          <label class="form-check-label" for="sexe">Neutre</label>
        </div>
        <div class="form-group">
          <label for="ddn"></label>
          <input type="date" class="form-control" id="ddn" name="ddn" placeholder="jj/mm/aaaa">
        </div>
        <div class="form-group">
          <label for="codepostal">Code Postal*</label>
          <input type="text" class="form-control" name="cp" id="codepostal">
        </div>
        <div class="form-group">
          <label for="adresse">Adresse</label>
          <input type="text" class="form-control" id="adresse" name="adresse">
        </div>
        <div class="form-group">
          <label for="ville">Ville</label>
          <input type="text" class="form-control" id="ville" name="ville">
        </div>
        <div class="form-group">
          <label for="email">Email*</label>
          <input type="email" class="form-control" id="email" name="email" placeholder="ton-mail@afpa.fr">
        </div>

        <h2>Votre demande</h2>
        <div class="form-group">
          <label for="demandes">Sujet*</label>
          <select id="demandes" name="demandes" class="form-control" size="1">
            <option selected disabled>Veuillez séléctionner un sujet</option>
            <option>Mes commandes</option>
            <option>Question sur un produit</option>
            <option>Réclamation</option>
            <option>Autres</option>
          </select>
        </div>
        Votre question*
        <textarea class="form-control form-control-sm mb-3"></textarea>

  

  <div class="form-check form-check-inline">
    <input class="form-check-input" type="checkbox" name="cochage" value="cochage">J'accepte le traitement informatique
    de ce formulaire.
    <label class="form-check-label" for="cochage"></label>
  </div>
  <br><br>
  <button type="submit" class="btn btn-secondary">Envoyer</button>
  <button type="reset" class="btn btn-secondary">Annuler</button>
  </form>

  </section>
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
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
    integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous">
  </script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
  </script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
    integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
  </script>

</body>

</html>