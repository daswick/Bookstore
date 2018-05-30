<?php
	require_once("book_login.php");

	$command = $_GET["c"];
	$result = 0;
	
	if($command == "s" or $command == "n" or $command == "x")
	{
		if($command == "s")
		{
			$sem = $_GET["sem"];
			$result = mysqli_query($conn, "SELECT DISTINCT Subject FROM offering WHERE Semester='$sem';") or die("Failed to query");

			echo "<h3 id='uh3'>Subject</h3>";
			echo "<select class='drop' id='subject' onchange='getCall(\"n\");'>";
			echo "<option value='null'>Select a Subject</option>";
		}
		else if($command == "n")
		{
			$sem = $_GET["sem"];
			$sub = $_GET["sub"];
			$result = mysqli_query($conn, "SELECT DISTINCT o.Number FROM offering o WHERE Semester='$sem' AND Subject='$sub';") or die("Failed to query");
			
			echo "<h3 id='ch3'>Course</h3>";
			echo "<select class='drop' id='number' onchange='getCall(\"x\");'>";
			echo "<option value='null'>Select a Number</option>";
		}
		else if($command == "x")
		{
			$sem = $_GET["sem"];
			$sub = $_GET["sub"];
			$num = $_GET["num"];
			$result = mysqli_query($conn, "SELECT DISTINCT Section FROM offering o WHERE o.Semester='$sem' AND o.Subject='$sub' AND o.NUMBER='$num' ORDER BY Section ASC;") or die("Failed to query");

			echo "<h3 id='sh3'>Section</h3>";
			echo "<select class='drop' id='section' onchange='getCall(\"v\");'>";
			echo "<option value='null'>Select a Section</option>";
		}

		while($row = mysqli_fetch_row($result))
		{	
			echo "<option value='$row[0]'>" . $row[0] . "</option>";
		}
		echo "</select>";
	}
	else if($command == "v")
	{
		$sem = $_GET["sem"];
		$sub = $_GET["sub"];
		$num = $_GET["num"];
		$sec = $_GET["sec"];
		
		$result = mysqli_query($conn, "SELECT CRN FROM offering o WHERE o.Semester='$sem' AND o.Subject='$sub' AND o.NUMBER='$num' AND o.Section='$sec';") or die("Failed to query");
		$row = mysqli_fetch_row($result);
		echo $row[0];
	}
?>