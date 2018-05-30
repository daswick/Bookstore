<html>
<head>
<title>Kanto Univ. Bookstore</title>
</head>
<body onload='reset();'>
<link rel="stylesheet" href="bookstore.css">
<h2>
&emsp;
<a href='bookstore.php'><img src='logo.png' height=100px></a>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
<table> <tr>
<td class="ht"><a href='#' onclick="return false;'">Log In</a></td>
<td class="ht"><a href='#' onclick="return false;'">My Account</a></td>
<td class="ht"><a href='#' onclick="return false;'"><img src='cart.png'>&nbsp;&nbsp;Cart (0)</a></td>
</tr></table>
</h2>
<br>
<script>
	var sem;
	var sub;
	var num;
	var sec;
	var crncount = 0;
	
	var crns = [];
	var tempcrn;
	
	function resetIfExists(id)
	{
		if (document.contains(document.getElementById(id)))
			document.getElementById(id).options[0].selected = true;
	}
	
	function removeIfExists(id)
	{
		if (document.contains(document.getElementById(id)))
			document.getElementById(id).remove();
	}
	
	function reset()
	{
		resetIfExists("table");
		removeIfExists("number");
		removeIfExists("section");
		removeIfExists("addcourse");
	}
	
	function addText(divid)
	{
		return function() {
			if(this.readyState == 4 && this.status == 200)
			{	
				document.getElementById(divid).innerHTML = this.responseText;
			}
		}
	}

	function addSection()
	{
		return function() {
			if(this.readyState == 4 && this.status == 200)
			{
				document.getElementById("sect").innerHTML = this.responseText;
				if(this.responseText.length == 167)
				{
					document.getElementById("section").options[1].selected = true;
					getCall("v");
				}
			}
		}
	}
	
	function getCRN()
	{
		return function() {
			if(this.readyState == 4 && this.status == 200)
			{
				tempcrn = this.responseText;
				document.getElementById("addc").innerHTML = "&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type='button' id='addcourse' value='Add Course' onclick='getCall(\"a\");'>";
				
				if(crns.includes(tempcrn))
				{
					document.getElementById("addcourse").disabled = true;
				}
			}
		}
	}
		
	function trySubmit()
	{
		if(crns.length == 0)
		{
			alert("Please enter at least one course");
			return;
		}
		
		var url = "findBooks.php?c=";
		
		for(var i = 0; i < crns.length; i++)
		{
			url = url + crns[i].toString();
			if(i + 1 != crns.length)
				url += ",";
		}
		
		window.location.href = url;
	}
	
	function getCall(command)
	{
		var url = "bookstore_functions.php?c=";
		var div = "0";
		var xmlhttp = new XMLHttpRequest();
		
		if(command == "s")
		{
			sem = document.getElementById("semester").value;

			removeIfExists("number");
			removeIfExists("section");
			removeIfExists("addcourse");
			removeIfExists("ch3");
			removeIfExists("sh3");


			if(sem == "null")
			{
				removeIfExists("subject");
				removeIfExists("uh3");
				return;
			}

			resetIfExists("subject");
			
			div = 'subj';
			url = url + "s&sem=" + sem;
	        xmlhttp.onreadystatechange = addText(div);

		}
		else if(command == "n")
		{
			sub = document.getElementById("subject").value;

			removeIfExists("section");
			removeIfExists("addcourse");
			removeIfExists("sh3");

			if(sub == "null")
			{
				removeIfExists("ch3");				
				removeIfExists("number");
				return;
			}
			resetIfExists("number");
			
			div = 'nums';
			url = url + "n&sem=" + sem + "&sub=" + sub;
			xmlhttp.onreadystatechange = addText(div);

		}
		else if(command == "x")
		{
			num = document.getElementById("number").value;

			removeIfExists("addcourse");

			if(num == "null")
			{
				removeIfExists("section");
				return;
			}
			resetIfExists("section");
			
			url = url + "x&sem=" + sem + "&sub=" + sub + "&num=" + num;
	        xmlhttp.onreadystatechange = addSection();
		}
		else if(command == "v")
		{
			sec = document.getElementById("section").value;

			removeIfExists("addcourse");
			
			if(sec == "null")
			{
				return;
			}
			
			url = url + "v&sem=" + sem + "&sub=" + sub + "&num=" + num + "&sec=" + sec;
	        xmlhttp.onreadystatechange = getCRN();
		}
		else if(command == "a")
		{
			document.getElementById("addcourse").disabled = true;

			crns.push(tempcrn);
			var newdiv = document.createElement("div");

			newdiv.innerHTML = sem + "<br>" + sub + " " + num + " - Sec " + sec + "<br><br>";
			newdiv.id = "crs" + crncount;
			document.getElementById("clist").appendChild(newdiv);
		}
		else
		{
			return;
		}
		
        xmlhttp.open("GET", url, true);
        xmlhttp.send();
	}
	
</script>
<div class='bdiv'>
<table class="bt"> <tr>
<td style="width: 77%">
<table class="ct"> <tr>
<td>
<?php
	require_once("book_login.php");
		
	$result = mysqli_query($conn, "select distinct semester from offering") or die(mysqli_error($conn));
	echo "<span id='sems'>";
	echo "<h3>Term</h3>";
	echo "<select class='drop' id='semester' onchange='getCall(\"s\");'>";
	echo "<option value='null'>Select a Semester</option>";
	while($row = mysqli_fetch_row($result))
	{	
		echo "<option value='$row[0]'>" . $row[0] . "</option>";
	}
	echo "</select></span>";
	mysqli_free_result($result);
	mysqli_close($conn);
?>
</td> <td>
<span id='subj'></span> </td>
</tr>
<tr> <td>
<span id='nums'></span> </td> <td>
<span id='sect'></span> </td>
</tr> </table>
<br>
<span id='addc'></span>
</td>
<td style="width: 60%" id='courses'>
<div id='clist'><p> </p>
<h3>Course List</h3> <br>
</div>
<br>
<div id='buttons'>
&emsp;&emsp;&emsp;&emsp;&emsp;
<input type='button' value='Find books' onclick='trySubmit();'>
</div>
</td> </tr>
</table>

</div>
</body></html>