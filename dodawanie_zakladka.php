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
	
	$conn = new mysqli ($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");
	
	$nazwa = $_POST['nazwa'];
	
	if(isset($_POST["parent"])){
		$parent = $_POST['parent'];
		$sql_add = "INSERT INTO menu_". $parent. " (nazwa) VALUES ('$nazwa')";
		$return_link = "window.location='edit_zakladka.php?parent=". $parent. "'";
	}else{
		$parent = "";
		$sql_add = "INSERT INTO zakladki_menu (nazwa) VALUES ('$nazwa')";
		$return_link = "window.location='menu_list.php'";
	}
	
	
	
	if($nazwa==""){
		
		echo 'komunikat_error("Wypełnij wszystkie pola !");';
				
		if(isset($_POST["parent"])){
			echo 'setTimeout(function(){window.location="add_zakladka.php?parent='. $parent. '"},2000)';
		}else{
			echo 'setTimeout(function(){window.location="add_zakladka.php"},2000)';
		}
		
	}else{
		if($conn->query($sql_add)==TRUE){
			if($parent==""){
				$sql_id = "SELECT id FROM zakladki_menu WHERE nazwa='$nazwa'";
				$wynik_zakladka_id = $conn->query($sql_id);
				$zakladka_id = $wynik_zakladka_id->fetch_assoc();
				$sql_table = "CREATE TABLE menu_". $zakladka_id['id']. " (id INT(6) UNSIGNED AUTO_INCREMENT  PRIMARY KEY,nazwa TEXT,plik TEXT)";

				
			}else{
				$sql_id = "SELECT id FROM menu_".$parent." WHERE nazwa='$nazwa'";
				$wynik_zakladka_id = $conn->query($sql_id);
				$zakladka_id = $wynik_zakladka_id->fetch_assoc();
				$sql_table = "CREATE TABLE menu_".$parent."_". $zakladka_id['id']. " (id INT(6) UNSIGNED AUTO_INCREMENT  PRIMARY KEY,temat TEXT,tresc TEXT ,galeria TEXT ,data TEXT)";
				
			}
			$conn->query($sql_table);
			echo 'komunikat_ok("Zakładka została dodana !");
			setTimeout(function(){'. $return_link. '},2000)';
	
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