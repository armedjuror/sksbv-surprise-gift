<?php
include 'setup.php';
$user = $_GET['user'];
if ($user){
    $query = "SELECT pd_participants.username AS username, pd_participants.task AS task, pd_tasks.title AS title, pd_tasks.description AS description FROM pd_participants LEFT JOIN pd_tasks ON pd_participants.task = pd_tasks.id WHERE pd_participants.username='$user'";
    $load_task = mysqli_query($con, $query);
    $task = mysqli_fetch_array($load_task);
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
                <div class="signin-image">
                    <figure><img src="images/gift.png" alt="sing up image"></figure>
                    <a href="check.php?id=0" class="signup-image-link">Check another</a>
                    <a href="register.php?id=0" class="signup-image-link">Register another</a>
                    <h3>നിർദേശങ്ങൾ :</h3>
                    <p>രക്ഷാകർതൃ ദിനത്തിലെ സർപ്രൈസ്‌ ചലഞ്ചിൽ വീട്ടിലുള്ള മുഴുവൻ ആളുകളെയും ഒരുപോലെ ഉൾപ്പെടുത്തണം. വാപ്പ , ഉമ്മ , വല്ലിപ്പ ,വല്ലിമ്മ, എല്ലാവരെയും. വിദേശത്തുള്ള ഉപ്പയെ ഫോണിൽ ബന്ധപെട്ടു മധുര ചുംബനം കൈമാറണം. മരണപ്പെട്ടവർക്ക് വേണ്ടി പ്രത്യേക ദുആ ചെയ്യാനും മറക്കരുത്.</p>
                    <p>പല തിരക്കുകളിലും ആയിരിക്കും നമ്മുടെ രക്ഷിതാക്കൾ, അവരോടു അവരുടെ ഒഴിവു സമയം ചോദിച്ചു മനസ്സിലാകുകയും നമ്മുടെ പ്രവർത്തങ്ങൾക്ക് പറ്റിയ സമയങ്ങളിൽ അവരോടു ഫ്രീ ആയിരിക്കാൻ പറയുകയും ചെയ്യണം.</p>
                </div>
                <div class="signup-form">
                    <h2 class="form-title">Masha Allah!</h2>
                    <div class="form-group">
                        <h1>Your id : <?php echo $task['username']; ?></h1>
                        <h1>(ഈ യൂസര്‍ ഐഡി കുറിച്ചു വെക്കുക. ഭാവിയില്‍ ആവശ്യം വന്നേക്കാം)</h1>
                        <h1>Your Task :</h1>
                        <h2><?php echo $task['title'];?></h2>
                        <p><?php echo $task['description']?></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>
