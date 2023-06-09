<?php
session_start();
//error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();
if(isset($_POST['submit']))
{
	$pname=$_POST['pname'];
	$dname=$_POST['dname'];
	$ddetail=$_POST['ddetail'];
	
	$query=mysqli_query($con,"insert into appoint(pname,dname,ddetail) values('$pname','$dname','$ddetail')");
	if($query)
	{
		echo "<script>alert('Your appointment successfully booked');</script>";
	}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Patient  | Book Appointment</title>
	<!-- Bootstrap -->
	<link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Font Awesome -->
	<link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- NProgress -->
	<link href="vendors/nprogress/nprogress.css" rel="stylesheet">
	<!-- iCheck -->
	<link href="vendors/iCheck/skins/flat/green.css" rel="stylesheet">
	<!-- bootstrap-progressbar -->
	<link href="vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
	<!-- JQVMap -->
	<link href="vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
	<!-- bootstrap-daterangepicker -->
	<link href="vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
	<!-- Custom Theme Style -->
	<link href="assets/css/custom.min.css" rel="stylesheet">
	<script>
		function getdoctor(val) {
			$.ajax({
				type: "POST",
				url: "get_doctor.php",
				data:'specilizationid='+val,
				success: function(data){
					$("#doctor").html(data);
				}
			});
		}
	</script>
	<script>
		function getfee(val) {
			$.ajax({
				type: "POST",
				url: "get_doctor.php",
				data:'doctor='+val,
				success: function(data){
					$("#fees").html(data);
				}
			});
		}
	</script>
</head>
<body class="nav-md">
	<?php
	$page_title = 'User | Book Appointment';
	$x_content = true;
	?>
	<?php include('include/header.php');?>
	<div class="row">
		<div class="col-md-12">
			<div class="row margin-top-30">
				<div class="col-lg-8 col-md-12">
					<div class="panel panel-white">
						<div class="panel-heading">
							<h5 class="panel-title">Book Appointment</h5>
						</div>
						<div class="panel-body">
							<!-- <p style="color:red;"><?php echo htmlentities($_SESSION['msg1']);?> -->
							<?php echo htmlentities($_SESSION['msg1']="");?></p>
							<form role="form" name="book" method="post" >
							<div class="form-group">
									<label for="pname">
										Patient Name
									</label>
									<input type="text" name="pname" class="form-control" name="pname"  required="required" >
								</div>
								<div class="form-group">
									<label for="doctor">
										Doctors
										
									</label>
									
										
										<input type="text" name="dname" class="form-control" name="dname"  required="required" >
										<?php $ret=mysqli_query($con,"select * from doctors");
										while($row=mysqli_fetch_array($ret))
										{
											?>
											<option value="<?php echo htmlentities($row['doctorName']);?>">
												<?php echo htmlentities($row['doctorName']);?>
												
											</option>
										<?php } ?>
									
								</div>
								<div class="form-group">
									<label for="Availability">
										Availability
									</label>
									
									<input type="text" name="ddetail" class="form-control" name="ddetail"  required="required" >
										<?php $ret=mysqli_query($con,"select * from doctors");
										while($row=mysqli_fetch_array($ret))
										{
											?>
											<option value="<?php echo htmlentities($row['doctorName']);?>">
												<?php echo htmlentities($row['doctorName']);?><?php echo  "___"?>
												<?php echo htmlentities($row['specilization']);?><?php echo  "___"?>
												<?php echo htmlentities($row['date']);?><?php echo  "___"?>
												<?php echo htmlentities($row['from']);?><?php echo  " -"?>
												<?php echo htmlentities($row['to']);?>
											</option>
										<?php } ?>
									
								</div>
								
								
								<button type="submit" name="submit" class="btn btn-o btn-primary">
									Submit
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<?php include('include/footer.php');?>
	<!-- jQuery -->
	<script src="vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<!-- FastClick -->
	<script src="vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="vendors/nprogress/nprogress.js"></script>
	<!-- Chart.js -->
	<script src="vendors/Chart.js/dist/Chart.min.js"></script>
	<!-- gauge.js -->
	<script src="vendors/gauge.js/dist/gauge.min.js"></script>
	<!-- bootstrap-progressbar -->
	<script src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
	<!-- iCheck -->
	<script src="vendors/iCheck/icheck.min.js"></script>
	<!-- Skycons -->
	<script src="vendors/skycons/skycons.js"></script>
	<!-- Flot -->
	<script src="vendors/Flot/jquery.flot.js"></script>
	<script src="vendors/Flot/jquery.flot.pie.js"></script>
	<script src="vendors/Flot/jquery.flot.time.js"></script>
	<script src="vendors/Flot/jquery.flot.stack.js"></script>
	<script src="vendors/Flot/jquery.flot.resize.js"></script>
	<!-- Flot plugins -->
	<script src="vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
	<script src="vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
	<script src="vendors/flot.curvedlines/curvedLines.js"></script>
	<!-- DateJS -->
	<script src="vendors/DateJS/build/date.js"></script>
	<!-- JQVMap -->
	<script src="vendors/jqvmap/dist/jquery.vmap.js"></script>
	<script src="vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
	<script src="vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
	<!-- bootstrap-daterangepicker -->
	<script src="vendors/moment/min/moment.min.js"></script>
	<script src="vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- Custom Theme Scripts -->
	<script src="assets/js/custom.min.js"></script>
</body>