<?php
include 'connect.php'
?>
<html>
<head>
<link rel='stylesheet' href='index.css'>
<link rel="shortcut icon" href="trainlogo1.jpeg" />
<title> Registration Page </title>
</head>
<body>
<center><img src="trainlogo2.jpeg" width='35%'></center> 
<form method='post' action ='register_insert.php' >
<table class="table1">
<tr><td>Name : </td> <td colspan='2'><input type="Text" name="name" maxlength='50'></td></tr>
<tr><td>Email : </td> <td colspan='2'><input type="email" name="email" maxlength='50'></td></tr>
<tr><td>Gender :</td><td><input type="Radio" name="Gender" value="M">Male</td><td><input type="Radio" name="Gender" value="F">Female</td></tr>
<tr><td>DOB :</td><td colspan='2'><input type="Text" name="dob" maxlength='50' placeholder='yyyy-mm-dd'></td></tr>
<tr><td>Password : </td> <td  colspan='2'><input type="password" name="password" maxlength='50'></td></td></tr>
<tr><td colspan='3'><center><button type='Submit' name='register_submit' >Submit</Button></center></td></tr>
</table>
</form>
</body>
</html>