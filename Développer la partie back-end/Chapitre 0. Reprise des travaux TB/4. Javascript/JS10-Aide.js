var tableau = [];
tableau[0] = ["pomme"];
tableau[1] = ["poire"];

var nb = tableau.length;
console.log("Le tableau contient " + nb + " éléments.");


var myTableau = ["pomme", "poire", "banane", "fraise", "abricot"];

for (var i = 0; i < myTableau.length; i++) {
   console.log("Fruit : " + myTableau[i]);
}


// Réunit deux tableaux.
// Exemple :
var fruits = ["pomme", "poire", "banane", "fraise", "abricot"];
var autres = ["sucre", "farine", "oeufs"];
var ingredients = fruits.concat(autres);
console.log(fruits)
console.log(autres)
console.log(ingredients)
console.log(fruits.indexOf('banane')) // donne la position de banane dans le tableau (retourne le premier indice pour lequel on trouve l'étlément dans un tableau(occurence))

var fruites = ["pomme", "poire", "banane", "fraise", "banane", "abricot"];
console.log(fruites.lastIndexOf("banane"));
last = fruites.pop()
console.log(last)
var rude = fruites.length;
console.log(rude)

var tab1 = [];
tab1[0] = ["poireau", "tomate", "carotte"];
tab1[1] = ["pomme", "poire", "banane"];
console.log(tab1[1][2]);

var legumes = ["poireau", "tomate", "carotte"];
var fruitz = ["pomme", "poire", "banane"];

tab1[0] = legumes;
tab1[1] = fruitz;
console.log(legumes)
console.log(fruitz)