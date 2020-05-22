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
		$cid = $_GET['cid']; 
	?>
	<header id="head" class="secondary">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <h1>Edit Lecture of Course: <?php echo $cid?></h1>
                </div>
            </div>
        </div>
    </header>
	<br>
	<?php
		$query = "SELECT Title FROM course";
		$result = mysqli_query($strconn,$query);
		/*if($result)
		{
			echo "Success";
		}
		else
		{
			echo "failed";
		}*/
		
$id = $_GET['id']; // $id is now defined
$query1="Select * from lecture WHERE LecID='$id'";
$result1 = mysqli_query($strconn,$query1);
$row1 = mysqli_fetch_row($result1);
	?>
	<form method="POST" action="#">
		<table border=0 align="center">
			<tr>
				<td><label>Enter Chapter Title :</label></td>
				<td><input type="text" class="form-control" name="title" value =<?php echo $row1[2]?>></td>
			</tr>
			<tr>
				<td><label>Enter Description :</label></td>
				<td><input type="text" class="form-control" name="desc" value =<?php echo $row1[4]?>></td>
			</tr>
			<tr>
				<td><label>Enter Info :</label></td>
				<td><input type="text" class="form-control" name="info" value =<?php echo $row1[3]?>></td>
			
			</tr>
			<tr>
				<td colspan="2" align="center"><button class="btn btn-block" name="submit">Edit Lecture</button></td>
			</tr>
			
		</table>
	</form>
	<?php
		if(isset($_POST['submit']))
		{
			$title = $_POST['title'];
			$info = $_POST['info'];
			$d = $_POST['desc'];
			$query = "Update lecture set title ='$title',info='$info', summary='$d' where lecID = '$id'";
			$result = mysqli_query($strconn,$query);
			if($result)
			{
				echo "<div class='alert alert-success' role='alert'>Lecture added successfully</div>";
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