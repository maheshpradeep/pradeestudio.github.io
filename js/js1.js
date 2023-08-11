//tablinks

var tablinks = document.getElementsByClassName("tab-links");
var tabcontents = document.getElementsByClassName("tab-contents");

function opentab(tabname) {
    for (var i = 0; i < tablinks.length; i++) {
        tablinks[i].classList.remove("active-link");
    }
    for (var i = 0; i < tabcontents.length; i++) {
        tabcontents[i].classList.remove("active-tab");
    }
    document.getElementById(tabname).classList.add("active-tab");
    event.currentTarget.classList.add("active-link");
    document.getElementById(tabname).classList.add("active-tab");
}




//////////////////////////////////////////////////////

// slideshow

var slides = document.getElementsByClassName("slide");
var currentSlide = 0;

function showSlide(n) {

    for (var i = 0; i < slides.length; i++) {
        slides[i].classList.remove("active");
    }


    slides[n].classList.add("active");
}

function nextSlide() {
    currentSlide = (currentSlide + 1) % slides.length;
    showSlide(currentSlide);
}

setInterval(nextSlide, 5000);


showSlide(currentSlide);

var slides2 = document.getElementsByClassName("slide2");
var currentSlide2 = 0;

function showSlide2(n) {
    for (var i = 0; i < slides2.length; i++) {
        slides2[i].classList.remove("active");
    }
    slides2[n].classList.add("active");
}

function nextSlide2() {
    currentSlide2 = (currentSlide2 + 1) % slides2.length;
    showSlide2(currentSlide2);
}

setInterval(nextSlide2, 5000);

showSlide2(currentSlide2);




//////////////////////////////////////////////////////////

//toogle button


document.addEventListener("DOMContentLoaded", function() {
  var toggleButtons = document.querySelectorAll(".toggleButton");

  toggleButtons.forEach(function(button) {
      button.addEventListener("click", function() {
          var additionalInfo = this.nextElementSibling;
          if (additionalInfo.style.display === "none") {
              additionalInfo.style.display = "block";
              this.textContent = "Hide";
          } else {
              additionalInfo.style.display = "none";
              this.textContent = "See More";
          }
      });
  });
});



//////////////////////////////////////////////////////////////



smoothScroll.init();