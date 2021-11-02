<?php
include_once 'assets/conn/databaseconnect.php';

session_start();
if (isset($_POST['login'])){

$doctorEmail = mysqli_real_escape_string($con,$_POST['doctorEmail']);
$password  = mysqli_real_escape_string($con,$_POST['password']);
$res = mysqli_query($con,"SELECT * FROM doctor WHERE doctorEmail = '$doctorEmail'");

$row=mysqli_fetch_array($res,MYSQLI_ASSOC);

if ($row['doctorPassord'] == $password && $row['doctorEmail'] == $doctorEmail)
{
    
?>
<script type="text/javascript">
alert('Login Success');
</script>
<?php

} else {
  
?>
<script type="text/javascript">
    alert("Invalid inputs");
    header("Location: doctorlogin.php");
  
</script>
<?php

?>

<?php
}


}

?>
