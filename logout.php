<?php
session_start();
?>
<html>
<head>
<link rel='stylesheet' href='index.css'>
<link rel="shortcut icon" href="trainlogo1.jpeg">
</head>
<body>
<?php
session_destroy();
echo '<center><h2>You have been sucessfully logged Out<h2></center><br>';
echo '<center><table><tr><td><A href="index.php"><button>Start Again</button></a></td></tr></table></center>';
?>
</body>
</html>