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
	$servername = "parafiamalko.nazwa.pl";
	$username = "parafiamalko";
	$password = "Dyju711kamilphp";
	$dbname = "parafiamalko";
	$dzisiaj = date("Y-m-d");
	
	$opis = $_POST["opis"];
	$malkowice = $_POST["malkowice"];
	$dunkowiczki = $_POST["dunkowiczki"];
	
	$conn = new mysqli ($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");
	
	
	if($opis == ""){
		echo 'komunikat_error("Wpisz nazwę wydarzenia !");
		setTimeout(function(){window.location="add_wydarzenie.php"},2000)';
	}else{

		$sql = "INSERT INTO wydarzenie (malkowice,dunkowiczki,opis) VALUES ('$malkowice','$dunkowiczki','$opis');";
		
		if($conn->query($sql)==TRUE){
			
			echo 'komunikat_ok("Wydarzenie zostało dodane !");
			setTimeout(function(){parent.ukryj_panel_admin()},2000)';
			
		}else{
			
			echo 'komunikat_error("Błąd operacji !");
			setTimeout(function(){window.location="add_wydarzenie.php"},2000)';
		}
	}

?>
});
</script>
</body>
</html>