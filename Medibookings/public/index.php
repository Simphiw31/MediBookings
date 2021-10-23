 <?php
include_once '../resources/assets/connnect/dbconnect.php';


if (isset($_POST['SignUp'])) {
$patientId     = mysqli_real_escape_string($con,$_POST['patient_id']);
$patientFirstName = mysqli_real_escape_string($con,$_POST['patientFirstName']);
$patientLastName  = mysqli_real_escape_string($con,$_POST['patientLastName']);
$patientEmail     = mysqli_real_escape_string($con,$_POST['patientEmail']);
$patientEmail = trim($patientEmail);
$password         = mysqli_real_escape_string($con,$_POST['patientPassword']);
//$confirm_password = mysqli_real_escape_string($con,$_POST['confirm_password']);
//$gender = mysqli_real_escape_string($con,$_POST['gender']);

    $query = " INSERT INTO patient (  patient_id, patientPassword, patientFirstName, patientLastName,   patientEmail )
    VALUES ( '$patientId', '$password', '$patientFirstName', '$patientLastName', '$patientEmail' ) ";
   $result = mysqli_query($con, $query);
}
   ?>

<!DOCTYPE html>
<html>
    <head>
        <title>User Registrtion page </title>
    </head>
    <body>
        <div>
        <!-- <?php
        if (isset($_POST['create']))
        {
            $firstname = $_POST['patientFirstName'];
            $laststname = $_POST['patientLastName'];
            $email = $_POST['patientEmail']; 
            $phonenumber = $_POST['patientPhone'];
            $password = $_POST['patientPassword'];

            echo $firstname. " ".$lastname." ".$email." ".$phonenumber." ".$password;
        }

        ?> -->
        
    <div>
        <div>
            <form action="../resources/views/patient.php" method="post">
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
                
                <label for="patientEmail"><b>Email Address</b></label>
                <input class="form-control" type ="email" name= "patientEmail" required><br>
                
                <label for="patientPhone"><b>Phone number</b></label>
                <input class="form-control" type ="text" name= "patientPhone" required><br>
                
                <label for="patientPassword"><b>Password</b></label>
                <input class="form-control" type ="password" name= "patientPassword" required>
                
                <br class="col-sm-3">
                <input class="btn btn-primary" type="submit" name="SignUp" value="Sign up">
              
        </div>
    </div>
    </div>
                
            </form>
        </div>
    </body>
</html