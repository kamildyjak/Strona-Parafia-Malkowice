<?php
	$sql_ile = "SELECT COUNT(*) FROM $page_id";
	$wynik_ile = $conn->query($sql_ile);
	$ile_news = $wynik_ile->fetch_row();
	$ile_stron = (int)($ile_news[0]/5);
	if($ile_news[0] % 5 !=0 and $ile_stron!=0){
		$ile_stron++;
	}
	$i=1;

?>
<div id="pages">
<center>
	<?php
	
	while($i<=$ile_stron){
		if($i==$page){
			echo "<li style='background-color:#645E55;  box-shadow: 0px 0px 15px 1px rgba(72, 71, 69, 1);'><a href='strona.php?parent=".$parent."&child=".$child. "&page=".$i."'><p>".$i."</p></a></li>";
		}else{
			echo "<li><a href='strona.php?parent=".$parent."&child=".$child. "&page=".$i."'><p>".$i."</p></a></li>";
		}
		$i++;
	}

	?>
<center>	
</div>