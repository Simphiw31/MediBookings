<?php
include_once 'dbconnect.php';



   ?>

<!DOCTYPE html>
<html>
    <head>
        <title>User Registration page </title>
    </head>
    <body>
        
    <div>
        <div>
            <form action="petient.php" method="post">
                <div class="container "> 
                <div class="row">
                 <div class="col-sm-3">
            
                <h1> Registration</h1>
                <p1> fill up your details </p1><br>
                
                <label for="patient_id"><b>ID Numbers</b></label>
                <input class="form-control" type ="text" name= "patient_id" required><br>

                <label for="patientFirstName"><b>First Name</b></label>
                <input class="form-control" type ="text" name= "patientFirstName" required><br>
                
                <label for="patientLastName"><b>Last Name</b></label>
                <input class="form-control" type ="text" name= "patientLastName" required><br>
                
                <label for="patientGender"><b>Gender </b></label>
                <input class="form-control" type ="text" name= "patientGender" required><br>
                
                <label for="patientStreetAddress"><b>Street Address</b></label>
                <input class="form-control" type ="text" name= "patientStreetAddress" required><br>
                
                <label for="patientEmail"><b>Email Address</b></label>
                <input class="form-control" type ="email" name= "patientEmail" required><br>
                
                <label for="patientPhone"><b>Phone number</b></label>
                <input class="form-control" type ="text" name= "patientPhone" required><br>
                
                 <label for="cityZipCode"><b>City Zip Code</b></label>
                <input class="form-control" type ="text" name= "cityZipCode" required><br>
                
                 <label for="provinceZipCode"><b>Province Zip Code</b></label>
                <input class="form-control" type ="text" name= "provinceZipCode" required><br>
                
                <label for="patientPassword"><b>Password</b></label>
                <input class="form-control" type ="password" name= "patientPassword" required>
                
                <br class="col-sm-3">
                <input class="btn btn-primary" type="submit" name="SignUp" value="Sign up">
              
        </div>
                    <p>
  		Already a member? <a href="login.php">Sign in</a>
  	</p>
    </div>
    </div>
                
            </form>
        </div>
    </body>
</html