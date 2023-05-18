<div class="container body">
	<div class="main_container">
		<!-- page content -->
		<div class="col-md-3 left_col">
			<div class="left_col scroll-view">
				<div class="navbar nav_title" style="border: 0;">
					<a href="dashboard.php" class="site_title"><i class="fa fa-hospital-o"></i> <span>CARE</span></a>
				</div>
				<div class="clearfix"></div>
				<!-- menu profile quick info -->
				<div class="profile clearfix">
					<div class="ml-2 text-light">We care for you!</div>
					<div class="profile_pic">
						
					</div>
					<div class="profile_info">
						<span>Welcome,</span>
						<h2><?php echo $_SESSION['fullName']; ?></h2>
					</div>
				</div>
				<!-- /menu profile quick info -->
				<br />
				<?php include('include/sidebar.php');?>
				<!-- /sidebar menu -->
				<!-- /menu footer buttons -->
				<div class="sidebar-footer hidden-small">
					<a data-toggle="tooltip" data-placement="top" title="Settings">
						<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
					</a>
					<a data-toggle="tooltip" data-placement="top" title="FullScreen">
						<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
					</a>
					<a data-toggle="tooltip" data-placement="top" title="Lock">
						<span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
					</a>
					<a data-toggle="tooltip" data-placement="top" title="Logout" href="logout.php">
						<span class="glyphicon glyphicon-off" aria-hidden="true"></span>
					</a>
				</div>
				<!-- /menu footer buttons -->
			</div>
		</div>
		<!-- top navigation -->
		<div class="top_nav">
			<div class="nav_menu">
				<div class="nav toggle">
					<a id="menu_toggle"><i class="fa fa-bars"></i></a>
				</div>

				<nav class="nav navbar-nav">
					<ul class=" navbar-right">
						<li class="nav-item dropdown open" style="padding-left: 15px;">
							<a href="javascript:;" class="user-profile dropdown-toggle" aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">
								<?php echo $_SESSION['fullName']; ?>
							</a>
							<div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown">
								<a class="dropdown-item"  href="edit-profile.php"> My Profile</a>
								<a class="dropdown-item"  href="change-password.php"> Change Password</a>
								<a class="dropdown-item"  href="logout.php"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
							</div>
						</li>
						
					</ul>
				</nav>
			</div>
		</div>
		<!-- /top navigation -->
		<div class="right_col" role="main">
			<?php if(isset($x_content) && $x_content): ?>
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<div class="x_panel">
							<div class="x_title">
								<h2><?php echo $page_title??''; ?></h2>
								<ul class="nav navbar-right panel_toolbox">
									<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
									</li>
									<li><a class="close-link"><i class="fa fa-close"></i></a>
									</li>
								</ul>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
							<?php endif; ?>
							
							<?php echo htmlentities($_SESSION['msg']="");?></p>