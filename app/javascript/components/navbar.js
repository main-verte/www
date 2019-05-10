function changeColorNavbar(){
  window.addEventListener('scroll', function() {
    const sidenav = document.getElementById('sidenav');
    if (window.pageYOffset > 100) {
      sidenav.classList.add('color-change');
    } else {
      sidenav.classList.remove('color-change');
    }
  });
  window.addEventListener('scroll', function() {
    console.log(window.scrollY)

  });
}
export { changeColorNavbar };
