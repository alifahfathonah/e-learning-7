<html>
<head>
	<meta charset="utf-8">
	<title>eLearning - Free Educational Responsive Web Template </title>
	<link rel="favicon" href="../assets/images/favicon.png">
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="../assets/css/font-awesome.min.css">
	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="../assets/css/bootstrap-theme.css" media="screen">
	<link rel="stylesheet" type="text/css" href="../assets/css/da-slider.css" />
	<link rel="stylesheet" href="../assets/css/style.css">
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
		session_start();
		if(isset($_SESSION["username"]))
		{
			$username=$_SESSION["username"];
		}
		else{ echo 'session not started';}
	?>
	<header id="head" class="secondary">
		<div class="container">
			<div class="row">
				<div class="col-sm-8">
					<h1>Manage Courses</h1>
				</div>
			</div>
		</div>
	</header>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-sm-8">
				<form method="POST" action="">
				<table class="table table-bordered">
					<tr>
						<th>Title</th>
						<th>Description</th>
						<th>Language</th>
						<th>Author</th>
						<th>Start Date</th>
						<th>End Date</th>
						<th>Level</th>
						<th>Price</th>
						<th>Edit Course</th>
						<th>Manage Lectures</th>
						<th>Delete Course</th>
						
					</tr>
					<?php
						$query = "SELECT Title,Info,Language,Author,startDate,endDate,level,price,CID FROM course";
						$result = mysqli_query($strconn,$query);
						while($row = mysqli_fetch_array($result))
						{
							$query2 = "SELECT count(CID) from enrollment where CID ='$row[8]' ";
							$result2 = mysqli_query($strconn,$query2);
							$row2 = mysqli_fetch_array($result2);
							
							$title = $row[0];
							$info = $row[1];
							$lang = $row[2];
							$author = $row[3];
							$date1 = $row[4];
							$date2 = $row[5];
							$level = $row[6];
							$price = $row[7];
							echo '<tr>';
							echo '<td>'.$title.'</td>';
							echo '<td>'.$info.'</td>';
							echo '<td>'.$lang.'</td>';
							echo '<td>'.$author.'</td>';
							echo '<td>'.$date1.'</td>';
							echo '<td>'.$date2.'</td>';
							echo '<td>'.$level.'</td>';
							echo '<td>'.$price.'</td>';
					
							echo "<td><a class='btn' href=\"editcourse.php?id=".$row[8]."\">Edit</a></td>";
							echo "<td><a class='btn' href=\"managelectures.php?id=".$row[0]."\">Manage Lectures</a></td>";
							if($row2[0] == 0){
							echo "<td><a class='btn' href=\"deletecourse.php?id=".$row[8]."\">Delete</a></td>";
							}
							echo '</tr>';
						}
					?>
				</table>
				</form>
			</div>
		</div>
	</div>
	<?php
		include "footer.php";
	?>
</body>
</html>