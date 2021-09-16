function afficherAge() {

    let age = prompt("Quel est votre âge?");
    alert("Vous avez " + age + " ans.");

}

afficherAge(); 

function prevoirAge() {

    let age = parseInt(prompt("Quel est votre âge?"));
    alert("Bientôt vous aurez " + (age + 1) + " ans.");
    // age = parseInt(age); conversion en nombre entier
    // age = parseFloat(age); conversion en nombre décimaux
    // age = Number(age); conversion en chiffre

    // nombre = 45;
    // nombreEnString = nombre + "";
    // nombreEnString = nombre.toString();
}
prevoirAge(); 

let fonctionAnonyme = function() {
    console.log("Je suis une fonction anonyme.");
}

fonctionAnonyme();


let fonctionAnonyme = function() {
    console.log("Je suis une fonction anonyme.");
}

fonctionAnonyme(); 
 

// EXERCICES UDEMY 

function abracadabra() {
    let prenom = prompt("C'est quoi ton prénom mec?");
    let nom = prompt("Ton nom de famille aussi bwo?");
    let age = parseInt(prompt("Donne ton âge rapidos mtn"));

    alert("Ah ok c'est toi VIEU BI DE " + prenom + "\n T WANTED MEC TOI ET TA FAMILLE " + nom + " !\nTa quel âge toi grand? " + age + " MDR T UN PETIT ENFAITE CLOCHARD!")
    
}

abracadabra(); 


function imc(poids, taille) {

    let poids = parseFloat(prompt("Tu pèses combien gros?"));
    let taille = parseFloat(prompt("Et ta taille garçon?"));
    let chien = Math.pow(taille);
    let vraiimc;
    vraiimc = poids / chien;
    console.log(imc)

}
imc() 

function calculerIMC(poids, taille) {
    // Calculer la taille en mètres
    let tailleEnMetres = taille / 100;
    let tailleCalculee = Math.pow(tailleEnMetres, 2);
    let resultat       = poids / tailleCalculee;
    
    return resultat;
}

let poids = prompt("Quel est votre poids? (en kg)");
let taille = prompt("Quelle est votre taille? (en cm)");

alert(calculerIMC(poids, taille));