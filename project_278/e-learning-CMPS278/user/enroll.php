
<?php
session_start();
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="eLearning is a modern and fully responsive Template by WebThemez.">
	<meta name="author" content="webThemez.com">
	<title>About - Techro Bootstrap template</title>
	<link rel="favicon" href="assets/images/favicon.png">
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen">
	<link rel="stylesheet" href="assets/css/style.css">
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>

<body>
	<?php
		include "nav.php";
		$strconn=mysqli_connect("localhost","root","","project");
		if(!$strconn)
			echo "Connection failed".mysqli_connect_error();
		else{}
	?>
	
	<header id="head" class="secondary">
		<div class="container">
			<div class="row">
				<div class="col-sm-8">
					<h1>Enrollment</h1>
				</div>
			</div>
		</div>
	</header>
	<?php
		$uid= $_SESSION['username'];
		$cid= $_GET['eid'];
		$today = date("Y-m-d");
		$query1 = "select endDate, startDate from course where CID = '$cid' ";
		$result1 = mysqli_query($strconn,$query1);
		$row1 = mysqli_fetch_row($result1 );
		$ed = $row1[0];
		$sd = $row1[1];
		if($ed > $today && $sd <= $today){
		$query2 = "select * from enrollment where CID = '$cid' and UID = '$uid' ";
		$result2 = mysqli_query($strconn,$query2);
		$row2 = mysqli_fetch_row($result2 );
			$query = "insert into enrollment(UID, CID) values('$uid','$cid') ";
			$result = mysqli_query($strconn,$query);
			if($result)
			{
					
					echo '<div class="col-md-4">';
					echo '<div class="featured-box">';
					echo '<i class="fa fa-leaf fa-2x"></i>';
					echo '<div class="text">';
					echo '<h3>Success, Course Enrolled</h3>';
					echo '</div>';
					echo '</div>';
					echo '</div>';
			}
			else{
				echo '<div class="col-md-4">';
					echo '<div class="featured-box">';
					echo '<i class="fa fa-leaf fa-2x"></i>';
					echo '<div class="text">';
					echo '<h3>Failed</h3>';
					echo '</div>';
					echo '</div>';
					echo '</div>';
			}
		}
		else{
				
				echo '<div class="col-md-4">';
					echo '<div class="featured-box">';
					echo '<i class="fa fa-leaf fa-2x"></i>';
					echo '<div class="text">';
					echo '<h3>Failed, Can not enroll(Date issues)</h3>';
					echo '</div>';
					echo '</div>';
					echo '</div>';
			}
			
		
	?>
	</div>
		</section>
	</div>
	<?php
		include "footer.php";
	?>
	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/custom.js"></script>
</body>
</html>
