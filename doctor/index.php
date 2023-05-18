<?php
session_start();
include("include/config.php");
error_reporting(0);
if(isset($_POST['submit']))
{
	$ret=mysqli_query($con,"SELECT * FROM doctors WHERE docEmail='".$_POST['username']."' and password='".md5($_POST['password'])."'");
	$num=mysqli_fetch_array($ret);
	if($num>0)
	{
		$extra="dashboard.php";
		$_SESSION['dlogin']=$_POST['username'];
		$_SESSION['id']=$num['id'];
		$_SESSION['doctorName']=$num['doctorName'];
		$uip=$_SERVER['REMOTE_ADDR'];
		$status=1;
		$log=mysqli_query($con,"insert into doctorslog(uid,username,userip,status) values('".$_SESSION['id']."','".$_SESSION['dlogin']."','$uip','$status')");
		$host=$_SERVER['HTTP_HOST'];
		$uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
		header("location:http://$host$uri/$extra");
		exit();
	}
	else
	{
		$host  = $_SERVER['HTTP_HOST'];
		$_SESSION['dlogin']=$_POST['username'];
		$uip=$_SERVER['REMOTE_ADDR'];
		$status=0;
		mysqli_query($con,"insert into doctorslog(username,userip,status) values('".$_SESSION['dlogin']."','$uip','$status')");
		$_SESSION['errmsg']="Invalid username or password";
		$extra="index.php";
		$uri  = rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
		header("location:http://$host$uri/$extra");
		exit();
	}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Doctor Login</title>
	<!-- Bootstrap -->
	<link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Font Awesome -->
	<link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- NProgress -->
	<link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
	<!-- iCheck -->
	<link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
	<!-- bootstrap-progressbar -->
	<link href="../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
	<!-- JQVMap -->
	<link href="../vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
	<!-- bootstrap-daterangepicker -->
	<link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
	<!-- Custom Theme Style -->
	<link href="../assets/css/custom.min.css" rel="stylesheet">

	
</head>
<body class="login">
<nav class="navbar navbar-expand-lg navbar-inverse bg-dark" id="mainNav" >
    <div class="container">

      <a class="navbar-brand js-scroll-trigger" href="../main.php" style="margin-top: 10px;margin-left:-65px;font-family: 'IBM Plex Sans', sans-serif;"><h4><i class="fa fa-user-plus" aria-hidden="true"></i>&nbspCARE</h4></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item" style="margin-right: 40px;">
            <a class="nav-link js-scroll-trigger" href="../main.php" style="color: white;font-family: 'IBM Plex Sans', sans-serif;"><h6>HOME</h6></a>
          </li>
  
		  <li class="nav-item" style="margin-right: 40px;">
            <a class="nav-link js-scroll-trigger" href="../index.php" style="color: white;font-family: 'IBM Plex Sans', sans-serif;"><h6>PATIENT</h6></a>
          </li>

          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="../admin/index.php" style="color: white;font-family: 'IBM Plex Sans', sans-serif;"><h6>ADMIN</h6></a>
          </li>
          
        </ul>
      </div>
    </div>
  </nav><div>
		<a class="hiddenanchor" id="signup"></a>
		<a class="hiddenanchor" id="signin"></a>
		<div class="login_wrapper">
			<div class="animate form login_form">
				<section class="login_content">
					<div class="box-login">
						<form class="form-login" method="post">
							<fieldset>
								<legend>
									CARE <br/>
									Doctor Login
								</legend>
								<p>
									Please enter your name and password to log in.<br />
									<span style="color:red;"><?php echo $_SESSION['errmsg']; ?><?php echo $_SESSION['errmsg']="";?></span>
								</p>
								<div class="form-group">
									<span class="input-icon">
										<input type="text" class="form-control" name="username" placeholder="Username">
									</div>
									<div class="form-group form-actions">
										<span class="input-icon">
											<input type="password" class="form-control password" name="password" placeholder="Password">
										</span>
										<a href="forgot-password.php">
											Forgot Password ?
										</a>
									</div>
									<div class="form-actions">
										<button type="submit" class="btn btn-primary pull-right" name="submit">
											Login <i class="fa fa-arrow-circle-right"></i>
										</button>
									</div>
								</fieldset>
							</form>
							<div class="copyright">
								&copy; <span class="current-year"></span><span class="text-bold text-uppercase"> CARE</span>. <span>All rights reserved</span>
							</div>
						</div>
					</div>
				</body>
				<!-- end: BODY -->
				</html>