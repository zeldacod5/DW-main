// Exercice 1

var age = 0;
var jeune = 0;
var moyen = 0;
var vieu = 0;

while (age != 100) {
    age = parseInt(prompt("Veuillez nous donner vos âges"));
    if (age < 20) {
        jeune++;
    } else if (age >= 20 && age <= 40) {
        moyen++
    } else if (age > 40) {
        vieu++;
    }
    console.log(jeune);
    console.log(moyen);
    console.log(vieu);
}
document.write("Il y a " + jeune + " jeune(s)<br>");
document.write("Il y a " + moyen + " moyen(s)<br>");
document.write("Il y a " + vieu + " vieu(x)<br>");



// Exercices 2

var nb = parseInt(prompt("Veuillez nous donnez le chiffre à entrer"));

function table(r) {
    var resultat;
    var t = 1;
    while (t <= 10) {
        resultat = r * t
        document.write(t + " x " + nb + " = " + resultat + "<br>")
        t++
    }

}
table(nb)


// Exercices 3 


var monTab = ["Audrey", "Aurélien", "Flavien", "Jérémy", "Laurent", "Melik", "Nouara", "Salem", "Samuel", "Stéphane"];
var prenom = window.prompt("Veuillez donnez le prénom:");
var index = monTab.indexOf(prenom);

if (index > -1) {
    monTab.splice(index, 1);
    monTab.push(" ");
    console.log(monTab);
} else {
    window.alert("Erreur: Ce prénom n'est pas dans la liste.");
    console.log(monTab);
}

// Exercice 4