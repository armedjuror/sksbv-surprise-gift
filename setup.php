<?php
$con = mysqli_connect('localhost', 'root', '', 'sksbv_parentsday');
mysqli_set_charset($con, 'utf8');
if ($con->error){
    echo $con->error;
}

<<<<<<< HEAD

=======
>>>>>>> 4c40b937bc8e44a90c46e666d68889895e7b4a9f

$update = mysqli_connect('localhost', 'root', '', 'sksbvupdate');
mysqli_set_charset($update, 'utf8');
