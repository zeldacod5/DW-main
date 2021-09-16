document.getElementById("inscription").addEventListener("submit", function(e)
{
    var erreur;
    var pseudo = document.getElementById("pseudo");
    var email = document.getElementById("email");
    var email2 = document.getElementById("email2");
    var mdp = document.getElementById("mdp");

        if (!mdp.value) {
        erreur = "Veuillez renseigner un mot de passe";    }
        if (!email.value) {
        erreur = "Veuillez renseigner un email";
        if (!pseudo.value) {
        erreur = "Veuillez renseigner un pseudo";
    }

    }
    if (erreur) {
        e.preventDefault(); /*par défault change le comportement du formulaire */
        document.getElementById("erreur").innerHTML = erreur;
        return false; /* permet dans tout les cas de retourner une erreur si il y as erreur */
    } else {
        alert('Formulaire envoyé');
    }
});
