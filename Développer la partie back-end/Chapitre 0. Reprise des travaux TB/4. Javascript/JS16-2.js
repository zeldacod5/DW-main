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