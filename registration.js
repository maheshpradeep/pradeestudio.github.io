document.addEventListener("DOMContentLoaded", function() {
    const registrationForm = document.getElementById("registrationForm");
    const usernameInput = document.getElementById("username");
    const messageContainer = document.getElementById("message");
    const submitButton = document.getElementById("submitButton");

    
    async function checkUsername() {
        const username = usernameInput.value;

        
        const response = await fetch(`check_username.php?username=${encodeURIComponent(username)}`);
        const data = await response.json();

        if (data.exists) {
            messageContainer.textContent = "Username already exists. Please choose a different username.";
            submitButton.disabled = true; 
        } else {
            messageContainer.textContent = ""; 
            submitButton.disabled = false; 
        }
    }


    
    usernameInput.addEventListener("input", checkUsername);

    
    registrationForm.addEventListener("submit", async function(event) {
        event.preventDefault(); 
        checkUsername(); 

        if (!submitButton.disabled) {
            registrationForm.submit(); 
        }
    });
});
