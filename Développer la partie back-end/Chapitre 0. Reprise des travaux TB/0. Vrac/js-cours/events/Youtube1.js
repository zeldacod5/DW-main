// LES VARIABLES
let cours = "première valeur";
// let permet de dire que c'est une variable modifiable
console.log(cours + " // avant MAJ ")

cours = "nouvelle valeur"
console.log(cours + " // après MAJ ")

const prenom = "patrice"
// const permet de dire que la variable ne changera jamais
console.log(prenom)


// LES FONCTIONS ( FUNCTIONS )
// On déclare la fonction
function faireQuelqueChose() {
    console.log('je fais un truc');
}
// On joue la fonction
faireQuelqueChose();

// Faire une fonction fléchée
const faireUneTache = (type) => {
    console.log("je fais une tache : " + type);
}
faireUneTache("la vaiselle")
// + la fonction dynamiquee (ajout de la balise type)
faireUneTache("les courses")