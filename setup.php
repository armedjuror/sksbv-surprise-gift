<?php
$con = mysqli_connect('localhost', 'root', '', 'sksbv_parentsday');
mysqli_set_charset($con, 'utf8');
if ($con->error){
    echo $con->error;
}


$update = mysqli_connect('localhost', 'root', '', 'sksbvupdate');
mysqli_set_charset($update, 'utf8');
