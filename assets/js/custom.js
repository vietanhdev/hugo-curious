// add custom js in this file

// Auto hide navbar when scrolling down
var prevScrollpos = window.pageYOffset;
window.onscroll = function() {
var currentScrollPos = window.pageYOffset;
  if (prevScrollpos > currentScrollPos) {
    document.getElementById("top-navbar").style.top = "0";
  } else {
    document.getElementById("top-navbar").style.top = "-50px";
  }
  prevScrollpos = currentScrollPos;
}