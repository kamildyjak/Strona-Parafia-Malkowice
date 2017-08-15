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
	
	$nazwa = $_POST["nazwa"];
	$parent = $_POST["parent"];
	$child = $_POST["child"];
	
	$conn = new mysqli ($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");
	
	if($child==""){
		$return_link = "window.location='edit_zakladka.php?parent=". $parent. "'";
		$sql_edit = "UPDATE zakladki_menu SET nazwa='$nazwa' WHERE id='$parent'";
	}else{
		$return_link = "window.location='edit_zakladka_child.php?parent=". $parent. "&child=". $child ."'";
		$sql_edit = "UPDATE menu_". $parent. " SET nazwa='$nazwa' WHERE id='$child'";
	}

	if($conn->query($sql_edit)==TRUE){
		echo 'komunikat_ok("Zmiany zostały wprowadzanie !");
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