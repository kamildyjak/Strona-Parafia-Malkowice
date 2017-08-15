<?php 
	error_reporting(E_ALL & ~E_NOTICE);
	$servername = "parafiamalko.nazwa.pl";
	$username = "parafiamalko";
	$password = "Dyju711kamilphp";
	$dbname = "parafiamalko";
	
	$conn = new mysqli ($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");
	
	$page_id="index_php";
	
	session_start();
	if ( !isset( $_SESSION['admin'] ) || time() - $_SESSION['login_time'] > 1200){
		$admin = "no";
		session_destroy();
	}else{
		$admin = "yes";
		$_SESSION['login_time'] = time();
	}
		
	$sql = "SELECT id, data, autor, tresc FROM ksiega_gosci WHERE ok='tak' ORDER BY id DESC LIMIT 8";
	$wynik = $conn->query($sql);
	
	

?>
<html>
<head>
<title>SZCZĘŚĆ BOŻE! - Parafia Małkowice</title>
<meta charset="UTF-8" />
<link rel="shortcut icon" href="images/favicon.png"/> 
<link rel="stylesheet" type="text/css" href="style.css"/>
<meta name="description" content="Pragnę serdecznie powitać na stronie internetowej wspólnoty Parafii Rzymskokatolickiej pw. Nawiedzenia NMP w Małkowicach oraz wspólnoty kościoła filialnego pw. św. Maksymiliana Kolbe w Duńkowiczkach." />
<meta name="keywords" content="layout,grafika komputerowa,baner YouTube,tło na fanpage,logotyp,Atacamas,Atacamas Graphic,atacamas graphic,atacama graphic,atacamas-graphic,Atacamas-Graphic,atacamas graphic oficjalne portfolio,portfolio,oficjalne portfolio,graphic design" />
<meta name="author" content="Dyju" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css" href="js/shadowbox/shadowbox.css">
<script type="text/javascript" src="js/shadowbox/shadowbox.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript">
Shadowbox.init({
	handleOversize: "resize",
	modal: true
});
function add_gosc(){$("#okno_admin.edit_all").css("visibility","visible").css("display","block");$("#admin_bg").css("visibility","visible").css("display","block");document.getElementById("edit_all").src ="add_ksiega.php";to_top();}

function przesun_tytul(zrodlo){
	var klasa = zrodlo;
	var article_tytul_szerokosc = $('#article_header.'+klasa).children('.title').width();
	$('#article_header.'+klasa).css('background-position',article_tytul_szerokosc+'px 0px');
	}

function rozwin(cel){
		var id = cel;
		switch(id){
			<?php 
			while($row=$wynik->fetch_assoc()){
				echo "case ". $row["id"]. " : $('#article_list.gosc_". $row["id"]. "').children('.opis_gosc').empty().append('". $row["tresc"]. "');";
				echo "break;";
			}
			?>
		}
}

function resizeIframe(obj) {
	obj.style.height = 0;
	var isFirefox = typeof InstallTrigger !== 'undefined';
	
	if(isFirefox){
		 obj.style.height = obj.contentWindow.document.body.scrollHeight+30 + 'px';
	}else{
		 obj.style.height = obj.contentWindow.document.body.scrollHeight+ 'px';
	}
   
}

function ukryj_panel_admin(){
	$('#okno_admin.edit_all').fadeOut(100);
	$('#admin_bg').fadeOut(100);
	<?php echo "setTimeout(function(){window.location='index.php'},100);"; ?>
}

function to_top(){
		$("html, body").animate({
			scrollTop: 0
			}, 200);
	return false;
}

</script>
</head>
<body>
<script>

$("body").append("<div id='admin_bg' onClick='javascript:ukryj_panel_admin()' style='background-color:rgba(0,0,0,0.7);position:fixed;width:100%;height:100%;z-index:9;top:0px;visibility:hidden;'></div>");

</script>
<div id="content">
<?php
	if($admin=="yes"){
		include 'top_admin_panel.php';
	}
?>

<div id="header">
	<?php include 'header.html'; ?>
</div>

<div id="menu">
<center>
<?php
	include "render_menu.php";
?>	
</center>
</div>
<img src="images/pasek_pod_menu.png">

<div id="center_column">
	<center>
	<div id="menu_admin" class="podstrona"></div>
	</center>
	<div id="okno_admin" class="edit_all" style="display:none;">
	<iframe id='edit_all' width='900px' style='border:0px' scrolling='no' onload='javascript:resizeIframe(this);'></iframe>
	</div>

<?php

	if($admin=="yes"){
		$append1 = "<article onClick='javascript:ksiega_edit()'>Edytuj księgę gości</article>";
		echo '<script type="text/javascript">$("#menu_admin.podstrona").append("'. $append1. '");</script>';
	}else{
		echo '<script type="text/javascript">$("#menu_admin").css("display","none");</script>';
	}
	

	$artykul = "SELECT id,temat,tresc,galeria FROM ". $page_id. " ORDER BY id DESC";
	$wynik_artykul = $conn->query($artykul);
	$artykul_index = 1;
	
	while($row_artykul=$wynik_artykul->fetch_assoc()){
		echo '<div id="article">
		<div id="article_header" class="artykul'. $artykul_index. '">
		<div class="title"><b>'. $row_artykul['temat']. '</b> :</div>
		<script type="text/javascript">przesun_tytul("artykul'. $artykul_index. '");</script>
		</div>';
		if($row_artykul['tresc'] != ""){
			echo '<div id="tresc">';
			echo "<iframe id='iframe_artykul' width='700px' scrolling='no' allowTransparency='false' height='auto' onload='javascript:resizeIframe(this);' frameborder='0' srcdoc='". $row_artykul['tresc']. "'></iframe>";
			echo '</div>';
		}
		
		if($row_artykul['galeria'] != ""){
			echo "<center>
			<div class='zdjecia'>";
			echo $row_artykul['galeria'];
			echo "</div>
			<center>";
		}
		echo '</div>';
		$artykul_index++;
	}

?>
	<div id="article" >
		<div id="article_header" class="artykul<?php echo $artykul_index;?>">
			<div class="title"><b>SZCZĘŚĆ BOŻE!</b> :</div>
			<script type="text/javascript">
				przesun_tytul("artykul<?php echo $artykul_index;$artykul_index++;?>");
				</script>
		</div>
		<div id="tresc" class="szczesc_boze">
			<center>
			<p>Pragnę serdecznie powitać na stronie internetowej<br>
			wspólnoty Parafii Rzymskokatolickiej<br>
			pw. Nawiedzenia NMP w Małkowicach<br>
			oraz wspólnoty kościoła filialnego<br>
			pw. św. Maksymiliana Kolbe w Duńkowiczkach.<br>
			<br>
			Mam nadzieję, że każdy odnajdzie tu<br>
			interesujące go informacje.
			</center>
			</p>
			<p style="float:right;margin:0px 15px" >
			Proboszcz
			</p><br>
			<p style="float:right;margin:0px 15px">
			ks. Jerzy A. Sowa
			</p>
		</div>
		<div id="article_zdjecie">
			<img src="pictures/kosciol_szczesc_boze_sepia1.png">
		</div>

	</div>
	
	<div id="article">
		<div id="article_header" class="artykul<?php echo $artykul_index;?>">
			<div class="title"><b>AKTUALNOŚCI</b> :</div>
			<script type="text/javascript">
				przesun_tytul("artykul<?php echo $artykul_index;$artykul_index++;?>");
				</script>
		</div>
		<div id="tresc" >
		<?php
			$sql_aktu = "SELECT tytul,link,data FROM aktualnosci ORDER BY id DESC LIMIT 5";
			$wynik_aktu = $conn->query($sql_aktu);
			$i = 1;
			while($row_aktu=$wynik_aktu->fetch_assoc()){
				echo '<div id="article_list" class="gosc_'. $i. '">
				<img src="images/aktualnosci_lista.png">
				<div class="data_dodania">'. $row_aktu["data"]. '</div>
				<div class="opis_gosc">'. $row_aktu["tytul"].'
				<div class="gosc_link" style="margin:0px 0px 0px 10px" ><a href="'. $row_aktu["link"].'"><b><i>więcej...</i></b></a></div>
				</div>
				</div>';
			}

		?>
		
		</div>
		<center>
		<div class="all_aktu_button" onClick="javascript:window.location='aktu_list.php'"><center><p>Wszystkie aktualności</p></center>
		<img src="images/calendar_icon.png" style="margin:-9px -144px 0px 0px">
		</div>
		</center>
		
	</div>
	
	<div id="article">
		<div id="article_header" class="artykul<?php echo $artykul_index;?>">
			<div class="title"><b>KSIĘGA GOŚCI</b> :</div>
			<script type="text/javascript">
				przesun_tytul("artykul<?php echo $artykul_index;$artykul_index++;?>");
			</script>
		</div>
		<div id="tresc" >
		<?php
			$wynik = $conn->query($sql);
			while($row=$wynik->fetch_assoc()){
				echo '<div id="article_list" class="gosc_'. $row['id']. '">
				<img src="images/aktualnosci_lista.png">
				<div class="data_dodania">'. $row['data']. '</div>
				<div class="autor">Autor: <b>'. $row['autor']. '</b></div>';
				mb_internal_encoding("UTF-8");
				$tresc_bez_br = str_replace("<br />", "", $row['tresc']);
				$opis = mb_substr($tresc_bez_br, 0, 70);
				$index = strpos($row['tresc'], "<br />"); 
				echo '<div class="opis_gosc">'. $opis. '';
				if(strlen($tresc_bez_br) > 70 or $index == TRUE){
					echo '...
					<div class="gosc_link" onClick="javascript:rozwin('. $row['id']. ');" style="margin:0px 0px 0px 10px" ><b><i>rozwiń...</i></b></div>';
				}
				echo '</div>
				</div>';
			}
		?>
		</div>
		<center>
		<div class="gosc_wpisz_button" onClick="javascript:add_gosc()"><center><p>Wpisz się do księgi gości</p></center>
		<img src="images/wpisz_gosc_button.png" style="margin:-9px -144px 0px 0px">
		</div>
		<div class="all_gosc_button" onClick="javascript:window.location='ksiega_list.php'"><center><p>Księga gości</p></center>
		<img src="images/all_gosc_button.png" style="margin:-9px -144px 0px 0px">
		</div>
		</center>
		
	</div>
		

</div>

<div id="left_column">
<?php
	include "left_column.php";
?>
</div>

<div id="stopka">
<?php
	include "stopka.html";
?>
</div>

</div>
<!-- Piwik -->
<script type="text/javascript">
  var _paq = _paq || [];
  _paq.push(['trackPageView']);
  _paq.push(['enableLinkTracking']);
  (function() {
    var u="//parafia-malkowice.pl/piwik/";
    _paq.push(['setTrackerUrl', u+'piwik.php']);
    _paq.push(['setSiteId', 1]);
    var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
    g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'piwik.js'; s.parentNode.insertBefore(g,s);
  })();
</script>
<noscript><p><img src="//parafia-malkowice.pl/piwik/piwik.php?idsite=1" style="border:0;" alt="" /></p></noscript>
<!-- End Piwik Code -->
</body>
</html>