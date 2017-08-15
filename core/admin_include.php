<?php
error_reporting(0);
echo 'function edit(){$("#okno_admin.edit_all").css("visibility","visible").css("display","block");$("#admin_bg").css("visibility","visible").css("display","block");to_top();}
function add_news(){$("#okno_admin.edit_all").css("visibility","visible").css("display","block");$("#admin_bg").css("visibility","visible").css("display","block");document.getElementById("edit_all").src ="add_news.php?parent='. $parent. '&child='. $child. '";to_top();}
function edit_news_list(){$("#okno_admin.edit_all").css("visibility","visible").css("display","block");$("#admin_bg").css("visibility","visible").css("display","block");document.getElementById("edit_all").src ="news_list.php?parent='. $parent. '&child='. $child. '";to_top();}
function ksiega_edit(){edit();document.getElementById("edit_all").src = "ksiega_list_edit.php";}
function ksiega_akceptuj(){edit();document.getElementById("edit_all").src = "ksiega_list_akcept.php";}
function add_video(){$("#okno_admin.edit_all").css("visibility","visible").css("display","block");$("#admin_bg").css("visibility","visible").css("display","block");document.getElementById("edit_all").src ="add_video.php";to_top();}
function edit_video_list(){$("#okno_admin.edit_all").css("visibility","visible").css("display","block");$("#admin_bg").css("visibility","visible").css("display","block");document.getElementById("edit_all").src ="video_edit.php";to_top();}
function edit_msze(){$("#okno_admin.edit_all").css("visibility","visible").css("display","block");$("#admin_bg").css("visibility","visible").css("display","block");document.getElementById("edit_all").src ="msze_edit_list.php";to_top();}';

$servername = "parafiamalko.nazwa.pl";
	$username = "parafiamalko";
	$password = "Dyju711kamilphp";
	$dbname = "parafiamalko";
	
	$conn = new mysqli ($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");
	
$sql_czy_akcept = "SELECT id FROM ksiega_gosci WHERE ok='nie'";
	$wynik = $conn->query($sql_czy_akcept);
	$ile_akcept = 0;
	
	while($row_akcept=$wynik->fetch_assoc()){
		$ile_akcept ++;
	}
	
	echo "console.log('Akcept: '+$ile_akcept);";
	
	if($ile_akcept!=0){
		echo '$("#ksiega_akcept").css("color","rgb(215, 75, 75)");';
	}
?>
