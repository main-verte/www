function showMenu() {
  const sidenav = document.getElementById('sidenav');
  sidenav.addEventListener( 'click', function() {
    const menu = document.querySelector('.menu-options')
    if (!menu.classList.contains('show')) {
      menu.classList.add('show');
    } else {
      menu.classList.remove('show');
    }
  })
}

export { showMenu };
