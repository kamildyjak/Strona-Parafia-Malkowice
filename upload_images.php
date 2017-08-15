<?php

$servername = "parafiamalko.nazwa.pl";
$username = "parafiamalko";
$password = "Dyju711kamilphp";
$dbname = "parafiamalko";
	
$page_id = $_POST["id"];
$parent = $_POST["parent"];
$child = $_POST["child"];

$conn = new mysqli ($servername, $username, $password, $dbname);
$conn->set_charset("utf8");

$sql = "SELECT id,temat,tresc,galeria from $page_id ORDER BY id DESC LIMIT 1";
$wynik = $conn->query($sql);
$row = $wynik->fetch_assoc();

if($row['temat']==""){
	$news_id = $row['id'];
	$czynnosc = "UPDATE";
}else{
	$news_id = $row['id'] + 1;
	$czynnosc = "INSERT";
}

$extensions = array('jpeg', 'jpg', 'png');
$count = 0;

if ($_SERVER['REQUEST_METHOD'] == 'POST' and isset($_FILES['thumbs']))
{
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
		$galeria = "";
		foreach ($_FILES['thumbs']['name'] as $f => $name) {
			$name1 = $_FILES['images']['name'][$f];
			$full_path = $page_id. "_". $news_id . "_". $name1;
			$thumb_path = $page_id. "_". $news_id . "_". $name;
			$a_galeria =  '<a class="option" href="uploads/full/'. $full_path. '" rel="shadowbox['. $news_id. ']"><img src="uploads/thumbs/'. $thumb_path. '" style="cursor:zoom-in"></a><k></k>';
			$galeria = $galeria.$a_galeria;
							
			move_uploaded_file($_FILES["thumbs"]["tmp_name"][$f], "uploads/thumbs/".$thumb_path);
			move_uploaded_file($_FILES["images"]["tmp_name"][$f], "uploads/full/".$full_path);
			$count++;
		}
		if($name != ""){
			if($czynnosc=="UPDATE"){
				$sql_thumbs = "UPDATE $page_id SET galeria='$galeria' WHERE id='$news_id'";
				$conn->query($sql_thumbs);
			}else{
				$sql_thumbs = "INSERT INTO $page_id (galeria) VALUES ('$galeria')";
				$conn->query($sql_thumbs);
			}
		}
	}
}

echo json_encode(array('count' => $count));

?>