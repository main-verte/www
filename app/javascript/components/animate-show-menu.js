function animateBurgerShowMenu() {
  const menuButton = document.getElementById('menuButton');
  const menuBanner = document.getElementById('menu-banner');
  const menuOptions = document.querySelector('.menu-options')
  menuButton.addEventListener('click', function (e) {
    menuButton.classList.toggle('is-active');
    e.preventDefault();
    menuBanner.classList.toggle('hide');
    menuOptions.classList.toggle('show');
  });
}

export { animateBurgerShowMenu };
