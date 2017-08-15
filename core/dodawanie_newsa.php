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
<div id="loading" ><center><p>Trwa dodawanie wiadomości !</p><img src="images/loading1.gif"></center></div>
<script type="text/javascript">

$(function(){
	
<?php
	error_reporting(E_ALL & ~E_NOTICE);
	$servername = "parafiamalko.nazwa.pl";
	$username = "parafiamalko";
	$password = "Dyju711kamilphp";
	$dbname = "parafiamalko";
	$dzisiaj = date("Y-m-d");
	
	$tytul = $_POST["tytul"];
	$tresc = $_POST["tresc_html"];
	$page_id = $_POST["id"];
	$parent = $_POST["parent"];
	$child = $_POST["child"];
	
	$valid_formats = array("jpg", "png", "gif", "zip", "bmp");
	$path = "uploads/";
	
	$pojedynczy = "'";
	$podwojny = '"';
	$tresc_dodaj = strtr($tresc, $pojedynczy, $podwojny);
	
	
	$return_link = "window.location='add_news.php?parent=". $parent. "&child=". $child. "";
	
	
	if($tytul==""){
		echo 'komunikat_error("Nie wprowadziłeś tytułu !");';
		echo 'setTimeout(function(){'.$return_link."'".'},2000)';
		
	}else{

		function str_insert($str, $search, $insert) {
			$index = strpos($str, $search); 
			if($index == false) {
			return '<html><head><style type="text/css"> body{padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;font-size:1em !important;background-color:transparent !important;}</style></head><body>'. $str. '</body></html>';
		}
		return substr_replace($str, $search.$insert, $index, strlen($search));
		}
		
		$tresc_zmian = str_insert($tresc_dodaj, '<head>', '<style type="text/css"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style>');
		
		$conn = new mysqli ($servername, $username, $password, $dbname);
		$conn->set_charset("utf8");
		
		$tresc_zmian = str_replace(array("\r\n", "\r", "\n"), "<br />", $tresc_zmian);

		$sql = "INSERT INTO $page_id (temat,tresc,data) VALUES ('$tytul', '$tresc_zmian','$dzisiaj');";
		
		if($conn->query($sql)==TRUE){
			$sql_news_id = "SELECT id FROM $page_id ORDER BY id DESC LIMIT 1";
			$wynik_news_id = $conn->query($sql_news_id);
			$row_news_id = $wynik_news_id->fetch_assoc();
			$news_id = $row_news_id['id']; 
			$link = "aktu.php?child=$child&parent=$parent&news_id=$news_id";
			$sql_aktu = "INSERT INTO aktualnosci (tytul,link,data,news_id,parent,child) VALUES ('$tytul','$link','$dzisiaj','$news_id','$parent','$child')";
			$conn->query($sql_aktu);
			$galeria = "";
			
			$tresc_zmian_path = $tresc_zmian;
			
			foreach ($_FILES['files']['name'] as $f => $name) {
				$name_new = $page_id. "_". $news_id . "_". $name;
				$szukaj = 'src="images/'. $name. '"';
				$zamien = 'src="uploads/'. $name_new. '"';
				$tresc_zmian_path = str_replace($szukaj,$zamien,$tresc_zmian_path);
				
				$szukaj = 'src="'. $name. '"';
				$zamien = 'src="uploads/'. $name_new. '"';
				$tresc_zmian_path = str_replace($szukaj,$zamien,$tresc_zmian_path);
					
				move_uploaded_file($_FILES["files"]["tmp_name"][$f], $path.$name_new);
			}
			$tresc_zmian_path = str_replace('<a','<a target="_parent"',$tresc_zmian_path);
			$sql_zmian_path = "UPDATE $page_id SET tresc='$tresc_zmian_path' WHERE id='$news_id'";
			$conn->query($sql_zmian_path);
			
			$thumbs_count = 0;
			$full_count = 0;
			
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
					if($conn->query($sql_galeria)==FALSE){
						echo 'komunikat_error("Błąd operacji !");
						setTimeout(function(){'.$return_link."'".'},2000)';
					}
				}
				echo 'komunikat_ok("Wiadomość została dodana !");
				setTimeout(function(){parent.ukryj_panel_admin()},2000)';
			}else{
				echo 'komunikat_error("Ilości zdjęć nie zgadzają się !");
				setTimeout(function(){window.location="edit_news.php?parent='. $parent. '&child='. $child.'&id='. $news_id. '"},2000)';
			}
						
		}else{
			echo 'komunikat_error("Błąd operacji !");
			setTimeout(function(){'.$return_link."'".'},2000)';
		}
	}

?>
});
</script>
</body>
</html>