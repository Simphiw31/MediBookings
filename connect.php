<?php

$con = mysqli_connect("localhost","root","","medibookings");

//Check Connection
if (mysqli_connect_error()) {
    
    echo"Failed to connect".mysqli_connect_error();
}
?>

