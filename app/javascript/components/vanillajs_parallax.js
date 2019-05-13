function parallaxEffect(elem, position){
  window.addEventListener('scroll', function() {
    const elm = document.querySelector(elem);
    elm.style.top = -(elm.getBoundingClientRect().top * position) + 'px';
  });
}

export { parallaxEffect };
