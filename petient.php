<?php
        if (isset($_POST['SignUp']))
        {
            $firstname = $_POST['patientFirstName'];
            $lastname = $_POST['patientLastName'];
            $email = $_POST['patientEmail']; 
            $phonenumber = $_POST['patientPhone'];
            $password = $_POST['patientPassword'];
            $patientStreetAddress = $_POST['patientStreetAddress'];
            $patientGender=$_POST['patientGender'];
            $cityZipCode=$_POST['cityZipCode'];
            $provinceZipCode=$_POST['provinceZipCode'];
            

            echo "Name: " .$firstname. "<br> Surname: ".$lastname."<br>Email: ".$email."<br>Phone Number: ".$phonenumber."<br>Password: ".$password;
        }

        ?>
