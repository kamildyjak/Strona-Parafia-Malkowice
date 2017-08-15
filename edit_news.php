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
	
	session_start();
	if ( !isset( $_SESSION['admin'] ) || time() - $_SESSION['login_time'] > 1200){
		$admin = "no";
		session_destroy();
	}else{
		$admin = "yes";
		$_SESSION['login_time'] = time();
	}
	
	$page_id = "menu_". $parent. "_". $child. "";
	
	$sql_edit_news = "SELECT temat,tresc,galeria FROM $page_id WHERE id='$news_id'";
	$wynik_edit_news = $conn->query($sql_edit_news);
	$row_edit_news = $wynik_edit_news->fetch_assoc();
	$zdjecia = explode("<k></k>", $row_edit_news['galeria']);
	$ile_zdjec = count($zdjecia);
	$ile_zdjec--;
	
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

function remove_news(get_cel){
	var cel = get_cel;
	
	document.getElementById("potwierdz").innerHTML = "";
		<?php
			$append = '<center><h1>Potwierdź wykonanie operacji ! </h1><h2>Czy na pewno chcesz usunąć wiadomość o tytule :</h2><h3>'.$row_edit_news['temat'].' ?</h3><article><a onClick="parent.to_top()" href="delete_news.php?parent='. $parent.'&child='. $child. '&id='. $news_id.'">TAK</a></article><article><a href="javascript:delete_no()">NIE</a></article></center>';
			echo "$('#potwierdz').append('". $append. "');
			$('#potwierdz').css('height','170px').css('margin-top','-85px');
			$('#potwierdz').fadeIn(100);";
		?>	
	
}

$(function(){
	$( "form" ).submit(function() {
		parent.to_top();
    return;
  });
	
})
</script>
<div id='panel_admin' class='article'>
<div id="potwierdz"></div>
</div>
<?php
	echo "<center><p style='font-size: 20px;margin-top: 10px;'><b>Edycja wiadomości</b><p></center>
	<form method='post' action='edytowanie_newsa.php' autocomplete='off' enctype='multipart/form-data'>
	<p style='display:inline-block;margin: 0px 0px 0px 22px;'>Tytuł :</p><input name='tytul' type='text'  maxlength='85' style='width:700px' value='".$row_edit_news['temat']."'/><br>
	<p style='margin: 20px 0px 0px 22px;'>Treść (kod HTML) : </p><textarea name='tresc_html'  style='width:800px;height:300px;max-width:855px'>".$row_edit_news['tresc']."</textarea>
	<p style='display: inline-block;margin: 0px 0px 0px 22px;'>Wybierz zdjęcia, które są umieszczone w tekście (aktualizacja):</p><input type='file' name='files[]' multiple='multiple' accept='image/*'/>
	<center><input style='margin-left:0px' type='submit' value='Wprowadź zmiany'></input></center>
	<input name='zmien' value='tresc' style='visibility:hidden;width:0px;height:0px'/><input name='id' value='". $news_id. "' style='visibility:hidden;width:0px;height:0px'/><input name='parent' value='". $parent. "' style='visibility:hidden;width:0px;height:0px'/><input name='child' value='". $child. "' style='visibility:hidden;width:0px;height:0px'/></form>";
	
	echo "<center>";
	if($ile_zdjec!=0){
		echo "<p style='font-size: 17px;margin-top: 10px;'><b>Galeria zdjęć</b><p>
		<div class='zdjecia'>";
		for($i =0; $i<$ile_zdjec; $i++){
			echo "<div id='remove_img'>";
			echo $zdjecia[$i];
			echo "<center><div class='remove_button'><center><a href='javascript:remove(" .$i. ");'><p>Usuń</p></a></center></div></center>
			</div>";
		}
		echo "</div>";
	}
	echo "<p style='font-size: 17px;margin-top: 25px;'>Dodaj zdjęcia do galerii<p>
	</center>
	<form method='post' action='edytowanie_newsa.php' autocomplete='off' enctype='multipart/form-data'>
	<p style='display:inline-block;margin:0px 0px 0px 22px;width: 250px;'>Wybierz miniaturki zdjęć do galerii :</p><input type='file' name='thumbs[]' multiple='multiple' accept='image/*'/><br>
	<p style='display:inline-block;margin:0px 0px 0px 22px;width: 250px;'>Wybierz zdjęcia do galerii :</p><input type='file' name='images[]' multiple='multiple' accept='image/*'/>
	<center><input style='margin-left:0px' type='submit' value='Dodaj zdjęcia !'></input></center>
	<input name='zmien' value='galeria' style='visibility:hidden;width:0px;height:0px'/><input name='id' value='". $news_id. "' style='visibility:hidden;width:0px;height:0px'/><input name='parent' value='". $parent. "' style='visibility:hidden;width:0px;height:0px'/><input name='child' value='". $child. "' style='visibility:hidden;width:0px;height:0px'/></form>";
	
?>
<center>
<div id='panel_admin' class='edytowanie'>
<?php echo "<article style='margin-right:20px !important;box-shadow: 0px 0px 7px 0px rgba(131, 6, 6, 1);'><a href='javascript:remove_news();' style='text-decoration:none;color:#1e1c1a;'>USUŃ WIADOMOŚĆ</a></article><article><a onClick='javascript:parent.to_top()' style='text-decoration:none;color:#1e1c1a;' href='news_list.php?parent=". $parent. "&child=". $child. "'>ANULUJ</a></article>"; ?>
<div>
</center>
</body>
</html>