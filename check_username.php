<?php
require_once 'db_config.php'; // Include your database connection

if (isset($_GET['username'])) {
    $username = $_GET['username'];

    $checkUsernameSql = "SELECT COUNT(*) AS count FROM users WHERE username = '$username'";
    $checkUsernameResult = $conn->query($checkUsernameSql);

    if ($checkUsernameResult && $checkUsernameResult->num_rows > 0) {
        $checkUsernameRow = $checkUsernameResult->fetch_assoc();
        $usernameExists = ($checkUsernameRow['count'] > 0);
    } else {
        $usernameExists = false;
    }

    // Return a JSON response
    header('Content-Type: application/json');
    echo json_encode(['exists' => $usernameExists]);
}
?>
