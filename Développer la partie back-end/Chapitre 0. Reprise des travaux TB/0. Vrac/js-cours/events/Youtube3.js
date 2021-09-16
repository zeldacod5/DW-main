/* Exercice 1
var button = document.getElementById ("btn");
button.addEventListener ("click", clickbtn);
var texte = document.getElementById ("texte").value;
function clickbtn ()
{
    alert("Vous avez saisi : "+ texte);
}
 // A mettre dans le document HTML
 <p>Saisissez votre texte et presser "Le bouton d'acné"</p>
        <input type="text" id="texte" name="texte" placeholder="Saissisez le texte ici...
        ">
        <button id="btn">Le bouton d'acné</button> */

/*

EVAL - Exercice 4
var TOT = 0;
var PU = parseInt(window.prompt("Veuillez saisir le prix unitaire de l'article :"));
var QTECOM = parseInt(window.prompt("Veuillez saisir la quantité d'article :"));
var PAP = 0 ;
var REM = 0 ;
var PORT = 0 ;
TOT = PU * QTECOM ;
//Calcul dU prix à payer après la remise -
if (TOT>=100 && TOT<=200)
{
    PAP = TOT * (1-0.05);
    REM = 5 ;
} 
else if (TOT>200)
{
    PAP = TOT * (1-0.1);
    REM = 10 ;
}
// Calcul du port -
if ( PAP > 500)
{
    PORT = 0 ;
}
else if (PAP <= 500)
{
    PORT = (PU * (1+0.02));
    PORT = PORT - PU;
}
if(PORT<6 && PORT > 0)
{
    PORT=6 ;
}
if (REM == 0)
{
    PAP = PU ;
}
PAP = PAP + PORT ;
document.write ("Le total est de " +TOT+ "€<br>");
document.write ("La prix unitaire est de " +PU+ "€<br>");
document.write ("La qtité  est de " +QTECOM+ "<br>");
document.write ("Le prix à payer est de " +PAP+ "€<br>");
document.write ("La remise est de " +REM+  "%<br>");
document.write ("Les frais de gros Porc sont à " +PORT+ "€<br>"); */
