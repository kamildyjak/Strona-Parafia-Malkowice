<html style="visibility:hidden">
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta charset="UTF-8" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
</head>
<body>
<div id="error"></div>
<script type="text/javascript">
$(function(){
<?php

	$servername = "parafiamalko.nazwa.pl";
	$username = "parafiamalko";
	$password = "Dyju711kamilphp";
	$dbname = "parafiamalko";
	
	$login = $_POST['login'];
	$login_password = $_POST['password'];
	
	$conn = new mysqli ($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");

	$sql = "SELECT login,password FROM users";
	$wynik = $conn->query($sql);
	$stop = 0;
	
	if($conn->query($sql) == TRUE){
		$row = $wynik->fetch_assoc();
		while($row['login']!=$login){
			$row = $wynik->fetch_assoc();
			if($row == NULL){
				echo "$('html').css('visibility','visible');";
				echo "$('#error').append('<center><p>Zła nazwa użytkownika !</p></center>');";
				echo 'setTimeout(function(){window.location="/admin";},2000)';
				$stop=1;
				break;
			}
		}
		if($stop==0){
			if($row['password']==$login_password){
				echo 'window.location="sesion_start.php";';
			}else{
				echo "$('html').css('visibility','visible');";
				echo "$('#error').append('<center><p>Błąd hasła !</p></center>');";
				echo 'setTimeout(function(){window.location="/admin";},2000)';
			}
		}
	}else{
		echo "Błąd połączenia";
	}

	$conn->close();
?>
});
</script>
</body>
</html>