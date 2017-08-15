<?php
	$menu_top = "SELECT id,nazwa FROM zakladki_menu";
	$wynik_menu_top = $conn->query($menu_top);
	
	$sql_ile = "SELECT COUNT(*) FROM zakladki_menu";
	$wynik_ile = $conn->query($sql_ile);
	$ile_zakladek = $wynik_ile->fetch_row();
	$ile_zakladek = (int)$ile_zakladek[0];
	echo "<script>console.log(". $ile_zakladek. ")</script>";
	$roznica = 962 - ($ile_zakladek*147);
	$marginesy = (int)($roznica/($ile_zakladek*2));
	$marginesy = $marginesy - 2;
	echo "<script>console.log(". $marginesy. ")</script>";
	
	$i=1;
	while($row_menu_top=$wynik_menu_top->fetch_assoc())
	{
		echo '<div id="menu_button" class="'.$i.'">
		<article>'. $row_menu_top['nazwa'] . '</article>';
		
		$menu_list = "SELECT id,nazwa,plik FROM menu_". $row_menu_top['id']. ";";
		$wynik_menu_list = $conn->query($menu_list);
		$row_menu_list = $wynik_menu_list->fetch_assoc();
		
		if($row_menu_list['plik']==""){
			$link = "strona.php?parent=". $row_menu_top['id']. "&child=". $row_menu_list['id']. "";
		}else{
			$link = $row_menu_list['plik'];
		}
		
		echo '<li style="background-image:url(images/menu_link_bg_top.png)"><a href="'. $link. '">'. $row_menu_list['nazwa']. '</a></li>';
		while($row_menu_list=$wynik_menu_list->fetch_assoc()){
			if($row_menu_list['plik']==""){
				$link = "strona.php?parent=". $row_menu_top['id']. "&child=". $row_menu_list['id']. "";
			}else{
				$link = $row_menu_list['plik'];
			}
			echo '<li><a href="'. $link. '">'. $row_menu_list['nazwa']. '</a></li>';
		}
		echo '</div>';
		$i++;
	}
	echo "<script>";
	for($a=0;$a<$i;$a++){
		echo "$('#menu_button.$a').css('margin-left','$marginesy').css('margin-right','$marginesy');";
	}
	echo "</script>";
?>	