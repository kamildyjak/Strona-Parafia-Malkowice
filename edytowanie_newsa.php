<html>
<head>
<link rel="stylesheet" type="text/css" href="style_error.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/komunikaty.js"></script>
</head>
<body style="height:200px">
<div id="komunikat" class="error"></div>
<div id="komunikat" class="ok"></div>
<div id="loading" ><center><p>Trwa wprowadzanie zmian !</p><img src="images/loading1.gif"></center></div>
<script type="text/javascript">
$(function(){
	
<?php
	error_reporting(E_ALL & ~E_NOTICE);
	$servername = "parafiamalko.nazwa.pl";
	$username = "parafiamalko";
	$password = "Dyju711kamilphp";
	$dbname = "parafiamalko";
	
	$tytul = $_POST["tytul"];
	$tresc = $_POST["tresc_html"];
	$news_id = $_POST["id"];
	$parent = $_POST["parent"];
	$child = $_POST["child"];
	$zmien = $_POST["zmien"];
	
	$page_id = "menu_". $parent. "_". $child. "";

	$valid_formats = array("jpg", "png", "gif", "zip", "bmp");
	$path = "uploads/";
	
	$pojedynczy = "'";
	$podwojny = '"';
	$tresc_dodaj = strtr($tresc, $pojedynczy, $podwojny);
	
	$error = "";
	
	$return_link = "window.location='edit_news.php?parent=". $parent. "&child=". $child."&id=". $news_id. "";
	
	$conn = new mysqli ($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");

	if($zmien=="tresc"){
		$czy_zmieniony = strpos($tresc,"body{padding:0px 22px 0px 22px !important;}");
		if($czy_zmieniony==false){
			function str_insert($str, $search, $insert) {
				$index = strpos($str, $search); 
				if($index == false) {
				return '<html><head><style type="text/css"> body{padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;font-size:1em !important;background-color:transparent !important;}</style></head><body>'. $str. '</body></html>';
			}
			return substr_replace($str, $search.$insert, $index, strlen($search));
			}
			
			$tresc_zmian = str_insert($tresc_dodaj, '<head>', '<style type="text/css"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style>');
			$tresc_zmian = str_replace(array("\r\n", "\r", "\n"), "<br />", $tresc_zmian);
		}else{
			$tresc_zmian = str_replace(array("\r\n", "\r", "\n"), "<br />", $tresc);
		}
		
		if(isset($_POST) and $_SERVER['REQUEST_METHOD'] == "POST"){
			$tresc_zmian_path = $tresc_zmian;
			foreach ($_FILES['files']['name'] as $f => $name) {
				$name_new = $page_id. "_". $news_id . "_". $name;
				$szukaj = 'src="images/'. $name. '"';
				$zamien = 'src="uploads/'. $name_new. '"';
				$tresc_zmian_path = str_replace($szukaj,$zamien,$tresc_zmian_path);
				
				move_uploaded_file($_FILES["files"]["tmp_name"][$f], $path.$name_new);
			}
			$tresc_zmian_path = str_replace('<a','<a target="_parent"',$tresc_zmian_path);
			$sql_zmian_path = "UPDATE $page_id SET tresc='$tresc_zmian_path',temat='$tytul' WHERE id='$news_id'";
			$sql_zmian_temat_aktualnosci = "UPDATE aktualnosci SET tytul='$tytul' WHERE news_id='$news_id' AND parent='$parent' AND child='$child'";
			$conn->query($sql_zmian_temat_aktualnosci);
		}
		
		if($conn->query($sql_zmian_path)==TRUE){
			echo 'komunikat_ok("Zmiany zostały wprowadzone !");
			setTimeout(function(){'.$return_link."'".'},2000)';
		}else{
			echo 'komunikat_error("Błąd operacji !");
			setTimeout(function(){'.$return_link."'".'},2000)';
		}
	}
	
	if($zmien=="galeria"){
		
		$sql_news_edit = "SELECT galeria FROM $page_id WHERE id='$news_id'";
		$wynik_news_edit = $conn->query($sql_news_edit);
		$row_news_edit = $wynik_news_edit->fetch_assoc();
		$zdjecia = $row_news_edit['galeria'];
		$thumbs_count = 0;
		$full_count = 0;
		$galeria = $zdjecia;
		
		$tresc_zmian_path = $tresc_zmian;
		
		if(isset($_POST) and $_SERVER['REQUEST_METHOD'] == "POST"){
		
			foreach ($_FILES['thumbs']['name'] as $f => $name) {
				if($name!=""){
					$thumbs_count++;
				}
			}
				
			foreach ($_FILES['images']['name'] as $f => $name) {
				if($name!=""){
					$full_count++;
				}
			}
				
			if($thumbs_count == $full_count){
				foreach ($_FILES['thumbs']['name'] as $f => $name) {
					$name1 = $_FILES['images']['name'][$f];
					$full_path = $page_id. "_". $news_id . "_". $name1;
					$thumb_path = $page_id. "_". $news_id . "_". $name;
					$a_galeria =  '<a class="option" href="uploads/full/'. $full_path. '" rel="shadowbox['. $news_id. ']"><img src="uploads/thumbs/'. $thumb_path. '" style="cursor:zoom-in"></a><k></k>';
					$galeria = $galeria.$a_galeria;
						
					move_uploaded_file($_FILES["thumbs"]["tmp_name"][$f], "uploads/thumbs/".$thumb_path);
					move_uploaded_file($_FILES["images"]["tmp_name"][$f], "uploads/full/".$full_path);
				}
				if($name != ""){
					$sql_galeria = "UPDATE $page_id SET galeria='$galeria' WHERE id='$news_id'";
					if($conn->query($sql_galeria)==TRUE){
						echo 'komunikat_ok("Zdjęcia zostały dodane !");
						setTimeout(function(){'.$return_link."'".'},2000)';
					}else{
						echo 'komunikat_error("Błąd operacji !");
						setTimeout(function(){'.$return_link."'".'},2000)';
					}
				}else{
					echo 'komunikat_error("Nie wybrałeś zdjęć !");
					setTimeout(function(){'.$return_link."'".'},2000)';
				}
			}else{
				echo 'komunikat_error("Ilości zdjęć nie zgadzają się !");
				setTimeout(function(){'.$return_link."'".'},2000)';
			}
					
		}
	}

?>
});
</script>
</body>
</html>