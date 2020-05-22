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
					<h1>Manage Lectures</h1>
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
						<th>Info</th>
						<th>Edit</th>
						<th>Delete</th>
						
					</tr>
					<?php
					$id = $_GET['id'];
						$query = "SELECT LecID,Title,Summary,Info FROM lecture where course = '$id'";
						$result = mysqli_query($strconn,$query);
						while($row = mysqli_fetch_array($result))
						{
							
							$title = $row[1];
							$desc = $row[2];
							$info = $row[3];
							echo '<tr>';
							echo '<td>'.$title.'</td>';
							echo '<td>'.$desc.'</td>';
							echo '<td>'.$info.'</td>';
					
							echo "<td><a class='btn' href=\"editlecture.php?id=".$row[0]."&&cid=".$id."\">Edit</a></td>";
							echo "<td><a class='btn' href=\"deletelecture.php?id=".$row[0]."\">Delete</a></td>";
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