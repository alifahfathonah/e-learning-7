<?php
session_start();
?>
<!DOCTYPE html>
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
<style>
.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 5px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  margin-left: 170px;
}
.button2:hover {
  background-color: #008CBA;
  color: white;
}

.button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}
</style>

<body>
	<?php
		include "nav.php";
		$strconn=mysqli_connect("localhost","root","","project");
		if(!$strconn)
			echo "Connection failed".mysqli_connect_error();
		else{}
	?>
	<?php
		$query = "SELECT * FROM course";
		$result = mysqli_query($strconn,$query);
		/*if($result)
		{
			echo "Sucess";
		}
		else{
			echo "failed";
		}*/
	?>
	<header id="head" class="secondary">
		<div class="container">
		
		
			<div class="row">
				<div class="col-sm-8">
					<h1>Courses</h1>
				</div>
			</div>
			
		</div>
	</header>
	<div id="courses">
		<section class="container">
		
			<h2>Filter Courses</h2>
			<hr>
			<!-- --------------------------------- -->
			<div id="apDiv16">
 <h4>Search Course by Level and Author</h4>
  <form name="form1" method="post" action="search1.php">
    <table width="424" height="47" border="0">
      <tr>
        <td width="200"><div align="right">
          <input type="submit" name="submit" id="submit" value="Search Course" class="search">
        </div></td>
        <td width="63">&nbsp;</td>
        <td width="242">
          <div class="select-style"></div></td><td>
		  <div class="select-style"><select name="a" size="1" id="frm1">
          <option value="">Select Author</option>
          <?php 
			$querySelect="select distinct author from course";
			if ( !( $database = mysqli_connect( "localhost", "root", "" ) ) )
				die( "Could not connect to database </body></html>" );

			if ( !mysqli_select_db( $database, "project" ) )
				 die( "Could not open database </body></html>" );

			if ( !( $result = mysqli_query( $database, $querySelect ) ) )  {
				  print( "<p>Could not execute query!</p>" );
				  die( mysqli_error() . "</body></html>" );
			}
			if($result)
			{
				while($row = mysqli_fetch_row($result ))
				{
					print "<option value='".$row[0]."'>".$row[0]."</option>";
				}
			}
			else
			{
				print mysql_error();
			}
			?>
			<td>
		  <div class="select-style"><select name="l" size="1" id="frm1">
          <option value="">Select Level</option>
          <?php 
			$querySelect="select distinct level from course";
			if ( !( $database = mysqli_connect( "localhost", "root", "" ) ) )
				die( "Could not connect to database </body></html>" );

			if ( !mysqli_select_db( $database, "project" ) )
				 die( "Could not open database </body></html>" );

			if ( !( $result = mysqli_query( $database, $querySelect ) ) )  {
				  print( "<p>Could not execute query!</p>" );
				  die( mysqli_error() . "</body></html>" );
			}
			if($result)
			{
				while($row = mysqli_fetch_row($result ))
				{
					print "<option value='".$row[0]."'>".$row[0]."</option>";
				}
			}
			else
			{
				print mysql_error();
			}
			?>
          </select></div></td>
      </tr>
    </table>
  </form>
</div>
</br><hr>
			<!-- ----------------------------------- -->
			 <h4>Search Course that begin after specified date, and betweeen 2 prices</h4>
  <form name="form1" method="post" action="search2.php">
    <table width="424" height="47" border="0">
      <tr>
        <td width="200"><div align="right">
          <input type="submit" name="submit" id="submit" value="Search Course" class="search">
        </div></td>
        <td width="63">&nbsp;</td>
        <td width="242">
          <div class="select-style"></div></td><td>
		  <input type="date" name="date" id="submit" value="Search Course" class="search">
		  </td>
		  <td>
			<input type="number" name="n1" id="submit" value="Search Course" class="search">
			</td>
			<td>
			<input type="number" name="n2" id="submit" value="Search Course" class="search">
			</td>
      </tr>
    </table>
  </form>
  </br><hr>
  
  			<div id="apDiv16">
 <h4>Search Course by Language and Author</h4>
  <form name="form1" method="post" action="search3.php">
    <table width="424" height="47" border="0">
      <tr>
        <td width="200"><div align="right">
          <input type="submit" name="submit" id="submit" value="Search Course" class="search">
        </div></td>
        <td width="63">&nbsp;</td>
        <td width="242">
          <div class="select-style"></div></td><td>
		  <div class="select-style"><select name="a" size="1" id="frm1">
          <option value="">Select Author</option>
          <?php 
			$querySelect="select distinct author from course";
			if ( !( $database = mysqli_connect( "localhost", "root", "" ) ) )
				die( "Could not connect to database </body></html>" );

			if ( !mysqli_select_db( $database, "project" ) )
				 die( "Could not open database </body></html>" );

			if ( !( $result = mysqli_query( $database, $querySelect ) ) )  {
				  print( "<p>Could not execute query!</p>" );
				  die( mysqli_error() . "</body></html>" );
			}
			if($result)
			{
				while($row = mysqli_fetch_row($result ))
				{
					print "<option value='".$row[0]."'>".$row[0]."</option>";
				}
			}
			else
			{
				print mysql_error();
			}
			?>
			<td>
		  <div class="select-style"><select name="l" size="1" id="frm1">
          <option value="">Select Language</option>
          <?php 
			$querySelect="select distinct Language from course";
			if ( !( $database = mysqli_connect( "localhost", "root", "" ) ) )
				die( "Could not connect to database </body></html>" );

			if ( !mysqli_select_db( $database, "project" ) )
				 die( "Could not open database </body></html>" );

			if ( !( $result = mysqli_query( $database, $querySelect ) ) )  {
				  print( "<p>Could not execute query!</p>" );
				  die( mysqli_error() . "</body></html>" );
			}
			if($result)
			{
				while($row = mysqli_fetch_row($result ))
				{
					print "<option value='".$row[0]."'>".$row[0]."</option>";
				}
			}
			else
			{
				print mysql_error();
			}
			?>
          </select></div></td>
      </tr>
    </table>
  </form>
</div>
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
