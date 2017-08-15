<html style="visibility:hidden">
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
	
	$kosciol = $_POST['kosciol'];
	$dni_powszednie = $_POST['dni_powszednie'];
	$niedziela = $_POST['niedziela'];
	$id = $_POST['id'];

	$conn = new mysqli ($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");
	

		$sql = "UPDATE $kosciol SET dni_powszednie='$dni_powszednie',niedziela='$niedziela' WHERE id='$id'";
		
		if($conn->query($sql)==TRUE){
			echo 'komunikat_ok("Zmiany zostały wprowadzone !");
			setTimeout(function(){window.location="edit_msze.php?kosciol='.$kosciol.'"},2000)';
		}else{
			echo 'komunikat_error("Błąd operacji !");
			setTimeout(function(){window.location="edit_msze.php?kosciol='.$kosciol.'"},2000)';
		}

?>
});
</script>
</body>
</html>