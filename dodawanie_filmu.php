<html style="visibility:hidden">
<head>
<link rel="stylesheet" type="text/css" href="style_error.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/komunikaty.js"></script>
</head>
<body style="height:200px">
<div id="komunikat" class="error"></div>
<div id="komunikat" class="ok"></div>
<script type="text/javascript">
$(function(){
	
<?php
	error_reporting(E_ALL & ~E_NOTICE);
	$servername = "parafiamalko.nazwa.pl";
	$username = "parafiamalko";
	$password = "Dyju711kamilphp";
	$dbname = "parafiamalko";
	
	$tytul = $_POST["tytul"];
	$link_youtube = $_POST["link_youtube"];

	$conn = new mysqli ($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");
	
	if($tytul=="" or $link_youtube==""){
		
		echo 'komunikat_error("Wypełnij wszystkie pola !");';
		echo 'setTimeout(function(){window.location="add_video.php"},2000)';
		
	}else{
		
		$link_youtube_auto = $link_youtube."?autoplay=1";
		$sql = "INSERT INTO video_list (temat,link) VALUES ('$tytul', '$link_youtube_auto');";
		
		if($conn->query($sql)==TRUE){
			$sql_link_return = "SELECT id FROM video_list ORDER BY id DESC LIMIT 1";
			$wynik_link_retun = $conn->query($sql_link_return);
			$row_link_return = $wynik_link_retun->fetch_assoc();
			$id_return = $row_link_return['id']; 
			
			echo 'komunikat_ok("Film został dodany !");
			setTimeout(function(){parent.window.location="video.php?vid_id='. $id_return. '"},2000)';
		}else{
			echo 'komunikat_error("Błąd operacji !");
			setTimeout(function(){window.location="add_video.php"},2000)';
		}
	}

?>
});
</script>
</body>
</html>