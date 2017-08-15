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
	
	$id = $_GET["id"];
	
	$conn = new mysqli ($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");
	
	$sql_remove = "DELETE FROM wydarzenie WHERE id='$id'";
	if($conn->query($sql_remove)==TRUE){
		echo 'komunikat_ok("Wydarzenie zostało usunięte !");
		setTimeout(function(){window.location="msze_edit_list.php";},2000)';
	}else{
		echo 'komunikat_error("Błąd operacji !");
		setTimeout(function(){window.location="msze_edit_list.php";},2000)';
	}
		

?>

});
</script>
</body>
</html>