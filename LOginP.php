<?php

$user = 'root';
$password = " ";


$conn = new mysqli('localhost',$user, $password);


if ($conn->connect_error) {
  die("Connection failed wena motho " . $conn->connect_error);
}
echo "I think the connection is successfully lol";
?>


/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

