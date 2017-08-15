<?php 

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
	
	$kosciol = $_GET['kosciol'];
	
	

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
<center><p>Plan nabożeństw w <?php if($kosciol == "malkowice"){ echo "Małkowicach"; }else{ echo "Duńkowiczkach" ; } ?></p></center>
</div>
<div id="potwierdz"></div>
<?php 
	$sql_msza = "SELECT id,dni_powszednie,niedziela FROM $kosciol" ;
	$wynik_msza = $conn->query($sql_msza);
	$row_msza = $wynik_msza->fetch_assoc();
	$dni_powszednie = $row_msza['dni_powszednie'];
	$niedziela = $row_msza['niedziela'];
	
	
?>
<form method='post' action='edytowanie_msza.php' autocomplete='off' enctype='multipart/form-data'>
	<p style='display:inline-block;margin: 0px 0px 0px 22px;'>Dni powszednie (<u>pamiętaj o znacznikach br </u>!):</p><textarea name='dni_powszednie'  style='width:800px;height:150px;max-width:855px'><?php echo $dni_powszednie; ?></textarea>
	<p style='display:inline-block;margin: 15px 0px 0px 22px;'>Niedziela :</p><textarea name='niedziela'  style='width:800px;height:150px;max-width:855px'><?php echo $niedziela; ?></textarea>
	<center><input style='margin-left:0px' type='submit' value='Wprowadź zmiany'></input></center>
	<input name='kosciol' value='<?php echo $kosciol ; ?>' type="hidden"/><input name='id' value='<?php echo $row_msza['id'] ; ?>' type="hidden"/></form>

<div id='panel_admin' class='edytowanie'>	
<center><article onClick='javascript:window.location="msze_edit_list.php"'>ANULUJ</article></center>
</div>
</body>
</html>