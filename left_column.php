<center>
<!--	<div id="menu_admin" class="left_column"></div> -->
</center>
<div id="dzisiaj_jest">
	<div class="header_dzisiaj"><p>Dzisiaj jest:</p></div>
	<center><div id="godzina" class="aktualna"></div></center>
	<div id="data">
		<center>
		<div class="dzien_nazwa"></div>
		<div class="pelna_data"></div>
		</center>
	</div>
<?php

	if($admin=="yes"){
		$append1 = "<article onClick='javascript:edit_msze()' style='width:190px'>Edytuj plan nabożeństw</article>";
		// echo '<script type="text/javascript">$("#menu_admin.left_column").append("'. $append1. '");</script>';
	}else{
		 echo '<script type="text/javascript">$("#menu_admin.left_column").css("display","none");</script>';
	}

	$sql_swieto = "SELECT dzien,miesiac,tresc FROM swieta";
	$wynik_swieto = $conn->query($sql_swieto);
	$swieto = "";
	$dzien = date("d");
	$miesiac = date("m");
	
	while($row_swieto = $wynik_swieto->fetch_assoc()){
		if($row_swieto['dzien']==$dzien and $row_swieto['miesiac']==$miesiac){
			$swieto = $row_swieto['tresc'];
		}
	}
	
	if($swieto != ""){
		echo '<div id="article_header" class="swieto" style="opacity:1;margin-top:10px">
			<div class="title">Święta / wydarzenia:</div>
			<script type="text/javascript">
				przesun_tytul("swieto");
			</script>
		</div>
		<div class="rozpiska" style="margin-top:-21px;padding-top:30px;margin-bottom: 10;opacity:1">
			<b><p>'.$swieto.'</p></b>
		</div>';
	}


?>		
</div>

<!--	
	<div id="msze">
		<div class="header_msze"><p>Nabożeństwa:</p></div>
