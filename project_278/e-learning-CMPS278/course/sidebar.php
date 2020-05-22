<?php
$strconn=mysqli_connect("localhost","root","","project");
		if(!$strconn)
			echo "Connection failed".mysqli_connect_error();
		else{}
?>
<?php echo '<pre>';?>
<h1>Index</h1>
<ul>
	<?php
	$cid= $_GET['cid'];
	print "<a href='syllabus.php?cid=".$cid."' class='btn-block'>View Syllabus>></a>";
	$query1 = "SELECT Title FROM course where CID = '$cid'";
		$result1 = mysqli_query($strconn,$query1);
		$row1 = mysqli_fetch_array($result1);
		$s2 = $row1[0];
		$query = "SELECT Title FROM lecture where course = '$s2'";
		$result = mysqli_query($strconn,$query);
		$i = 1;
		while($row = mysqli_fetch_array($result))
		{
			echo "<li><a href='chapter.php?lid=".$row[0]."&cid=".$cid."'>Lecture".$i." :".$row[0]."</a><br></li>";
			$i++;
		}
	?>
</ul>
<?php echo '</pre>';?>