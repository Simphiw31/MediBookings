<?php

echo "<h2>Login</h2>";
echo "<h3>".$_SESSION['MESSAGE']."</h3>";
?>
<form action = "loginUser.php" method="POST">
<table>
<tr>
<td>Username</td><td><input type=text name=username></td></tr>
<tr><td>Password</td><td><input type=password name=password></td></tr>
</table>
<br>
<input type=submit value=Login>
<br>
<!--<a href='register.php'>Register</a>-->
</form>