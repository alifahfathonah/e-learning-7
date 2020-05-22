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
	<style>
	th, td {
		padding:5px;   
	}
	</style>
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

$id = $_GET['id']; // $id is now defined
$query="Select * from course WHERE CID='$id.'";
$result = mysqli_query($strconn,$query);
$row = mysqli_fetch_row($result );
	?>
	<header id="head" class="secondary">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <h1>Edit Course</h1>
                </div>
            </div>
        </div>
    </header>
	<br>
	<form method="POST" action="#">
		<table border=0 align="center">
			<tr>
				<td><label>Enter Course Title :</label></td>
				<td><input type="text" class="form-control" name="title" value =<?php echo $row[1]?>> </td>
			</tr>
			<tr>
				<td><label>Enter Decription :</label></td>
				<td><input type="text" class="form-control" name="info" value =<?php echo $row[2]?>></td>
			</tr>
			
			<tr>
			<td><label>Enter Language :</label></td>
				<td><input type="text" class="form-control" name="lang" value =<?php echo $row[3]?>></td>
			<tr>
			<tr>
			
			<td><label>Enter Author :</label></td>
				<td><input type="text" class="form-control" name="author" value =<?php echo $row[4]?>></td>
			<tr>
			
			<td><label>Choose Start Date :</label></td>
				<td><input type="date" class="form-control" name="date1" value =<?php echo $row[5]?>></td>
			<tr>
			
			<td><label>Choose End Date :</label></td>
				<td><input type="date" class="form-control" name="date2" value =<?php echo $row[6]?>></td>
			<tr>
			
			<tr>
				<td><label>Enter Syllabus :</label></td>
				<td><input type="text" class="form-control" name="syllabus" value =<?php echo $row[7]?>></td>
			</tr>
			
			<td><label>Enter Level :</label></td>
				<td><input type="text" class="form-control" name="level" value =<?php echo $row[8]?>></td>
			<tr>
			
			<td><label>Enter Price :</label></td>
				<td><input type="number" class="form-control" name="price" value =<?php echo $row[9]?>></td>
			<tr>
			
			<tr>
				<td colspan="2" align="center"><button name="submit" class="btn btn-block">Edit Course</button></td>
			</tr>
		</table>
	</form>
	<?php
		if(isset($_POST['submit']))
		{
			$title = $_POST['title'];
			$info = $_POST['info'];
			$lang = $_POST['lang'];
			$author = $_POST['author'];
			$date1 = $_POST['date1'];
			$date2 = $_POST['date2'];
			$s = $_POST['syllabus'];
			$level = $_POST['level'];
			$price = $_POST['price'];
			
			$query = "update course set Title='$title',Info='$info',Language='$lang', Author='$author', startDate='$date1',endDate='$date2', Syllabus='$s', Level='$level', Price='$price' where CID = '$id'";
			$result = mysqli_query($strconn,$query);
			if($result)
			{
				echo "<div class='alert alert-success' role='alert'>Successfull</div>";
			}
			else
			{
				echo "<div class='alert alert-danger' role='alert'>Something went wrong.Please try again later !</div>";
			}
		}
	?>
	<?php
		include "footer.php";
	?>
</body>
</html>