function submitForm(event) {
    event.preventDefault();

    var form = event.target;
    var formData = new FormData(form);

    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                // Handle the JSON response
                var response = JSON.parse(xhr.responseText);
                if (response.success) {
                    // Success: Display the response message in a popup
                    alert(response.message);
                    form.reset(); // Optionally, reset the form after successful submission
                } else {
                    // Error: Display the error message in a popup
                    alert(response.message);
                }
            } else {
                // Error: Display the error message in a popup
                alert('Error: Unable to submit the form.');
            }
        }
    };

    xhr.open('POST', form.action, true);
    xhr.send(formData);
}

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

    // Form is valid, submit it using AJAX
    submitForm(event);
}

function isValidEmail(email) {
    var pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return pattern.test(email);
}

function isValidPhone(phone) {
    var pattern = /^\d{10}$/;
    return pattern.test(phone);
}

document.getElementById('contactForm').addEventListener('submit', validateForm);

