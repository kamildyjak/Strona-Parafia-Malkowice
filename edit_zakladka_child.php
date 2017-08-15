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
	
	$zakladka_id = "menu_". $parent;
	
	$sql_parent_name = "SELECT nazwa FROM zakladki_menu WHERE id='$parent'";
	$sql_child_name = "SELECT nazwa FROM menu_". $parent. " WHERE id='$child' ";
	
	$wynik_parent_name = $conn->query($sql_parent_name);
	$wynik_child_name = $conn->query($sql_child_name);
	
	$row_parent_name = $wynik_parent_name->fetch_assoc();
	$row_child_name = $wynik_child_name->fetch_assoc();
	

?>
<html>
<head>
<meta charset="UTF-8" />
<link rel="stylesheet" type="text/css" href="style.css"/>
<link rel="stylesheet" type="text/css" href="style_edit_list.css"/>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
</head>
<body>
<script type="text/javascript">
function delete_no(){
	$('#potwierdz').fadeOut(100);
}


</script>
<div id="header_list">
<?php echo "<center><p>".$row_parent_name['nazwa']." -> ". $row_child_name['nazwa']."</p></center>"; ?>
</div>
<div id="potwierdz"></div>

<?php 
	$sql_zakladka_child = "SELECT id,nazwa FROM $zakladka_id WHERE id='$child'";
	$wynik_zakladka_child = $conn->query($sql_zakladka_child);
	$row_zakladka_child=$wynik_zakladka_child->fetch_assoc();
?>
	<form id='zakladka_child' method="post" action="edytowanie_zakladka.php">
	<p style='display:inline-block;margin: 0px 0px 0px 22px;'>Tytuł : </p><input name='nazwa' type='text'  maxlength='85' style='width:700px' value='<?php echo $row_zakladka_child['nazwa'] ?>'/><br>
	<center><input style='margin-left:0px' type='submit' value='Wprowadź zmiany'></input></center>
	<input name='parent' value='<?php echo $parent ?>' type='hidden'/><input name='child' value='<?php echo $child ?>' type='hidden'/></form>
<div id="news_list">	
	<center><article onClick='javascript:window.location="edit_zakladka.php?parent=<?php echo $parent ?>"'>ANULUJ</article></center>
</div>
</body>
</html>