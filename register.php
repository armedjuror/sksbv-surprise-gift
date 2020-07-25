<?php
include "setup.php";

$task_count = mysqli_query($con, "SELECT id FROM pd_tasks")->num_rows;
if ($_GET['id']){
    $name = $_GET['name'];
    $mad_reg = $_GET['madno'];
    $username = uniqid('sksbv_');
    $details = mysqli_query($update, "SELECT madregister.rangeno AS rno,rangenames.rname AS rname, rangenames.district AS dist FROM madregister
INNER JOIN rangenames ON
madregister.rangeno = rangenames.rno
WHERE madregister.madno = '$mad_reg';");
    if ($details){
        $range = mysqli_fetch_array($details);
        $range_no = $range['rno'];
        $range_name = $range['rname'];
        $district = $range['dist'];
        $task = rand(1,$task_count);
        $query = mysqli_query($con, "INSERT INTO pd_participants (username, name, mad_no, range_no, range_name, district, task)
        VALUES 
               ('$username', '$name', '$mad_reg', '$range_no', '$range_name', '$district', '$task');");
        if ($query){
            header('location: congrats.php?user='.$username);
        }else{
            echo $con->error;
        }
    }else{
        echo $update->error;
    }
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
                        <div class="form-group">
                            <p>ലോക രക്ഷാകർത്യ ദിനാചരണം എസ് കെ എസ് ബി വി സ്റ്റേറ്റ് കമ്മിറ്റി സംഘടിപ്പിക്കുന്ന സർപ്രൈസ് ഗിഫ്റ്റിലേക്ക് സ്വാഗതം....</p>
                            <p>നിങ്ങൾക്ക് ലഭിച്ചിട്ടുള്ള സർപ്രൈസ് ടാസ്ക് അറിയുന്നതിനു വേണ്ടി നിങ്ങളുടെ പേരും മദ്രസയുടെ നമ്പറും നൽകി റെജിസ്റ്റര്‍ ചെയ്യുക.</p>
                            </div>
                        <input type="number" name="id" id="id" style="display: none;" value="1">
                        <div class="form-group">
                            <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="name" id="name" placeholder="Your Name"/>
                        </div>
                        <div class="form-group">
                            <label for="madno"><i class="zmdi zmdi-local-convenience-store"></i></label>
                            <input type="number" name="madno" id="madno" placeholder="Madrasa SKIMVB Register Number"/>
                        </div>
                        <div class="form-group form-button">
                            <input type="submit" name="signup" id="signup" class="form-submit" value="Get My Task"/>
                        </div>
                    </form>
                </div>
                <div class="signup-image">
                    <figure><img src="images/signup-image.jpg" alt="sing up image"></figure>
                    <a href="check.php?id=0" class="signup-image-link" style="text-decoration: none;">Forgot your Tasks?</a>
                </div>
            </div>
        </div>
    </section>
</div>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>
