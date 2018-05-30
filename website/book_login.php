<?php
	$conn = mysqli_connect('localhost', 'root', "");
	if(!$conn) 
		die('Could not connect: '. mysqli_error());

	if(!mysqli_select_db($conn, 'bookstore'))
		die('Cant select database');
?>