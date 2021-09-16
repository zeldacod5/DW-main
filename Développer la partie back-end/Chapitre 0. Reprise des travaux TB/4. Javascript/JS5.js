var reponse1 = window.prompt("Saisissez votre nom");
var reponse2 = window.prompt("Saisissez votre prénom");

if (window.confirm("Êtes-vous un homme ?") == true) {
    alert("Bonjour Monsieur " + reponse1 + " " + reponse2 + "\nBienvenue sur notre site web!")
}