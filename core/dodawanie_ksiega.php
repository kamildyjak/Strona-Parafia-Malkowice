<html>
<head>
<link rel="stylesheet" type="text/css" href="style_error.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/komunikaty.js"></script>
</head>
<body style="height:200px">
<div id="komunikat" class="error"></div>
<div id="komunikat" class="ok"></div>
<script type="text/javascript">
$(function(){
	
<?php
	error_reporting(E_ALL & ~E_NOTICE);
	$servername = "parafiamalko.nazwa.pl";
	$username = "parafiamalko";
	$password = "Dyju711kamilphp";
	$dbname = "parafiamalko";
	$dzisiaj = date("Y-m-d");
	
	$autor = $_POST["autor"];
	$tresc = $_POST["tresc"];
	
	$conn = new mysqli ($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");
	
	$return_link = "window.location='add_ksiega.php'";
	
	
	if($autor=="" or $tresc==""){
		echo 'komunikat_error("Wypełnij wszystkie pola !");
		setTimeout(function(){'.$return_link.'},2000)';
	}else{

		$tresc_zmian = str_replace(array("\r\n", "\r", "\n"), "<br />", $tresc);

		$sql = "INSERT INTO ksiega_gosci (data,autor,tresc,ok) VALUES ('$dzisiaj', '$autor','$tresc_zmian','nie');";
		
		if($conn->query($sql)==TRUE){
			$to = "mail@parafia-malkowice.pl";
	$subject = "Nowy wpis czeka na akceptację !";
	$headers = 'MIME-Version: 1.0' . "\r\n";
	$headers .= 'Content-type: text/html; charset=UTF-8' . "\r\n";
	$headers .= 'From: do_not_replay@parafia-malkowice' ."\r\n";
	mail($to,$subject,"<html><body>Autor: <b>". $autor ."</b> przesłał wpis o treści :<br><b>". $tresc ."</b><br>Wpis ten czeka na akceptację !<br><br><a href='http://parafia-malkowice.pl/admin/'>Logowanie do panelu administracyjnego</a><body></html>",$headers);

			echo 'komunikat_ok("Twój wpis czeka na akceptację !");
			setTimeout(function(){parent.ukryj_panel_admin()},2000)';
			
		}else{
			
			echo 'komunikat_error("Błąd operacji !");
			setTimeout(function(){'.$return_link.'},2000)';
		}
	}

?>
});
</script>
</body>
</html>