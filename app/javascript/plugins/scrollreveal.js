import ScrollReveal from 'scrollreveal';

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

sr.reveal("#team-mate-hm",{
  origin: "bottom",
  distance: "500px",
  duration: 1000
});

sr.reveal("#team-mate-ai",{
  origin: "bottom",
  distance: "500px",
  duration: 1300
});

sr.reveal("#team-mate-ks",{
  origin: "bottom",
  distance: "500px",
  duration: 1600
});

sr.reveal(".form-wrapper",{
  origin: "right",
  distance: "1000px",
  duration: 1800
});
