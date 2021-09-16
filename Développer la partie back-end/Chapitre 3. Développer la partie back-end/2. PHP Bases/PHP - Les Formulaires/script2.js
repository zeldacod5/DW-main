document.getElementById("inscription").addEventListener("submit", function(e)
{
    var erreur;

    var inputs = document.getElementsByTagName("input");

    for (var i=0; i < inputs.length; i++) {
        if (!inputs[i].value) {
            erreur = "Veuillez renseigner tous les champs";
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