<?php
	
	$dzien_index = date("w");
	$dzisiaj = date("d-m-Y");
	$wyd = false;
	
	$sql_wyd = "SELECT malkowice,dunkowiczki,opis FROM wydarzenie ORDER BY id DESC";
	$wynik_wyd = $conn->query($sql_wyd);
	
	while($row_wyd = $wynik_wyd->fetch_assoc()){
		echo '<center><b><p>'.$row_wyd['opis'].'</p></b></center>';
		if($row_wyd['malkowice'] != ""){
			$wyd = true;
			echo '<div id="article_header" class="malko" style="opacity:1;margin-top:0px">
			<div class="title"><b>Małkowice:</b></div>
				<script type="text/javascript">
					przesun_tytul("malko");
				</script>
			</div>
			<div class="rozpiska" style="padding-top:18px; opacity:1">';
	
			$wyd = explode("<br>", $row_wyd['malkowice']);
			$ile_wyd = count($wyd);
			$ile_wyd--;
			for($i = 0; $i < $ile_wyd ; $i++){
				echo '<p>'. $wyd[$i]. '</p>';
			}
			echo '</div>';
		}
		
		if($row_wyd['dunkowiczki'] != ""){
			$wyd = true;
			echo '<div id="article_header" class="dunk" style="opacity:1;margin-top:0px">
			<div class="title"><b>Duńkowiczki:</b></div>
				<script type="text/javascript">
					przesun_tytul("dunk");
				</script>
			</div>
			<div class="rozpiska" style="padding-top:18px; opacity:1">';
			
			$wyd = explode("<br>", $row_wyd['dunkowiczki']);
			$ile_wyd = count($wyd);
			$ile_wyd--;
			for($i = 0; $i < $ile_wyd ; $i++){
				echo '<p>'. $wyd[$i]. '</p>';
			}
			echo '</div>';
		}
	}
	
	
	if($wyd){
		
		echo '<center>
		<div class="porzadek_mszy" style="margin-top: 15px;"><p>Porządek nabożeństw</p>
			<img src="images/porzadek_rozwin.png" style="margin:-3px -144px 0px 0px"></a>
		</div>
		</center>';
		
		echo '<div id="rozwin_msze">';
	}
		echo '<center><b><p>Dni powszednie</p></b></center>';
		
		$sql_malk = "SELECT dni_powszednie FROM malkowice";
		$wynik_malk = $conn->query($sql_malk);
				
		echo '<div id="article_header" class="malko" style="opacity:1;margin-top:0px">
			<div class="title"><b>Małkowice:</b></div>
				<script type="text/javascript">
					przesun_tytul("malko");
				</script>
			</div>
			<div class="rozpiska" style="padding-top:18px; opacity:1">';
				
		$row_malk = $wynik_malk->fetch_assoc();
		$msze = explode("<br>", $row_malk['dni_powszednie']);
		$ile_mszy = count($msze);
		$ile_mszy--;
		for($i =0; $i<$ile_mszy; $i++){
			echo '<p>'. $msze[$i]. '</p>';
		}
		echo '</div>';
		
		$sql_dunk = "SELECT dni_powszednie FROM dunkowiczki";
		$wynik_dunk = $conn->query($sql_dunk);
		$row_dunk = $wynik_dunk->fetch_assoc();
		if($row_dunk['dni_powszednie'] != ""){
			echo '<div id="article_header" class="dunk" style="opacity:1;margin-top:0px">
				<div class="title"><b>Duńkowiczki:</b></div>
					<script type="text/javascript">
						przesun_tytul("dunk");
					</script>
				</div>
				<div class="rozpiska" style="padding-top:18px; opacity:1">';
					
			$msze = explode("<br>", $row_dunk['dni_powszednie']);
			$ile_mszy = count($msze);
			$ile_mszy--;
			for($i =0; $i<$ile_mszy; $i++){
				echo '<p>'. $msze[$i]. '</p>';
			}
			echo '</div>';
		}
		
		echo '<center><b><p>Niedziela</p></b></center>';
		
		$sql_malk = "SELECT niedziela FROM malkowice";
		$wynik_malk = $conn->query($sql_malk);
				
		echo '<div id="article_header" class="malko" style="opacity:1;margin-top:0px">
			<div class="title"><b>Małkowice:</b></div>
				<script type="text/javascript">
					przesun_tytul("malko");
				</script>
			</div>
			<div class="rozpiska" style="padding-top:18px; opacity:1">';
				
		$row_malk = $wynik_malk->fetch_assoc();
		$msze = explode("<br>", $row_malk['niedziela']);
		$ile_mszy = count($msze);
		$ile_mszy--;
		for($i =0; $i<$ile_mszy; $i++){
			echo '<p>'. $msze[$i]. '</p>';
		}
		echo '</div>';
		
		$sql_dunk = "SELECT niedziela FROM dunkowiczki";
		$wynik_dunk = $conn->query($sql_dunk);
				
		echo '<div id="article_header" class="dunk" style="opacity:1;margin-top:0px">
			<div class="title"><b>Duńkowiczki:</b></div>
				<script type="text/javascript">
					przesun_tytul("dunk");
				</script>
			</div>
			<div class="rozpiska" style="padding-top:18px; opacity:1">';
				
		$row_dunk = $wynik_dunk->fetch_assoc();
		$msze = explode("<br>", $row_dunk['niedziela']);
		$ile_mszy = count($msze);
		$ile_mszy--;
		for($i =0; $i<$ile_mszy; $i++){
			echo '<p>'. $msze[$i]. '</p>';
		}
		echo '</div>';
	
	if($wyd){
		echo '</div>';
	}


?>
		
	</div>
	-->
	
	<center>
	<div class="wirtualny_spacer">
		<p>WIRTUALNY SPACER</p> 
	</div>
	</center>
	
	<div id="polecane_strony">
		<div class="header_polecane" style="margin-bottom:12px"><p>Polecane strony:</p></div>
		<div class="link"><img src="images/link_icon.png" style="margin-right:3px"><a href="http://www.spmalkowice.pl" target="_blank">Szkoła Podstawowa</a></div>
		<div class="link"><img src="images/link_icon.png" style="margin-right:3px"><a href="http://przemyska.pl" target="_blank" >Archidiecezja Przemyska</a></div>
		<div class="link"><img src="images/link_icon.png" style="margin-right:3px"><a href="http://www.deon.pl"  target="_blank" >Deon.pl</a></div>
		
		

	</div>
