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
  
    // Form is valid, submit it or perform other actions
    // Here, you can make an AJAX request to submit the form data
    // or perform any other necessary actions
  
    alert('Form submitted successfully!');
    document.getElementById('contactForm').reset();
  }
  
  function isValidEmail(email) {
    // Email validation regex pattern
    var pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return pattern.test(email);
  }
  
  function isValidPhone(phone) {
    // Phone number validation regex pattern
    var pattern = /^\d{10}$/; // Assumes 10-digit phone number format
    return pattern.test(phone);
  }
  




