var x = parseInt(prompt("Entrez un nombre"));
var y = parseInt(prompt("Entrez un multiplicateur"));
var multipication;
var cube;

function produit(x, y) {

   multiplication = x * y;
   cube = x * x * x;

}

function myImg(imgpap) {
   var img = document.createElement("IMG");
   img.setAttribute("src", imgpap);
   document.body.appendChild(img);
}

myImg("papillon.jpg")
produit(x, y);
document.write("<br>Le cube de " + x + " est égal à " + cube + ".<br> Le produit de " + x + " * " + y + " est égal à " + multiplication);


var str1;
var str2;
var n;
n = prompt("Veuillez saisir des mots avec des espaces entre les deux")

function strtok(str1, str2, n) {

}