function makeTitleVisible() {
  window.addEventListener('scroll', function() {
    const selectedWorkTitle = document.querySelector('.selected-work-title');
    if (window.pageYOffset > 500) {
      selectedWorkTitle.classList.add('visible');
    } else {
      selectedWorkTitle.classList.remove('visible');
    }
  });
}

export { makeTitleVisible };
