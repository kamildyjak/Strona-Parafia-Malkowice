<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body style="background-image:none">
<?php 
$servername = "parafiamalko.nazwa.pl";
$username = "parafiamalko";
$password = "Dyju711kamilphp";
$dbname = "parafiamalko";
$conn = new mysqli ($servername, $username, $password, $dbname);
$sql = "SELECT id, data, autor, tresc FROM ksiega_gosci ORDER BY id DESC LIMIT 8"; 
$conn->set_charset("utf8"); 
?>
</body>
<div id="tresc" class="pelna" style="margin:0px 0px 0px 22px">
	<div class="video_link">
		<?php
			$sql_link = "SELECT id,temat FROM video_list";
			$wynik_link = $conn->query($sql_link);
			while($row_link = $wynik_link->fetch_assoc()){
				echo '<li><a target="_parent" href="video.php?vid_id='. $row_link['id']. '">'. $row_link['temat']. '"</a></li>';
			}
		?>
	</div>
</div>
</html>