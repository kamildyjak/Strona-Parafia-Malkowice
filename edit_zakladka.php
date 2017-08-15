<?php 

	error_reporting(E_ALL & ~E_NOTICE);
	$servername = "parafiamalko.nazwa.pl";
	$username = "parafiamalko";
	$password = "Dyju711kamilphp";
	$dbname = "parafiamalko";
	
	$conn = new mysqli ($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");
	
	$parent = $_GET['parent'];
	
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
	$wynik_parent_name = $conn->query($sql_parent_name);
	$row_parent_name = $wynik_parent_name->fetch_assoc();

	

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
<script type="text/javascript">
function delete_no(){
	$('#potwierdz').fadeOut(100);
}

function link(){
	window.location='delete_zakladka.php?parent=<?php echo $zakladka_id.'&child='. $row_usun_list['id'] ?>';
}

function remove(get_cel){
	var cel = get_cel;
	
	document.getElementById("potwierdz").innerHTML = "";
	switch (cel){
		<?php
			$sql_usun_list = "SELECT id,nazwa FROM $zakladka_id";
			$wynik_usun_list = $conn->query($sql_usun_list);
			while($row_usun_list=$wynik_usun_list->fetch_assoc()){
				$append = '<center><h1>Potwierdź wykonanie operacji ! </h1><h2>Czy na pewno chcesz usunąć zakładkę o tytule :</h2><h3>'. $row_usun_list['nazwa']. ' ?</h3><article onclick="javascript:link()">TAK</article><article onclick="javascript:delete_no()">NIE</button></center>';
				echo "case ". $row_usun_list['id']. ": $('#potwierdz').append('". $append. "');
				$('#potwierdz').fadeIn(100);break;";
			}
		?>	
	}
	
	
}
</script>

<div id="header_list">
<center><p><?php echo $row_parent_name['nazwa'] ?></p></center>
</div>
<div id='panel_admin' class='article'>
<div id="potwierdz"></div>
</div>

	<form id='zakladka' method="post" action="edytowanie_zakladka.php">
	<p style='display:inline-block;margin: 0px 0px 0px 22px;'>Tytuł : </p><input name='nazwa' type='text' autocomplete='off'  maxlength='85' style='width:700px' value='<?php echo $row_parent_name['nazwa'] ?>'/><br>
	<center><input style='margin-left:0px' type='submit' value='Wprowadź zmiany'></input></center>
	<input name='parent' value='<?php echo $parent ?>' type='hidden'/></form>
	
<div id="news_list">

<?php 
	$menu_top = "SELECT id,nazwa,plik FROM $zakladka_id";
	$wynik_menu_top = $conn->query($menu_top);
	while($row_menu_li=$wynik_menu_top->fetch_assoc()){
		echo "<li><p>". $row_menu_li['nazwa']. "</p><a href='javascript:remove(". $row_menu_li['id']. ");'><img src='images/trash_icon_19.png'></a><a href='edit_zakladka_child.php?parent=".$parent. "&child=". $row_menu_li['id']. "'><img src='images/edit_icon_19.png'></a></li>";
	}
?>
<center><li style="width:220px"><a href='add_zakladka.php?parent=<?php echo $parent ?>'><p style='color:#1e1c1a;margin:0px 20px'>DODAJ ZAKŁADKĘ</p><img src='images/add_icon.png'></a></li>
<article onClick='javascript:window.location="menu_list.php"'>ANULUJ</article></center>
</div>
</body>
</html>