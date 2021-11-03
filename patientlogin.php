<?php

$usernameErr= "";
$passwordErr= "";
$username = "";
$password= "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (empty($_POST["username"])) {
    $usernameErr = "Name is required";
  } else {
    $username = test_input($_POST["username"]);
  }
  if (empty($_POST["name"])) {
    $passwordErr = "Password is required";
  } else {
    $password = test_input($_POST["password"]);
  }


}
function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>
<!DOCTYPE html>
<html>
<body>
    <style>
        .error {color: #FF0000;}
        </style>
<h2>Patient Login Page</h2>

<p><span class="error">* required field</span></p>
<form action =" /Project/login/index.php" method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">

Username: <input type="text" name="username">
  <span class="error">* <?php echo $usernameErr;?></span>
  <br><br>
  Password: <input type="password" name="password" value="" />
  <span class="error">* <?php echo $passwordErr;?></span>
  <br><br>
  
<input type="submit" value="SUBMIT" />
</form>

</body>
</html>


