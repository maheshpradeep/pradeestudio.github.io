document.addEventListener("DOMContentLoaded", function() {
    const registrationForm = document.getElementById("registrationForm");
    const usernameInput = document.getElementById("username");
    const messageContainer = document.getElementById("message");
    const submitButton = document.getElementById("submitButton");

    // Function to check the username
    async function checkUsername() {
        const username = usernameInput.value;

        // Check if the username already exists
        const response = await fetch(`check_username.php?username=${encodeURIComponent(username)}`);
        const data = await response.json();

        if (data.exists) {
            messageContainer.textContent = "Username already exists. Please choose a different username.";
            submitButton.disabled = true; // Disable the submit button
        } else {
            messageContainer.textContent = ""; // Clear any existing message
            submitButton.disabled = false; // Enable the submit button
        }
    }


    // Add an event listener to the username input field
    usernameInput.addEventListener("input", checkUsername);

    // Add an event listener to the form submission
    registrationForm.addEventListener("submit", async function(event) {
        event.preventDefault(); // Prevent form submission
        checkUsername(); // Check the username before submitting

        if (!submitButton.disabled) {
            registrationForm.submit(); // Submit the form if the button is enabled
        }
    });
});
