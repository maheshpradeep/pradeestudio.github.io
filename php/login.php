<?php 
session_start(); 
include "db_config.php";

if (isset($_POST['username']) && isset($_POST['password'])) {

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$username = validate($_POST['username']);
	$password = validate($_POST['password']);

	if (empty($username)) {
		header("Location: loging_index.php?error=User Name is required");
	    exit();
	} else if (empty($password)) {
        header("Location: loging_index.php?error=Password is required");
	    exit();
	} else {
		$sql = "SELECT username, password FROM users WHERE username='$username'";

		$result = mysqli_query($conn, $sql);
		
		if (!$result) {
			die("Query failed: " . mysqli_error($conn));
		}

		if (mysqli_num_rows($result) === 1) {
			$row = mysqli_fetch_assoc($result);
            if (password_verify($password, $row['password'])) {
            	$_SESSION['username'] = $row['username'];
            	header("Location: ../pages/booking.html");
		        exit();
            } else {
				header("Location: loging_index.php?error=Incorrect User name or password");
		        exit();
			}
		} else {
			header("Location: loging_index.php?error=Incorrect User name or password");
	        exit();
		}
	}
	
} else {
	header("Location: loging_index.php");
	exit();
}
