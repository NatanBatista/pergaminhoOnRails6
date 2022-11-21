
const menubtn = document.querySelector('.menu-btn')

menubtn.addEventListener('click', function () {
  document.querySelector('.nav').classList.toggle('active');
  menubtn.classList.toggle('active');
});