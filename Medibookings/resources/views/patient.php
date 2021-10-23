<?php
        if (isset($_POST['SignUp']))
        {
            $firstname = $_POST['patientFirstName'];
            $laststname = $_POST['patientLastName'];
            $email = $_POST['patientEmail']; 
            $phonenumber = $_POST['patientPhone'];
            $password = $_POST['patientPassword'];

            echo "Name: " .$firstname. "<br> Surname: ".$lastname."<br>Email: ".$email."<br>Phone Number: ".$phonenumber."<br>Password: ".$password;
        }

        ?>