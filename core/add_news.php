<?php 

	error_reporting(E_ALL & ~E_NOTICE);
	$servername = "parafiamalko.nazwa.pl";
	$username = "parafiamalko";
	$password = "Dyju711kamilphp";
	$dbname = "parafiamalko";
	
	$conn = new mysqli ($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");
	
	$parent = $_GET['parent'];
	$child = $_GET['child'];
	
	session_start();
	if ( !isset( $_SESSION['admin'] ) || time() - $_SESSION['login_time'] > 1200){
		$admin = "no";
		session_destroy();
	}else{
		$admin = "yes";
		$_SESSION['login_time'] = time();
	}
	
	$page_id = "menu_". $parent. "_". $child. "";
	
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
<center><p style='font-size: 20px;margin:10px 0px 10px 0px;'><b>Dodaj wiadomość</b><p></center>
<div id="panel_admin" class="news">
<?php
		echo "<form method='post' action='dodawanie_newsa.php' autocomplete='off' enctype='multipart/form-data'>
		<input name='tytul' type='text' placeholder='Tytuł wiadomości...' maxlength='85' style='width:700px' autofocus/><br>
		<textarea name='tresc_html' placeholder='Treść (kod HTML)...' style='width:800px;height:300px;max-width:855px'></textarea>
		<p>Wybierz zdjęcia, które są umieszczone w tekście :</p><input type='file' name='files[]' multiple='multiple' accept='image/*'/>
		<p>Wybierz miniaturki zdjęć do galerii :</p><input type='file' name='thumbs[]' multiple='multiple' accept='image/*'/><br>
		<p>Wybierz zdjęcia do galerii :</p><input type='file' name='images[]' multiple='multiple' accept='image/*'/>
		<center style='margin-bottom:15px'><input onClick='parent.to_top()' type='submit' value='DODAJ !'></input><article onClick='javascript:parent.ukryj_panel_admin()'>ANULUJ</article></center>
		<input name='id' value='". $page_id. "' type='hidden'/><input name='parent' value='". $parent. "' type='hidden'/><input name='child' value='". $child. "' type='hidden'/></form>";


?>
</div>
</body>
</html>