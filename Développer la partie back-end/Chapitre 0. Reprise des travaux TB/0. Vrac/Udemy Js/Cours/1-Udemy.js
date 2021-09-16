// Page 1

let prenom = "Marc";
// chaine de caractères  (string)

let age = 25;
// nombre (number)

let majorite = true
// booléen (boolean)


let nb1 = 8;
let nb2 = 4;
var result;
result = (nb1 + nb2) * 9;
console.log(result) 


// Page 2

// Page 3

function direBonjour() {
    alert("Salut tout le monde!")
}

direBonjour()

function addition(nombreUn, nombreDeux) {
    
    console.log(nombreUn + nombreDeux)
    
}

addition(5, 9.4); 

function direBonjour(prenom) {

    alert("Bonjour " + prenom);
}

direBonjour("Nicolas"); 
let crie = "Toujours plus bas!"; // globale

function criedeGuerre() {

    let crie = "Chien des bois!"; // locale
    console.log(crie);
}

criedeGuerre();
console.log(crie); 


//// 

let nombreUn = 4, nombreDeux = 7;

function addition(nombreA, nombreB) {

    let result = nombreA + nombreB;
    // console.log(result); // affiche un résultat
    return result; // nous as retourner la valeur 11
}
console.log(addition(nombreUn, nombreDeux)); 

////


let nombreUn = 4, nombreDeux = 7;

function addition(nombreA, nombreB = 10) {

    let result = nombreA + nombreB;
    return result;
}
console.log(addition(nombreUn, nombreDeux)); 


////

function cuisiner(nombreDeGateaux, minutesDePreparation = 10, minutesDeCuisson = 15) {
    let resultat = nombreDeGateaux * (minutesDeCuisson + minutesDePreparation);
    return resultat;
}

let tempsChocolat = cuisiner(4);
let tempsFraisier = cuisiner(1, 20);
let tempsChien = cuisiner(2, 50, 50);
console.log(tempsFraisier + tempsChocolat + tempsChien)
