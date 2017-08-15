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
	$video_id = $_POST['id'];

	$conn = new mysqli ($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");
	
	if($tytul=="" or $link_youtube==""){
		echo 'komunikat_error("Wypełnij wszystkie pola !");
		setTimeout(function(){window.location="edit_video.php?id='. $video_id. '"},2000)';
		
	}else{
		$link_youtube_auto = $link_youtube;
		$autoplay = strpos($link_youtube,"?autoplay=1");
		if($autoplay==FALSE){
			$link_youtube_auto = $link_youtube_auto."?autoplay=1";
		}
	
		$sql = "UPDATE video_list SET temat='$tytul',link='$link_youtube_auto' WHERE id='$video_id'";
		
		if($conn->query($sql)==TRUE){
			echo 'komunikat_ok("Zmiany zostały wprowadzone !");
			setTimeout(function(){window.location="edit_video.php?id='. $video_id. '"},2000)';
		}else{
			echo 'komunikat_error("Błąd operacji !");
			setTimeout(function(){window.location="edit_video.php?id='. $video_id. '"},2000)';
		}
	}

?>
});
</script>
</body>
</html>