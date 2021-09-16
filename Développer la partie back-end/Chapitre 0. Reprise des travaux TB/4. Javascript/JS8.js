/* LES BOUCLES 
console.log("Table de multiplication par 5");
console.log("=============================");

for (i=0; i<=10; i++)
{
    resultat = 5 * i;

    console.log("5 * "+i+" = "+resultat);
}

// instructions exécutées après le for (i vaut 10)
console.log("fin de la boucle");

valeur initiale représente l'initialisation des itérateurs;
condition représente la condition d’itération;
actualisation représente l'actualisation des itérateurs; */

// Exercice 1 

var i = 1;
var demande = prompt("Veuillez entrez vos prénoms n°" + i + " et vous arrêtez");
while (demande != "") {
    document.write(demande + ", ")
    i++;
    (demande = prompt("Veuillez entrez vos prénoms n°" + i + " et vous arrêtez"));
}
i--;
document.write(i);

// Exercice 2
var z = 1;
var nombr = prompt("Veuillez entrez un chiffre, on vous donnera les inférieurs");
for (z = nombr; z >= 0; z--) {
    document.write(z + "<br>");
}
// Exercice 3

var r = 1;
var t = parseInt(prompt("Veuillez entrez vos nombres n°" + r + " et vous arrêtez avec 0"));
var somme = 0;
var moyenne;

while (t != 0) {
    somme = somme + t;
    r++;
    t = parseInt(prompt("Veuillez entrez vos nombres n°" + r + " et vous arrêtez avec 0"));
}
r--;
moyenne = somme / r;
document.write("La somme est de : " + somme + "<br>");
document.write("La moyenne de tout est de : " + moyenne);


// Exercice 4

var n = parseInt(prompt("Veuillez entrez le nombre de n à multiplié"));
var x = parseInt(prompt("Veuillez entrez le chiffre de x"));
var t = 1;
var result;


while (t != n + 1) {
    result = t * x;
    document.write(t + " x " + x + " = " + result + "<br>");
    t++;
}

/* for (var t = 1; t != n; t++)
    {
        result = t * x;
        document.write(t + " x " + x + " = " + result + "<br>")
    }
document.write(t + " x " + x + " = " + result + "<br>") */


// Exercice 5