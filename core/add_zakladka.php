<?php
	error_reporting(E_ALL & ~E_NOTICE);
	$servername = "parafiamalko.nazwa.pl";
	$username = "parafiamalko";
	$password = "Dyju711kamilphp";
	$dbname = "parafiamalko";
	
	$conn = new mysqli ($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");
	
	$parent = $_GET["parent"];
	
	if($parent==""){
		$return_link="window.location='menu_list.php'";
	}else{
		$return_link="window.location='edit_zakladka.php?parent=". $parent. "'";
	}
	
	$sql_parent_name = "SELECT nazwa FROM zakladki_menu WHERE id='$parent'";
	$wynik_parent_name = $conn->query($sql_parent_name);
	$row_parent_name = $wynik_parent_name->fetch_assoc();
?>
<html>
<head>
<meta charset="UTF-8" />
<link rel="stylesheet" type="text/css" href="style.css"/>
<link rel="stylesheet" type="text/css" href="style_edit_list.css"/>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
</head>
<body style="margin : 0;min-height:210px">
<div id="header_list">
<?php
	if(!isset($_GET['parent'])){
		echo "<center><p><b>Dodaj zakładkę do menu głównego</b><p></center>";
	}else{
		echo "<center><p><b>Dodaj zakładkę do ". $row_parent_name['nazwa']. "</b><p></center>";
	}
?>
</div>
<div id="panel_admin" class="news">

<form method='post' action='dodawanie_zakladka.php' autocomplete='off' enctype='multipart/form-data'>
<input name='nazwa' type='text' placeholder='Nazwa zakładki...' maxlength='85' style='width:700px' autofocus/><br>
<?php
	if(isset($_GET['parent'])){
		echo "<input name='parent' type='hidden' value='". $parent. "'/>";
	}
?>
<center style='margin-bottom:15px'><input type='submit' value='DODAJ !'></input><article onClick="javascript:<?php echo $return_link ?>">ANULUJ</article></center></form>

</div>
</body>
</html>