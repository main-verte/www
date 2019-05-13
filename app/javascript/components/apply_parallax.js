import {userIsMobile} from "./screen_size";
userIsMobile()

function applyParallax(elem1, elem2) {
  const element1= document.querySelector(elem1)
  const element2 = document.querySelector(elem2)
    if (userIsMobile()) {
      element1.classList.remove('position-relative')
      element2.classList.remove('position-absolute')
  }
}

export { applyParallax }
