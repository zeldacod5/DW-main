// Exercice 1
var n;
var tableau;
var i = 0;
var somme = 0;
var moyenne = 0;

tableau = new Array;

while (n != 0) {
    var n = parseInt(window.prompt("Veuillez saisir un entier :"));
    i++;
    somme = somme + n;
    tableau.push(n);
}
tableau.pop();
i--;
document.write("Le nombre de valeur est de : " + i + "<br>");
moyenne = somme / i;
document.write("La somme des valeurs est de : " + somme + "<br>");
document.write("La moyenne des valeurs est de : " + moyenne + "<br>");
console.log(tableau);