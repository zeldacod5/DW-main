// Exercice 1

var button = document.getElementById("btn");
button.addEventListener("click", clickbtn);

function clickbtn() {
    var texte = document.getElementById("texte").value;
    alert("Vous avez saisi : " + texte);
}
console.log(texte);
console.log(clickbtn);

// Exercice 2 (à finir)


function getRandomArbitrary(min, max) {
    return Math.random() * (max - min) + min;
}

var verif = document.getElementById("button1");
verif.addEventListener("click", clickbutton);



function clickbutton() {
    var test = document.getElementById("textBox1").value;
    alert("Vous avez saisi : " + test);
}