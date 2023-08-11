<?php
require_once 'db_config.php'; // Include your database configuration

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $serviceType = $_POST['serviceType'];
    $package = $_POST['package'];
    $date = $_POST['date'];

    // Insert booking data into the database
    $insertSql = "INSERT INTO bookings (username, servicetype, package, bookingdate) VALUES ('$username', '$serviceType', '$package', '$date')";
    if ($conn->query($insertSql) === TRUE) {
        $lastBookingId = $conn->insert_id; // Get the last inserted booking ID
        header("Location: booking_confirmation.php?id=$lastBookingId"); // Redirect to confirmation page
        exit();
    } else {
        echo "Error: " . $insertSql . "<br>" . $conn->error;
    }
}
?>
