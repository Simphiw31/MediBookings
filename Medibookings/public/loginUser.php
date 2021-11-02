<?php

include '../resources/assets/connnect/dbconnect.php';
session_start();

$_SESSION['admin_id'] = '';
$username = filter_input(INPUT_POST, 'username');    //$_GET['username']
$password = MD5(filter_input(INPUT_POST, 'password'));


// Not good approach ito sql injection try it yourself
//$qry = "SELECT l.lect_staffnr, u.user_name, u.user_password FROM `tbllecturer` l, tbluser u WHERE l.user_name = u.user_name ";
//$qry .= " AND u.user_name = '$username' ";
//$qry .= " AND u.user_password = '$password'";
//echo $qry;
//this for determining lecturer staff nr
$qry = "SELECT admin_id, adminEmail, adminPassword FROM `Admin` a ";
$qry .= " WHERE adminEmail = ? ";
$qry .= " AND adminPassword = ?";


$stmt = mysqli_prepare($con, $qry);
mysqli_stmt_bind_param($stmt, 'ss', $username, $password);
mysqli_stmt_execute($stmt);


mysqli_stmt_bind_result($stmt, $staff, $user, $pass);
mysqli_stmt_fetch($stmt);
//echo $user;
if ($user != '') {   //there was actually such a record

    $_SESSION['USERID'] = $staff;
    $_SESSION['MESSAGE'] = '';
    //$_SESSION['ROLE'] = 'Lecturer';
    //include 'dispLectSubs.php';
    echo "Succesfully";
}
// } else {
//     $_SESSION['USERID'] = ''; //now try to see if student
//     $qry = "SELECT st_studnr, st_surname, s.user_name, u.user_password FROM `tblstudent` s, ";
//     $qry .= " tbluser u WHERE s.user_name = u.user_name ";
//     $qry .= " AND u.user_name = ? ";
//     $qry .= " AND u.user_passwordMD5 = ?";
//     //echo $qry;

//     $stmt1 = mysqli_prepare($con,$qry);
//     mysqli_stmt_bind_param($stmt1, 'ss', $username, $password);
//     mysqli_stmt_execute($stmt1);
//     mysqli_stmt_bind_result($stmt1, $student, $surname, $user, $pass);
//     mysqli_stmt_fetch($stmt1);


//     if ($user != '') {

//         $_SESSION['USERID'] = $student;
//         $_SESSION['MESSAGE'] = 'student logged on';
//         $_SESSION['ROLE'] = 'Student';
//         include 'dispStudSubs.php';
      else {
         $_SESSION['MESSAGE'] = 'Login - retry';
         include 'index2.php';
     }
 