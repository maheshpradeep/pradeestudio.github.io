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

//form validation

function validateForm(event) {
  event.preventDefault();

  var name = document.getElementById('name').value;
  var email = document.getElementById('email').value;
  var phone = document.getElementById('phone').value;

  if (name.trim() === '') {
    alert('Please enter your name.');
    return;
  }

  if (!isValidEmail(email)) {
    alert('Please enter a valid email address.');
    return;
  }

  if (!isValidPhone(phone)) {
    alert('Please enter a valid phone number.');
    return;
  }


  alert('Form submitted successfully!');
  document.getElementById('contactForm').reset();
}

function isValidEmail(email) {
  var pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return pattern.test(email);
}

function isValidPhone(phone) {
  var pattern = /^\d{10}$/;
  return pattern.test(phone);
}


smoothScroll.init();