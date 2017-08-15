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
	$news_id = $_GET['id'];
	$remove_id = $_GET['remove'];
	
	session_start();
	if ( !isset( $_SESSION['admin'] ) || time() - $_SESSION['login_time'] > 1200){
		$admin = "no";
		session_destroy();
	}else{
		$admin = "yes";
		$_SESSION['login_time'] = time();
	}
	
	$page_id = "menu_". $parent. "_". $child. "";
	
	$sql_edit_news = "SELECT galeria FROM $page_id WHERE id='$news_id'";
	$wynik_edit_news = $conn->query($sql_edit_news);
	$row_edit_news = $wynik_edit_news->fetch_assoc();
	$zdjecia = explode("<k></k>", $row_edit_news['galeria']);
	$ile_zdjec = count($zdjecia);
	$ile_zdjec--;
	
	$zdjecia[$remove_id]="";
	$galeria_new="";
	for($i=0;$i<$ile_zdjec;$i++){
		if($zdjecia[$i]!=""){
			$galeria_new = $galeria_new.$zdjecia[$i]."<k></k>";
		}
	}
	

	$sql_galeria = "UPDATE $page_id SET galeria='$galeria_new' WHERE id='$news_id'";
	$conn->query($sql_galeria);
	echo "<script>window.location='edit_news.php?parent=". $parent. "&child=". $child."&id=". $news_id. "'</script>";
?>