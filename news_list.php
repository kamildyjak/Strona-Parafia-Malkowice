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
			$sql_usun_list = "SELECT id,temat FROM $page_id ORDER BY id DESC";
			$wynik_usun_list = $conn->query($sql_usun_list);
			while($row_usun_list=$wynik_usun_list->fetch_assoc()){
				$append = '<center><h1>Potwierdź wykonanie operacji ! </h1><h2>Czy na pewno chcesz usunąć wiadomość o tytule :</h2><h3>'. $row_usun_list['temat']. ' ?</h3><article><a href="delete_news.php?parent='. $parent.'&child='. $child. '&id='. $row_usun_list['id'].'">TAK</a></article><article><a href="javascript:delete_no()">NIE</a></article></center>';
				echo "case ". $row_usun_list['id']. ": $('#potwierdz').append('". $append. "');
				$('#potwierdz').fadeIn(100);break;";
			}
		?>	
	}

}
</script>
<div id="header_list">
<?php echo "<center><p>".$row_parent_name['nazwa']." -> ". $row_child_name['nazwa']."</p></center>"; ?>
</div>
<div id='panel_admin' class='article'>
<div id="potwierdz"></div>
</div>
<div id="news_list">

<?php 
	$sql_news_li = "SELECT id,temat,data FROM $page_id ORDER BY id DESC";
	$wynik_news_li = $conn->query($sql_news_li);
	while($row_news_li=$wynik_news_li->fetch_assoc()){
		$news_id = $row_news_li['id'];
		echo "<li><p>". $row_news_li['temat']. "</p><p style='margin-left:15px'>/".$row_news_li['data']."/</p><a href='javascript:remove(". $news_id. ");'><img src='images/trash_icon_19.png'></a><a href='edit_news.php?parent=". $parent. "&child=". $child."&id=". $news_id. "'><img src='images/edit_icon_19.png'></a></li>";
	}
?>
<center><article onClick='javascript:parent.ukryj_panel_admin()'>ANULUJ</article></center>
</div>
</body>
</html>