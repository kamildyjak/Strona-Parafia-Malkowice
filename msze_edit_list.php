<?php 

	error_reporting(E_ALL & ~E_NOTICE);
	$servername = "parafiamalko.nazwa.pl";
	$username = "parafiamalko";
	$password = "Dyju711kamilphp";
	$dbname = "parafiamalko";
	
	$conn = new mysqli ($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");
	
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
		$sql_wyd = "SELECT id,malkowice,dunkowiczki,opis FROM wydarzenie";
		$wynik_wyd = $conn->query($sql_wyd);
		while($row_wyd = $wynik_wyd->fetch_assoc()){
			$append = '<center><h1>Potwierdź wykonanie operacji ! </h1><h2>Czy na pewno chcesz usunąć wydarzenie :</h2><h3>'. $row_wyd['opis']. ' ?</h3><article><a href="delete_wyd.php?id='. $row_wyd['id'].'">TAK</a></article><article><a href="javascript:delete_no()">NIE</a></article></center>';
				echo "case ". $row_wyd['id']. ": $('#potwierdz').append('". $append. "');
				$('#potwierdz').fadeIn(100);break;";
		}

		?>	
	}
}

</script>
<div id="header_list">
<center><p>Wybierz kościół</p></center>
</div>
<div id='panel_admin' class='article'>
<div id="potwierdz"></div>
</div>
<div id="news_list">
<li><p>Małkowice</p><a href='edit_msze.php?kosciol=malkowice'><img src='images/edit_icon_19.png'></a></li>
<li><p>Duńkowiczki</p><a href='edit_msze.php?kosciol=dunkowiczki'><img src='images/edit_icon_19.png'></a></li>
<br>
<?php

	$sql_wyd = "SELECT id,malkowice,dunkowiczki,opis FROM wydarzenie";
	$wynik_wyd = $conn->query($sql_wyd);
	while($row_wyd = $wynik_wyd->fetch_assoc()){
		echo "<li><p>". $row_wyd['opis']. "</p><a href='javascript:remove(". $row_wyd['id']. ");'><img src='images/trash_icon_19.png'></a><a href='edit_wyd.php?id=". $row_wyd['id']. "'><img src='images/edit_icon_19.png'></a></li>";
	}


?>
<center><li style="width:390px;"><a href='add_wydarzenie.php'><p style='color:#1e1c1a;margin:0px 20px'>WYSZCZEGÓLNIJ ŚWIĘTO/WYDARZENIE</p><img src='images/add_icon.png'></a></li>
<article onClick='javascript:parent.ukryj_panel_admin()'>ANULUJ</article></center>
</div>
</body>
</html>