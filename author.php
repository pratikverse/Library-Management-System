<?php
include('connect.php');
session_start();
include 'header.php';
include('navbar.php');?>
    <!-- login area start -->
    <div class="login-area">
        <div class="container">
            <div class="login-box ptb--100"> 
            	<form name="login_form" method="post" style="width: 850px;""> 
                <div style="font-size: 20px; padding: 5%;">
        Name : <b>Pratik and Saksham</b><br>
				Email : <b>kpratik653@gmail.com</b><br>
				Contact : <b>+919910360790</b><br>
				Address  : <b>Dwarka New Delhi</b><br><br>
				<br><br>
				Note : <b><mark>This is for WEBTECH and RDBMS Project</mark> </b><br>
				</div>

    </form>
            </div>
        </div>
    </div>
    <!-- login area end -->
    <?php include('footer.php');?>