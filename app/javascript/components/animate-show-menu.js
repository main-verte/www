function animateBurgerShowMenu() {
  const menuButton = document.getElementById('menuButton');
  const menuBanner = document.getElementById('menu-banner');
  const menuOptions = document.querySelector('.menu-options')
  const header = document.querySelector('header')
  menuButton.addEventListener('click', function (e) {
    menuButton.classList.toggle('is-active');
    e.preventDefault();
    menuBanner.classList.toggle('hide');
    header.classList.toggle('hide');
    menuOptions.classList.toggle('show');
  });
}

export { animateBurgerShowMenu };
