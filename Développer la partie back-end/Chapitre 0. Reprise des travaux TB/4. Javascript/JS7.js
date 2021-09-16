// Exercice 1

var nb = parseInt(prompt("Veuillez donner un nombre!"));
if (nb >= 1) {
    document.write("nombre positif")
} else if (nb < 0) {
    document.write("nombre négatif")
} else if (nb == 0) {
    document.write("nombre nul")
}


// Exercice 2
var date = parseInt(prompt("Veuillez nous dire votre année de naissance:"));
const chiffre = 2003;
if (date >= 2003) {
    document.write(date + " l'utilisateur est un mineur")
} else if (date <= 2003) {
    document.write(date + " l'utilisateur est majeur")
}

// 1/ faire une const (constante) 2021 
// 2/ ma constante - nb ma variable donnera savoir si majeur ou mineur
// 3/ afficher le calcul de ma constante moins la variable */

// Exercice 3

var premier_Nombre = parseInt(prompt("Faire la saisie d'un premier nombre entier"));
var second_Nombre = parseInt(prompt("Faire la saisie d'un second nombre entier"));
var operateur = (prompt("Faite la saisie de l'un de ces opérateurs obligatoirement : +, -, *, /"));
var resultat;

if (operateur == "+") {
    resultat = premier_Nombre + second_Nombre;
} else if (operateur == "-") {
    resultat = premier_Nombre - second_Nombre;
} else if (operateur == "*") {
    resultat = premier_Nombre * second_Nombre;
} else if (operateur == "/" && second_Nombre != "0") {
    resultat = premier_Nombre / second_Nombre;
} else if (second_Nombre == "0" && operateur == "/") {
    alert("calcul impossible")
} else {
    alert("opérateur érroné")
}
document.write(resultat);