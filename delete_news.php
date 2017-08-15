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
	
	$page_id = "menu_". $parent. "_". $child. "";
	
	session_start();
	if ( !isset( $_SESSION['admin'] ) || time() - $_SESSION['login_time'] > 1200){
		$admin = "no";
		session_destroy();
	}else{
		$admin = "yes";
		$_SESSION['login_time'] = time();
	}
	
	$sql = "DELETE FROM $page_id WHERE id='$news_id'";
	$sql_aktu = "DELETE FROM aktualnosci WHERE news_id='$news_id' AND parent='$parent' AND child='$child'";

?>
<html>
<head>
<meta charset="UTF-8" />
<link rel="stylesheet" type="text/css" href="style_error.css">
<script type="text/javascript" src="js/komunikaty.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
</head>
<body style="background-image: url(images/body_bg.jpg);margin : 0;min-height:210px">
<div id="komunikat" class="error"></div>
<div id="komunikat" class="ok"></div>
<script type="text/javascript">
$(function(){
<?php
	if($conn->query($sql)==TRUE){
		$conn->query($sql_aktu);
		echo 'komunikat_ok("Wiadomość została usunięta !");';
		echo "setTimeout(function(){window.parent.document.getElementById('edit_all').src='news_list.php?parent=". $parent. "&child=". $child."'},1500);";
		
	}else{
		echo 'komunikat_error("Błąd operacji !");';
		echo "setTimeout(function(){window.parent.document.getElementById('edit_all').src='news_list.php?parent=". $parent. "&child=". $child."'},1500);";
	}
?>
});
</script>
</body>
</html>