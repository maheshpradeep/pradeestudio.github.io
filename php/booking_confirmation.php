<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pradee Studio</title>
    <link rel="stylesheet" href="../style/booking.css">
    <link rel="stylesheet" href="../style/booking_now.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
    <script src="../js/booking_now.js"></script>

    <div id="slideshow-container">
        <div class="slide">
            <img src="../images/1.jpg" alt="Slideshow Image">
        </div>
        <div class="slide">
            <img src="../images/2.jpg" alt="Slideshow Image">
        </div>
        <div class="slide">
            <img src="../images/3.jpg" alt="Slideshow Image">
        </div>

    </div>
    <div id="header">
        <div class="container">
            <nav>
                <img src="../images/logo.png" class="logo">
                <ul>
                    <li><a href="../index.html">HOME</a></li>
                    <li><a href="../index.html#about">ABOUT</a></li>
                    <li><a href="../index.html#service">PACKAGES</a></li>
                    <li><a href="../index.html#gallery">GALLERY</a></li>
                    <li><a href="../index.html#contact">CONTACT US</a></li>
                </ul>
            </nav>
           

        </div>
    </div>
    <div class="confirmation-container">
        <?php
        if (isset($_GET['id'])) {
            $bookingId = $_GET['id'];
            echo "<h2>Booking Successful.</h2>";
            echo "<p>Your Booking ID:  $bookingId</p>";
            echo "<h5>Our team will contact you as soon as possible.</h5>";
            
        }
        ?>
    </div>

    <div class="footer-container">
        <div class="copyright">
            <p>All Right Received @ PradeeStudio</p>
        </div>
    </div>
</body>
</html>
