const btn = document.querySelector('#btn')
const img = document.getElementById('img')

btn.addEventListener('click', (e) => {
  img.classList.toggle("show")
})