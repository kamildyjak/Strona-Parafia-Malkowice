<?php 

	error_reporting(E_ALL & ~E_NOTICE);
	$servername = "parafiamalko.nazwa.pl";
	$username = "parafiamalko";
	$password = "Dyju711kamilphp";
	$dbname = "parafiamalko";
	
	$conn = new mysqli ($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");
	$video_id = $_GET['id'];
	
	session_start();
	if ( !isset( $_SESSION['admin'] ) || time() - $_SESSION['login_time'] > 1200){
		$admin = "no";
		session_destroy();
	}else{
		$admin = "yes";
		$_SESSION['login_time'] = time();
	}
	
	$sql_edit_video = "SELECT id,temat,link FROM video_list WHERE id='$video_id'";
	$wynik_edit_video = $conn->query($sql_edit_video);
	$row_edit_video = $wynik_edit_video->fetch_assoc();
	
?>
<html>
<head>
<meta charset="UTF-8" />
<link rel="stylesheet" type="text/css" href="style.css"/>
<link rel="stylesheet" type="text/css" href="style_edit_list.css"/>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css" href="js/shadowbox/shadowbox.css">
<script type="text/javascript" src="js/shadowbox/shadowbox.js"></script>
</head>
<body style="background-image: url(images/body_bg.jpg);margin : 0;min-height:210px">
<script type="text/javascript">
Shadowbox.init({
	handleOversize: "resize",
	modal: true
});

function delete_no(){
	$('#potwierdz').fadeOut(100);
}

function remove(get_cel){
	var cel = get_cel;
	
	document.getElementById("potwierdz").innerHTML = "";
	switch (cel){
		<?php
			for($i=0;$i<$ile_zdjec;$i++){
				$append = '<center><h1>Potwierdź wykonanie operacji ! </h1><h2>Czy na pewno chcesz usunąć to zdjęcie ?</h2><article><a href="remove_img.php?parent='. $parent.'&child='. $child. '&id='. $news_id. '&remove='. $i. '">TAK</a></article><article><a href="javascript:delete_no()">NIE</a></article></center>';
				echo "case ". $i. ": $('#potwierdz').append('". $append. "');
				$('#potwierdz').css('height','145px').css('margin-top','-72px');
				$('#potwierdz').fadeIn(100);break;";
			}
		?>	
	}
}

$(function(){
	$( "form" ).submit(function() {
		parent.to_top();
    return;
  });
	
})
</script>
<div id="header_list">
<center><p>Edytuj - <?php echo $row_edit_video['temat'] ?></p></center>
</div>
<div id='panel_admin' class='article'>
<div id="potwierdz"></div>
</div>

<div id="panel_admin" class="news">
	<form method='post' action='edytowanie_filmu.php' autocomplete='off'>
	<p style='display:inline-block;margin: 15px 0px 5px 22px;'>Tytuł :</p><input name='tytul' type='text' value="<?php echo $row_edit_video['temat'] ?>" maxlength='85' style='margin-top:0px;width:800px'/><br>
	<p style='display:inline-block;margin: 15px 0px 5px 22px;'>Link do filmu na YouTube :</p><input name='link_youtube' type='text' value='<?php echo $row_edit_video['link'] ?>' style='margin-top:0px;width:800px'/>
	<input name='id' type='text' value='<?php echo $video_id ?>' style="visibility:hidden;display:none"/>
	<center>
		<input type='submit' value='ZMIEŃ !' style='margin-bottom: 15px;'/>
		<article><a href='video_edit.php' style="text-decoration:none;color:#1e1c1a;">ANULUJ</a></article>
		
	</center>
	</form>
</div>
</body>
</html>