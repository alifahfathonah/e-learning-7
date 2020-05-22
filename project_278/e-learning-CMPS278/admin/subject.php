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
	?>
	<header id="head" class="secondary">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <h1>Add Course</h1>
                </div>
            </div>
        </div>
    </header>
	<br>
	<form method="POST" action="#">
		<table border=0 align="center">
			<tr>
				<td><label>Enter Course Title :</label></td>
				<td><input type="text" class="form-control" name="title" placeholder="Subject Title"></td>
			</tr>
			<tr>
				<td><label>Enter Decription :</label></td>
				<td><textarea rows="10" cols="50" class="form-control" 
			placeholder="Decription" id="message" name="info" required
			data-validation-required-message="Please enter your message" minlength="5" 
			data-validation-minlength-message="Min 5 characters" style="resize:none;margin-top:10px"></textarea></td>
			</tr>
			
			<tr>
			<td><label>Enter Language :</label></td>
				<td><input type="text" class="form-control" name="lang" placeholder="Language"></td>
			<tr>
			<tr>
			
			<td><label>Enter Author :</label></td>
				<td><input type="text" class="form-control" name="author" placeholder="Author"></td>
			<tr>
			
			<td><label>Choose Start Date :</label></td>
				<td><input type="date" class="form-control" name="date1"></td>
			<tr>
			
			<td><label>Choose End Date :</label></td>
				<td><input type="date" class="form-control" name="date2"></td>
			<tr>
			
			<tr>
				<td><label>Enter Syllabus :</label></td>
				<td><textarea rows="10" cols="50" class="form-control" 
			placeholder="Syllabus" id="message" name="syllabus" required
			data-validation-required-message="Please enter your message" minlength="5" 
			data-validation-minlength-message="Min 5 characters" style="resize:none;margin-top:10px"></textarea></td>
			</tr>
			
			<td><label>Enter Level :</label></td>
				<td><input type="text" class="form-control" name="level"></td>
			<tr>
			
			<td><label>Enter Price :</label></td>
				<td><input type="number" class="form-control" name="price"></td>
			<tr>
			
			<tr>
				<td colspan="2" align="center"><button name="submit" class="btn btn-block">Create Course</button></td>
			</tr>
			
			<tr>
				<td colspan="2" align="center"><button class="btn btn-block">Reset</button></td>
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
			//echo $title,$info,$dinfo;
			$query = "INSERT INTO course(Title,Info,Language, Author, startDate, endDate, Syllabus, Level, Price) 
			VALUES('$title','$info','$lang','$author','$date1','$date2','$s','$level','$price')";
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