var formulaire = document.getElementById("forms");


var verification=document.getElementById('verification');
var verification=document.getElementById('verification1');

var nom = document.getElementById("nom");
var prenom = document.getElementById("prenom");


var regExp1 = new RegExp("^[A-Za-z]+[A-Za-z]+[A-Za-z]+$");

var affiche_texte_success ="champs bon";
var affiche_texte_warning="champ requis ";

function change (Ton_Champs , Ta_Regex, Ta_verification){

    if (Ton_Champs.value==""  Ton_Champs.value==null  Ta_Regex.test(Ton_Champs.value) == false)
    {
        Ta_verification.style.color='tomato';
        Ta_verification.textContent=affiche_texte_warning;
      return false
    }else{

        Ta_verification.textContent=affiche_texte_success;
        Ta_verification.style.color='lightgreen';
        return true
    }
}


forms.addEventListener('submit',(f)=>{
    f.preventDefault();
})

nom.addEventListener('change', ()=>{
    change(nom,regExp1,verification) 
});

prenom.addEventListener('change', ()=>{
    change(prenom,regExp1,verification) 
});



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



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
