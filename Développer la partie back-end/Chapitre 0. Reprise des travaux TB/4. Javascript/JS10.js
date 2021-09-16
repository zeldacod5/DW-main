// Exercice 1
var taille = parseInt(prompt("Veuillez entrer la taille du tableau"));
var tab = new Array(taille);
var valeur = 0;

for (var i = 0; i < tab.length; i++) {
    valeur = parseInt(prompt("Veuillez saisir la valeur n°" + i));
    tab[i] = valeur;
}

console.log(tab);

// Exercice 2

function GetInteger() {
    parseInt(prompt("Veuillez donner un nombre svp"));
}


function InitTab() {
    taille = parseInt(prompt("Veuillez entrer une taille de tableau"));
    tab = new Array(taille);
}

function SaisieTab() {
    for (var i = 0; i < tab.length; i++) {
        valeur = parseInt(prompt("Veuillez saisir la valeur n°" + i));
        tab[i] = valeur;
        console.log(tab[i])
        console.log(tab)
    }
}

function AfficheTab() {
    for (var i = 0; i < tab.length; i++) {
        document.write(tab[i] + "<br>");
    }
}

function RechercheTab() {
    trouve = parseInt(prompt("Donnez nous la saisie du poste voulu"));
    document.write(tab[trouve])
}

function InfoTab() {
    var total = 0;
    for (i = 0; i < tab.length; i++) {
        var maximum = 0;
        if (maximum < tab[i]) {
            (maximum = tab[i])
        }
        total = tab[i] + total
        console.log(total)
    }
    moyenne = total / tab.length
    document.write("<br>" + moyenne);
    document.write("<br>" + total);
}



GetInteger()
InitTab()
SaisieTab()
AfficheTab()
RechercheTab()
InfoTab()

var tab = []
for (var i = 0; i < 20; i++) {
    valeur = parseInt(prompt("Veuillez saisir la valeur n°" + i));
    tab[i] = valeur;
    console.log(i)
    console.log(tab[i])
    console.log(tab)
}

tab = [0, 2, 5, "coucou", "va chier", "connard", 42]

console.log(tab)
console.log(tab[3])
tab[5] = "enfoiré"
console.log(tab)

// Exercice 3


function sort(theTab) {
    var changed;
    do {
        changed = false;
        for (var i = 0; i < theTab.length - 1; i++) {
            if (theTab[i] > theTab[i + 1]) {
                var tmp = theTab[i];
                theTab[i] = theTab[i + 1];
                theTab[i + 1] = tmp;
                changed = true;
            }
        }
    } while (changed);
}
var theTab = [5, 8, 11, 6, 1, 9, 3];
sort(theTab);
console.log(theTab);