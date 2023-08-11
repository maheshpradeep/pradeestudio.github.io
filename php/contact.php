<?php 
session_start(); 
include "db_config.php";

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$name = $_POST['name'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$message = $_POST['msg'];

$sql = "INSERT INTO message (name, email, phone, msg) VALUES ('$name','$email', '$phone', '$message')";

if ($conn->query($sql) === TRUE) {
    // Set the success message in a session variable
    $_SESSION['success_message'] = "Query successfully Submitted. Thank you";

    // Redirect to the home page
    header("Location: ../pages/thankcon.html");
    exit; // It's important to add 'exit' after the header() function to prevent further execution of the script
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
