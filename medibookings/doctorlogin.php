<?php
include_once "assets/conn/databaseconnect.php";
session_start();

?>
<html lang="en">
    <head>
        <title>Clinic Appointment Application</title>
      
    </head>
    <body>
<h1>Doctor Login Page</h1>
    <form action ="login.php" method="post">
      
         <input name="doctorEmail" type="text" placeholder="Username (Email)" required>
         <input name="password" type="password" placeholder="Password" required>
         <button type="submit" name="login">Login</button>  

        </form>
          
    </body>
</html>
