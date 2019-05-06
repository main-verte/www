import ScrollReveal from 'scrollreveal';

window.sr = new ScrollReveal({
  reset: false
});

sr.reveal(".hero-text",{
  origin: "left",
  distance: "500px",
  duration: 1000
});

sr.reveal(".hero-illustration",{
  origin: "right",
  distance: "500px",
  duration: 1000
});

sr.reveal(".office-photo",{
  origin: "bottom",
  distance: "500px",
  duration: 1000
});

sr.reveal(".selected-work",{
  origin: "bottom",
  distance: "500px",
  duration: 1000
});

sr.reveal("#team-mate-hm",{
  origin: "bottom",
  distance: "500px",
  duration: 1000
});

sr.reveal("#team-mate-ai",{
  origin: "bottom",
  distance: "500px",
  duration: 1500
});

sr.reveal("#team-mate-ks",{
  origin: "bottom",
  distance: "500px",
  duration: 2000
});

sr.reveal(".form-wrapper",{
  origin: "right",
  distance: "1000px",
  duration: 2000
});
