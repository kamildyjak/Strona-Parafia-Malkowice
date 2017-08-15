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

	
	$sql_video_list = "SELECT id,temat FROM video_list";
	$wynik_video_list = $conn->query($sql_video_list);

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
			$sql_usun_list = "SELECT id,temat FROM video_list";
			$wynik_usun_list = $conn->query($sql_usun_list);
			while($row_usun_list=$wynik_usun_list->fetch_assoc()){
				$append = '<center><h1>Potwierdź wykonanie operacji ! </h1><h2>Czy na pewno chcesz usunąć film o tytule :</h2><h3>'. $row_usun_list['temat']. ' ?</h3><article><a href="delete_video.php?id='. $row_usun_list['id'].'">TAK</a></article><article><a href="javascript:delete_no()">NIE</a></article></center>';
				echo "case ". $row_usun_list['id']. ": $('#potwierdz').append('". $append. "');
				$('#potwierdz').fadeIn(100);break;";
			}
		?>	
	}
	
}
</script>
<div id="header_list">
<center><p>Edytuj listę filmów</p></center>
</div>
<div id='panel_admin' class='article'>
<div id="potwierdz"></div>
</div>
<div id="news_list">

<?php 
	
	while($row_video_list = $wynik_video_list->fetch_assoc()){
		$video_id = $row_video_list['id'];
		echo "<li><p>". $row_video_list['temat']. "</p><a href='javascript:remove(". $video_id. ");'><img src='images/trash_icon_19.png'></a><a href='edit_video.php?id=". $video_id. "'><img src='images/edit_icon_19.png'></a></li>";
	}
?>
<center><li style="width:200px"><a href='add_video.php'><p style='color:#1e1c1a;margin:0px 36px'>DODAJ FILM</p><img src='images/add_icon.png'></a></li>
<center><article onClick='javascript:parent.ukryj_panel_admin()'>ANULUJ</article><center>
</div>
</body>
</html>