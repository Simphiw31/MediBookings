
<?php
// //$con=mysqli_connect("localhost","Simphiwe","Simphiw321@") or die ("could not find database");
// $con=mysqli_connect("localhost","rowot","") or die ("could not find database");
// mysqli_select_db($con,"MedicalBokings");
// if (!$con)
//   {
//   die('Could not connect: ' . mysqli_error);
//   }

 


 $sname= "localhost";
 
 $unmae= "root";
 
 $password = "";
 
 $db_name = "test_db";
 
 $conn = mysqli_connect($sname, $unmae, $password, $db_name);
 
 if (!$conn) {
 
     echo "Connection failed!";
 
 }