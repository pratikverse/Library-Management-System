<?php
$conn = mysqli_connect('localhost','root','password','library');
if($conn==TRUE)
	//echo "suce";
if ($conn->connect_error) {
    die("Error");
echo "error";
} 
?>