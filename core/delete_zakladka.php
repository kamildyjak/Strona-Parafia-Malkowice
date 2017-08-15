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
	
	$parent = $_GET["parent"];
	$child = $_GET["child"];
	
	$conn = new mysqli ($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");
	
	if($child==""){
		$return_link = "parent.window.location='index.php';edit_all(); document.getElementById('edit_all').src='menu_list.php'";
		$sql_remove = "DELETE FROM zakladki_menu WHERE id='$parent'";
		$sql_remove_table = "DROP TABLE menu_".$parent."";
	}else{
		$return_link = "parent.window.location='index.php';edit_all(); document.getElementById('edit_all').src='edit_zakladka.php?parent=". $parent. "'";
		$sql_remove = "DELETE FROM menu_".$parent." WHERE id='$child'";
		$sql_remove_table = "DROP TABLE menu_".$parent."_".$child."";
	}
	
	if($conn->query($sql_remove)==TRUE){
		$conn->query($sql_remove_table);
		echo 'komunikat_ok("Zakładka została usunięta !");
		setTimeout(function(){'. $return_link. '},2000)';
	}else{
		echo 'komunikat_error("Błąd operacji !");
		setTimeout(function(){'.$return_link.'},2000)';
	}
		

?>

});
</script>
</body>
</html>