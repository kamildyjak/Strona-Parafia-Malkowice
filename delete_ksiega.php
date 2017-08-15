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
	$akcept = $_GET['akcept'];
	
	$conn = new mysqli ($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");
	
	$sql_remove = "DELETE FROM ksiega_gosci WHERE id='$id'";
	if($conn->query($sql_remove)==TRUE){
		echo 'komunikat_ok("Wpis został usunięty !");';
	}else{
		echo 'komunikat_error("Błąd operacji !");';
	}
	
	if($akcept=="tak"){
			echo 'setTimeout(function(){window.location="ksiega_list_akcept.php";},2000)';
	}else{
			echo 'setTimeout(function(){window.location="ksiega_list_edit.php";},2000)';
	}
		

?>

});
</script>
</body>
</html>