<?php
require_once 'db_config.php';

$message = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Check if username already exists
    $checkUsernameSql = "SELECT COUNT(*) AS count FROM users WHERE username = '$username'";
    $checkUsernameResult = $conn->query($checkUsernameSql);

    if ($checkUsernameResult && $checkUsernameResult->num_rows > 0) {
        $checkUsernameRow = $checkUsernameResult->fetch_assoc();
        if ($checkUsernameRow['count'] > 0) {
            $message = "Username already exists. Please choose a different username.";
        } else {
            $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

            $insertSql = "INSERT INTO users (username, email, password) VALUES ('$username', '$email', '$hashedPassword')";
            if ($conn->query($insertSql) === TRUE) {
                header("Location:pages/loging_index.html");
                exit;
            } else {
                $message = "Error: " . $insertSql . "<br>" . $conn->error;
            }
        }
    }
}
?>
