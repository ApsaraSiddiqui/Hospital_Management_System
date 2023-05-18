<?php
session_start();
//error_reporting(0);
include('include/config.php');
include('include/checklogin.php');

check_login();
if(isset($_POST['submit']))
{
	$davail=$_POST['davail'];
   
    $date=$_POST['date'];
	
	$sql=mysqli_query($con,"Update doctors set availability='$davail',date='$date' where id='".$_SESSION['id']."'");
	if($sql)
	{
		echo "<script>alert(' successfully updated.');</script>";
	}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Doct0r | Edit Doctor Details</title>

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
	<link href="../assets/css/custom.css" rel="stylesheet">
	<body class="nav-md">
		<?php
		$page_title = 'Doctor | Edit Doctor Details';
		$x_content = true;
		?>
<?php include('include/header.php');?>
	<div class="row">
		<div class="col-md-12">
			
				<div class="row margin-top-30">
					<div class="col-lg-8 col-md-12">
						<div class="panel panel-white">
							<div class="panel-heading">
								<h5 class="panel-title">Edit Profile</h5>
							</div>
							<div class="panel-body">
								<?php
								$sql=mysqli_query($con,"select * from doctors where id='".$_SESSION['id']."'");
								while($data=mysqli_fetch_array($sql))
								{
									?>
									<h4><?php echo htmlentities($data['doctorName']);?>'s Profile</h4>
									
									<?php if($data['updationDate']){?>
										<p><b>Profile Last Updation Date: </b><?php echo htmlentities($data['updationDate']);?></p>
									<?php } ?>
									<hr />													
									<form role="form" name="edit" method="post">
										<div class="form-group">
											<label for="fname">
												Doctor Availability
											</label>
											<input type="text" name="davail" class="form-control" value="<?php echo htmlentities($data['availability']);?>" >
										</div>
                                        
                                        <div class="form-group">
											<label for="date">
												Date
											</label>
											<input type="text" name="date" class="form-control" required="required"  value="<?php echo htmlentities($data['date']);?>" >
										</div>
                                        
                                       <div class="form-group">
										<label for="fess">
											Doctor's Timings From
										</label>
										<input type="time" name="dfrom" class="form-control"  readonly="readonly"  value="<?php echo htmlentities($data['from']);?>">
									</div>

									<div class="form-group">
										<label for="fess">
											Doctor's Timings To
										</label>
										<input type="time" name="dto" class="form-control"  readonly="readonly"  value="<?php echo htmlentities($data['to']);?>">
									</div>
                                        
										<button type="submit" name="submit" class="btn btn-o btn-primary">
											Update
										</button>
									</form>
								<?php } ?>
							
						</div>
					</div>
				</div>

			</div></div></div>
			<?php include('include/footer.php');?>
			<!-- jQuery -->
			<script src="../vendors/jquery/dist/jquery.min.js"></script>
			<!-- Bootstrap -->
			<script src="../vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
			<!-- FastClick -->
			<script src="../vendors/fastclick/lib/fastclick.js"></script>
			<!-- NProgress -->
			<script src="../vendors/nprogress/nprogress.js"></script>
			<!-- Chart.js -->
			<script src="../vendors/Chart.js/dist/Chart.min.js"></script>
			<!-- gauge.js -->
			<script src="../vendors/gauge.js/dist/gauge.min.js"></script>
			<!-- bootstrap-progressbar -->
			<script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
			<!-- iCheck -->
			<script src="../vendors/iCheck/icheck.min.js"></script>
			<!-- Skycons -->
			<script src="../vendors/skycons/skycons.js"></script>
			<!-- Flot -->
			<script src="../vendors/Flot/jquery.flot.js"></script>
			<script src="../vendors/Flot/jquery.flot.pie.js"></script>
			<script src="../vendors/Flot/jquery.flot.time.js"></script>
			<script src="../vendors/Flot/jquery.flot.stack.js"></script>
			<script src="../vendors/Flot/jquery.flot.resize.js"></script>
			<!-- Flot plugins -->
			<script src="../vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
			<script src="../vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
			<script src="../vendors/flot.curvedlines/curvedLines.js"></script>
			<!-- DateJS -->
			<script src="../vendors/DateJS/build/date.js"></script>
			<!-- JQVMap -->
			<script src="../vendors/jqvmap/dist/jquery.vmap.js"></script>
			<script src="../vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
			<script src="../vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
			<!-- bootstrap-daterangepicker -->
			<script src="../vendors/moment/min/moment.min.js"></script>
			<script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
			<!-- Custom Theme Scripts -->
			<script src="../assets/js/custom.min.js"></script>
		</body>
		</html>