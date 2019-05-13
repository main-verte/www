import "bootstrap";
import {animateBurgerShowMenu} from "../components/animate-show-menu";
animateBurgerShowMenu()
import {addScrollRevealDesktop} from '../plugins/scrollreveal';
addScrollRevealDesktop()
import {changeColorNavbar} from "../components/navbar";
changeColorNavbar()
import {applyParallax} from "../components/apply_parallax";
applyParallax('.team-section', '.team-wrapper')
applyParallax('.form-section', '.form-wrapper')
import {parallaxEffect} from "../components/vanillajs_parallax";
parallaxEffect('.team-wrapper', 0.1);
parallaxEffect('.form-wrapper', 0.3);

