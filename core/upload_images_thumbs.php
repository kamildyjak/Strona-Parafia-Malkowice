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
	$galeria = "";
	foreach ( $_FILES['thumbs']['name'] as $i => $name )
	{
		$name_new = $page_id. "_". $news_id . "_". $name;
		if ( !is_uploaded_file($_FILES['thumbs']['tmp_name'][$i]) )
			continue;

		if( !in_array(pathinfo($name, PATHINFO_EXTENSION), $extensions) )
			continue;

	    if( move_uploaded_file($_FILES["thumbs"]["tmp_name"][$i], "uploads/thumbs/".$name_new) )
	    	$count++;
		$a_galeria =  '<a class="option" href="uploads/full/'. $full_path. '" rel="shadowbox['. $news_id. ']"><img src="uploads/thumbs/'. $thumb_path. '" style="cursor:zoom-in"></a><k></k>';
		$galeria = $galeria.$a_galeria;
	}
	
	if($czynnosc=="UPDATE"){
		$sql_thumbs = "UPDATE $page_id SET galeria='$galeria' WHERE id='$news_id'";
		$conn->query($sql_thumbs);
	}else{
		$sql_thumbs = "INSERT INTO $page_id (galeria) VALUES ('$galeria')";
		$conn->query($sql_thumbs);
	}
}

echo json_encode(array('count' => $count));

?>