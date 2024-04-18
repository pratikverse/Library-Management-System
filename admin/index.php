<?php
require_once('connect.php');
session_start();
if(isset($_SESSION['key'])==1){
	
	header('Location:home.php');
}
else{
	header('Location:login.php');
}