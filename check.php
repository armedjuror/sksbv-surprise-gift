<?php
include "setup.php";

$task_count = mysqli_query($con, "SELECT id FROM pd_tasks")->num_rows;
if ($_GET['id']){
    $username = $_GET['name'];
    header('location: congrats.php?user='.$username);
    }else{
        echo $update->error;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Surprise Gift | SKSBV</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" href="images/logo.png" type="image/x-icon">
</head>
<body>

<div class="main">

    <!-- Sign up form -->
    <section class="signup">
        <div class="container">
            <div class="signup-content">
                <div class="signup-form">
                    <h2 class="form-title">SKSBV Surprise Gift</h2>
                    <form method="GET" class="register-form" id="register-form">
                        <input type="number" name="id" id="id" style="display: none;" value="1">
                        <div class="form-group">
                            <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="name" id="name" placeholder="Your Id"/>
                        </div>
                        <div class="form-group form-button">
                            <input type="submit" name="signup" id="signup" class="form-submit" value="Load My Task"/>
                        </div>
                    </form>
                </div>
                <div class="signup-image">
                    <figure><img src="images/signup-image.jpg" alt="sing up image"></figure>
                    <a href="register.php?id=0" class="signup-image-link">Register another</a>
                </div>
            </div>
        </div>
    </section>
</div>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>
