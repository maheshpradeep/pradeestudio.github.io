<?php
require_once 'db_config.php'; 
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $serviceType = $_POST['serviceType'];
    $package = $_POST['package'];
    $date = $_POST['date'];

    
    $insertSql = "INSERT INTO bookings (username, servicetype, package, bookingdate) VALUES ('$username', '$serviceType', '$package', '$date')";
    if ($conn->query($insertSql) === TRUE) {
        $lastBookingId = $conn->insert_id;
        header("Location: booking_confirmation.php?id=$lastBookingId");
        exit();
    } else {
        echo "Error: " . $insertSql . "<br>" . $conn->error;
    }
}
?>
