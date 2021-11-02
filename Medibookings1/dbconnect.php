


<?php
$con = mysqli_connect("localhost","root","","MediBookings");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  ?>
<?php
include_once 'dbconnect.php';


if (isset($_POST['SignUp'])) {
$patientId     = mysqli_real_escape_string($con,$_POST['patient_id']);
$patientFirstName = mysqli_real_escape_string($con,$_POST['patientFirstName']);
$patientLastName  = mysqli_real_escape_string($con,$_POST['patientLastName']);
$patientStreetAddress  = mysqli_real_escape_string($con,$_POST['patientStreetAddress']);
$patientPhone  = mysqli_real_escape_string($con,$_POST['patientPhone']);
$cityZipCode  = mysqli_real_escape_string($con,$_POST['cityZipCode']);
$provinceZipCode  = mysqli_real_escape_string($con,$_POST['provinceZipCode']);
$patientGender  = mysqli_real_escape_string($con,$_POST['patientGender']);

$patientEmail     = mysqli_real_escape_string($con,$_POST['patientEmail']);
$patientEmail = trim($patientEmail);
$password        = mysqli_real_escape_string($con,$_POST['patientPassword']);
//$confirm_password = mysqli_real_escape_string($con,$_POST['confirm_password']);
//$gender = mysqli_real_escape_string($con,$_POST['gender']);

    $query = " INSERT INTO patient (  patient_id, patientPassword, patientFirstName, patientLastName,   patientEmail )
    VALUES ( '$patientId', '$password', '$patientFirstName', '$patientLastName','$patientGender', '$patientEmail','$cityZipCode','$provinceZipCode','$patientStreetAddress','$patientPhone' ) ";
   $result = mysqli_query($con, $query);
}
   ?>



<!-- cooment
<?php


// Create connection
$conn = mysqli_connect("localhost","root","","MediBookings");
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

?>


<?php
include_once 'dbconnect.php';


if (isset($_POST['SignUp'])) {
$patientId     = mysqli_real_escape_string($con,$_POST['patient_id']);
$patientFirstName = mysqli_real_escape_string($con,$_POST['patientFirstName']);
$patientLastName  = mysqli_real_escape_string($con,$_POST['patientLastName']);
$patientStreetAddress  = mysqli_real_escape_string($con,$_POST['patientStreetAddress']);
$patientPhone  = mysqli_real_escape_string($con,$_POST['patientPhone']);
$cityZipCode  = mysqli_real_escape_string($con,$_POST['cityZipCode']);
$provinceZipCode  = mysqli_real_escape_string($con,$_POST['provinceZipCode']);
$patientGender  = mysqli_real_escape_string($con,$_POST['patientGender']);

$patientEmail     = mysqli_real_escape_string($con,$_POST['patientEmail']);
$patientEmail = trim($patientEmail);
$password        = mysqli_real_escape_string($con,$_POST['patientPassword']);
//$confirm_password = mysqli_real_escape_string($con,$_POST['confirm_password']);
//$gender = mysqli_real_escape_string($con,$_POST['gender']);

    $query = " INSERT INTO patient (  patient_id, patientPassword, patientFirstName, patientLastName,   patientEmail )
    VALUES ( '$patientId', '$password', '$patientFirstName', '$patientLastName','$patientGender', '$patientEmail','$cityZipCode','$provinceZipCode','$patientStreetAddress','$patientPhone' ) ";
   $result = mysqli_query($con, $query);
}
   ?>
-->

