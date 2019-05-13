import ScrollReveal from 'scrollreveal';
import {userIsMobile} from "../components/screen_size";
userIsMobile()

function addScrollRevealDesktop() {
  if(!userIsMobile()) {
    window.sr = new ScrollReveal({
      reset: false
    });

    sr.reveal("#project_a",{
      origin: "left",
      distance: "300px",
      duration: 1000
    });

    sr.reveal("#project_b",{
      origin: "right",
      distance: "300px",
      duration: 1000
    });

    sr.reveal("#project_c",{
      origin: "left",
      distance: "300px",
      duration: 1000
    });

    sr.reveal("#project_d",{
      origin: "right",
      distance: "300px",
      duration: 1000
    });
  }
}
export {addScrollRevealDesktop}
