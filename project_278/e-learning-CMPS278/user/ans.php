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
					<h1>Answers to Your Questions</h1>
				</div>
			</div>
		</div>
	</header>
	<br>
	<div class="container">
			<div class="row">
				<div class="col-sm-8">
	<?php
		$query = "SELECT * FROM ans where UserID = '$username'";
		$result = mysqli_query($strconn,$query);
		echo "<table>"; 
		while($row = mysqli_fetch_array($result))
		{
			$eid = $row[1];
		$query1 = "SELECT * FROM expert_info where Expert_id = '$eid'";
		$result1 = mysqli_query($strconn,$query1);
		$row1 = mysqli_fetch_array($result1);
			$id=$row["ExpertID"];
			echo "<tr><td><b>Question : </b></td><td>".$row[4]."</td></tr>";
			echo "<tr><td><b>Answer : </b></td><td>".$row[5]."</td></tr>";
			echo "<tr><td><b>Answered by : </b></td><td>".$row1[6]."</td></tr>";
			echo "<tr><td><hr></td></tr>";
		}
		echo "</table>";
	?>
	</div>
	</div>
	</div>
	<br>
	<?php
		include "footer.php";
	?>
</body>
</html>