<?php 

	error_reporting(E_ALL & ~E_NOTICE);
	$servername = "parafiamalko.nazwa.pl";
	$username = "parafiamalko";
	$password = "Dyju711kamilphp";
	$dbname = "parafiamalko";
	
	$conn = new mysqli ($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");
	
	$video_id = $_GET['id'];
	
	$page_id = "menu_". $parent. "_". $child. "";
	
	session_start();
	if ( !isset( $_SESSION['admin'] ) || time() - $_SESSION['login_time'] > 1200){
		$admin = "no";
		session_destroy();
	}else{
		$admin = "yes";
		$_SESSION['login_time'] = time();
	}
	
	$sql = "DELETE FROM video_list WHERE id='$video_id'";

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
		echo 'komunikat_ok("Film został usunięty !");';
		echo "setTimeout(function(){window.location='video_edit.php'},1500);";
		
	}else{
		echo 'komunikat_error("Błąd operacji !");';
		echo "setTimeout(function(){window.location='video_edit.php'},1500);";
	}
?>
});
</script>

</body>
</html>