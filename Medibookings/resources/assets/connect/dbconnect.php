
<?php
$con=mysqli_connect("localhost","Simphiwe","Simphiw321@") or die ("could not find database");
mysqli_select_db($con,"MedicalBokings");
if (!$con)
  {
  die('Could not connect: ' . mysqli_error);
  }


