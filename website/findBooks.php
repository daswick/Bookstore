<html>
<head>
	<title>Find Books</title>
</head>
<body>
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
<div class='bdiv'>
<?php
	if(isset($_GET["c"]) == false)
	{
		echo "Please enter at least one CRN to look up books.";
		return;		
	}
	$crnstr = $_GET["c"];
	
	require_once("book_login.php");
	$crns = explode(",", $crnstr);
	
	$num = count($crns);
		
	for($i = 0; $i < $num; $i++)
	{		
		$cquery = mysqli_query($conn, "SELECT * FROM offering WHERE CRN=$crns[$i];") or die("Failed to query");
		$crow = mysqli_fetch_row($cquery);
		$section = $crow[2];
		$subject = $crow[3];
		$cnumber = $crow[4];
		$profid = $crow[5];
		
		$pquery = mysqli_query($conn, "SELECT Name From professor WHERE PID=$profid;") or die("Failed to query");
		$pname = mysqli_fetch_row($pquery)[0];
		
		$tquery = mysqli_query($conn, "SELECT `Course Title` FROM course WHERE Subject='$subject' AND Number=$cnumber;") or die("Failed to query");
		$ctitle = mysqli_fetch_row($tquery)[0];
	
		echo "<table class='bookt'> <tr> <td style='text-align: center'>";
		echo "<br><hr></td><td>&emsp;$ctitle - $subject $cnumber, Section $section: $pname <br><hr></td></tr>";
		
		$oquery = mysqli_query($conn, "SELECT ISBN FROM course_books WHERE CRN=$crns[$i];") or die("Failed to query");
		$numbooks = mysqli_affected_rows($conn);
		$books = array();
		for($j = 0; $j < $numbooks; $j++)
		{
			array_push($books, mysqli_fetch_row($oquery)[0]);
		}
		
		if($books[0] == "000-0000000000")
		{
			echo "<tr><td></td><td>&emsp;This class does not have a book in the database.<br>&emsp;There may not be a textbook for the course or the professor has not added one yet.<br><br></td></tr>";
		}
		else {
			
		for($j = 0; $j < $numbooks; $j++)
		{
			$bquery = mysqli_query($conn, "SELECT * FROM book WHERE ISBN='$books[$j]';") or die("Failed to query");
			$book = mysqli_fetch_row($bquery);
			#Title = [1], Author = [2], Edition = [3], Year = [4]
			$btitle = $book[1];
			$author = $book[2];
			$edition = $book[3];
			$year = $book[4];
			echo "<tr><td style='width: 30%'>&emsp;<img src='/images/$books[$j].jpg' height='150' style='border-style: double'></td><td>Title: $btitle<br>ISBN: $books[$j]<br>Author: $author<br>Edition: $edition<br>Copyright: $year<br>";
			
			$squery = mysqli_query($conn, "SELECT * FROM stock WHERE ISBN='$books[$j]';") or die("Failed to query");
			$prices = mysqli_fetch_row($squery);
			$newpr = $prices[0];
			$newst = $prices[1];
			$usepr = $prices[2];
			$usest = $prices[3];
			$renpr = $prices[4];
			$renst = $prices[5];
			
			if($newst == 0)
			{
				echo "We are out of stock of new copies of this book<br>";
			}
			else
			{
				echo "New price: $$newpr<br>";
			}
			
			if($usest == 0)
			{
				echo "We are out of stock of used copies of this book<br>";
			}
			else
			{
				echo "Used price: $$usepr<br>";
			}
			
			if($renst != 0)
			{
				echo "Rent price: $$renpr<br>";
			}
			echo "<br></td></tr>";
		}
		}
		echo "</table><br>";
	}
?>
<span id="books"></span>
</div>
</body>
</html>