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

function remove(get_cel){
	var cel = get_cel;
	
	document.getElementById("potwierdz").innerHTML = "";
	switch (cel){
		<?php
			$sql_usun_list = "SELECT id,nazwa FROM zakladki_menu";
			$wynik_usun_list = $conn->query($sql_usun_list);
			while($row_usun_list=$wynik_usun_list->fetch_assoc()){
				$append = '<center><h1>Potwierdź wykonanie operacji ! </h1><h2>Czy na pewno chcesz usunąć zakładkę o tytule :</h2><h3>'. $row_usun_list['nazwa']. ' ?</h3><article><a href="delete_zakladka.php?parent='. $row_usun_list['id']. '">TAK</a></article><article><a href="javascript:delete_no()">NIE</a></article></center>';
				echo "case ". $row_usun_list['id']. ": $('#potwierdz').append('". $append. "');
				$('#potwierdz').fadeIn(100);break;";
			}
		?>	
	}
	
	
}
</script>
<div id="header_list">
<center><p>Lista zakładek menu głównego</p></center>
</div>
<div id='panel_admin' class='article'>
<div id="potwierdz"></div>
</div>
<div id="news_list">

<?php 
	$menu_top = "SELECT id,nazwa FROM zakladki_menu";
	$wynik_menu_top = $conn->query($menu_top);
	$ile_zakladek = 0;
	while($row_menu_li=$wynik_menu_top->fetch_assoc()){
		$ile_zakladek++;
		echo "<li><p>". $row_menu_li['nazwa']. "</p><a href='javascript:remove(". $row_menu_li['id']. ");'><img src='images/trash_icon_19.png'></a><a href='edit_zakladka.php?parent=". $row_menu_li['id']. "'><img src='images/edit_icon_19.png'></a></li>";
	}

	if($ile_zakladek <6){
		echo "<center><li style='width:220px'><a href='add_zakladka.php'><p style='color:#1e1c1a;margin:0px 20px'>DODAJ ZAKŁADKĘ</p><img src='images/add_icon.png'></a></li></center>";
	}
?>
<center><article onClick='javascript:parent.ukryj_panel_admin()'>ANULUJ</article><center>
</div>
</body>
</html>