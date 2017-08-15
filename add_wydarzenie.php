<?php 
	
	error_reporting(E_ALL & ~E_NOTICE);
	$servername = "parafiamalko.nazwa.pl";
	$username = "parafiamalko";
	$password = "Dyju711kamilphp";
	$dbname = "parafiamalko";
	
	$conn = new mysqli ($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");
	
	
	session_start();
	if ( !isset( $_SESSION['admin'] ) || time() - $_SESSION['login_time'] > 1200){
		$admin = "no";
		session_destroy();
	}else{
		$admin = "yes";
		$_SESSION['login_time'] = time();
	}
		

?>
<html>
<head>
<meta charset="UTF-8" />
<link rel="stylesheet" type="text/css" href="style_edit_list.css"/>
<link rel="stylesheet" type="text/css" href="style.css"/>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
</head>
<body>
<div id="header_list">
<center><p>Wyszczególnij święto/wydarzenie</p></center>
</div>
<div id="potwierdz"></div>
<?php 
	$sql_wyd = "SELECT id,malkowice,dunkowiczki FROM wydarzenie" ;
	$wynik_wyd = $conn->query($sql_wyd);
	$row_wyd = $wynik_wyd->fetch_assoc();
	$malkowice = $row_wyd['malkowice'];
	$dunkwiczki = $row_wyd['dunkowiczki'];
	
	
?>
<form method='post' action='dodawanie_wyd.php' autocomplete='off' enctype='multipart/form-data'>
	<input name='opis' type='text'  maxlength='85' style='width:700px' placeholder="Nazwa święta/wydarzenia..." /><br>
	<p style='display:inline-block;margin: 15px 0px 0px 22px;'>Malkowice  (<u>pamiętaj o znacznikach br </u>!):</p><textarea name='malkowice' placeholder='Wprowadź godzinę i opis, np. 09:00 - Droga krzyżowa<br>' style='width:800px;height:150px;max-width:855px'></textarea>
	<p style='display:inline-block;margin: 15px 0px 0px 22px;'>Dunkowiczki :</p><textarea name='dunkowiczki' placeholder='Wprowadź godzinę i opis, np. 09:00 - Różaniec święty<br>'  style='width:800px;height:150px;max-width:855px'></textarea>
	<center><input style='margin-left:0px' type='submit' value='DODAJ'></input></center></form>

<div id='panel_admin' class='edytowanie'>	
<center><article onClick='javascript:window.location="msze_edit_list.php"'>ANULUJ</article></center>
</div>
</body>
</html>