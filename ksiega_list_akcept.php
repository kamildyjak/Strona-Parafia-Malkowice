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
<script type="text/javascript">
function delete_no(){
	$('#potwierdz').fadeOut(100);
}

function akceptuj(get_cel){
	var cel = get_cel;
	
	document.getElementById("potwierdz").innerHTML = "";
	switch (cel){
		<?php
			$sql_ksiega_list = "SELECT id,data,autor,tresc FROM ksiega_gosci WHERE ok='nie'  ORDER BY id DESC";
			$wynik_ksiega_list = $conn->query($sql_ksiega_list);
			while($row_ksiega_list=$wynik_ksiega_list->fetch_assoc()){
				$append = '<center><h1>Potwierdź wykonanie operacji ! </h1><h2>Czy na pewno chcesz <u><b>zaakceptować</b></u> wpis autora :</h2><h3>'. $row_ksiega_list['autor']. ' ?</h3><article><a href="akcept_ksiega.php?id='. $row_ksiega_list['id'].'">TAK</a></article><article><a href="javascript:delete_no()">NIE</a></article></center>';
					echo "case ". $row_ksiega_list['id']. ": $('#potwierdz').append('". $append. "');
					$('#potwierdz').fadeIn(100);break;";
				
			}
		?>	
	}

}

function remove(get_cel){
	var cel = get_cel;
	
	document.getElementById("potwierdz").innerHTML = "";
	switch (cel){
		<?php
			$sql_ksiega_list = "SELECT id,data,autor,tresc FROM ksiega_gosci WHERE ok='nie' ORDER BY id DESC";
			$wynik_ksiega_list = $conn->query($sql_ksiega_list);
			while($row_ksiega_list=$wynik_ksiega_list->fetch_assoc()){
				$append = '<center><h1>Potwierdź wykonanie operacji ! </h1><h2>Czy na pewno chcesz <u><b>usunąć</b></u> wpis autora :</h2><h3>'. $row_ksiega_list['autor']. ' ?</h3><article><a href="delete_ksiega.php?id='. $row_ksiega_list['id'].'&akcept=tak">TAK</a></article><article><a href="javascript:delete_no()">NIE</a></article></center>';
				echo "case ". $row_ksiega_list['id']. ": $('#potwierdz').append('". $append. "');
				$('#potwierdz').fadeIn(100);break;";
			}
		?>	
	}

}
</script>
<div id="header_list">
<center><p>Lista wpisów oczekujących na akceptację</p></center>
</div>
<div id='panel_admin' class='article'>
<div id="potwierdz"></div>
</div>
<div id="news_list">

<?php 
$sql_ksiega_li = "SELECT id,data,autor,tresc FROM ksiega_gosci WHERE ok='nie' ORDER BY id DESC";
	$wynik_ksiega_li = $conn->query($sql_ksiega_li);
	while($row_ksiega_li=$wynik_ksiega_li->fetch_assoc()){
		$ksiega_id = $row_ksiega_li['id'];
			echo "<li style='height:auto'><p>Autor : <b>".$row_ksiega_li['autor']."</b></p><p>". $row_ksiega_li['temat']. "</p><p style='margin-left:15px'>/".$row_ksiega_li['data']."/</p><a href='javascript:remove(". $ksiega_id. ");' style='float:right'><img src='images/trash_icon_19.png'></a><a href='javascript:akceptuj(". $ksiega_id. ");'><img src='images/add_icon.png'></a>";
			echo "<br><p><br><b>Treść: </b></p><br><p style='padding-left:15px'>".$row_ksiega_li['tresc']."</p>";
			echo "</li>";
	}
?>
<center><article onClick='javascript:parent.ukryj_panel_admin()'>ANULUJ</article><center>
</div>
</body>
</html>