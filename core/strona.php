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
	$page = "";
	$page = $_GET['page'];
	
	session_start();
	if ( !isset( $_SESSION['admin'] ) || time() - $_SESSION['login_time'] > 1200){
		$admin = "no";
		session_destroy();
	}else{
		$admin = "yes";
		$_SESSION['login_time'] = time();
	}
	
	$page_id = "menu_". $parent. "_". $child. "";
	
?>
<html lang="pl">
<head>
<?php
	$title = "SELECT nazwa FROM menu_". $parent. " WHERE id='". $child. "'";
	$wynik_title = $conn->query($title);
	$row_title = $wynik_title->fetch_assoc();
	echo "<title>". $row_title['nazwa']. " - Parafia Małkowice</title>";
?>
<meta charset="UTF-8" />
<meta name="description" content="Pragnę serdecznie powitać na stronie internetowej wspólnoty Parafii Rzymskokatolickiej pw. Nawiedzenia NMP w Małkowicach oraz wspólnoty kościoła filialnego pw. św. Maksymiliana Kolbe w Duńkowiczkach." />
<link rel="stylesheet" type="text/css" href="style.css"/>
<link rel="shortcut icon" href="images/favicon.png"/> 
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css" href="js/shadowbox/shadowbox.css">
<script type="text/javascript" src="js/shadowbox/shadowbox.js"></script>
<script type="text/javascript">
Shadowbox.init({
	handleOversize: "resize",
	modal: true
});

function przesun_tytul(zrodlo){
	var klasa = zrodlo;
	var article_tytul_szerokosc = $('#article_header.'+klasa).children('.title').width();
	$('#article_header.'+klasa).css('background-position',article_tytul_szerokosc+'px 0px');
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
	<?php echo "setTimeout(function(){window.location='strona.php?parent=". $parent. "&child=". $child. "'},100);"; ?>
}

function to_top(){
		$("html, body").animate({
			scrollTop: 0
			}, 200);
	return false;
}
</script>
<script type="text/javascript" src="js/main.js"></script>
</head>
<body>
<script>
<?php
	if($admin=="yes"){
		$append0 = "<div id='admin_bg' onClick='javascript:ukryj_panel_admin()' style='background-color:rgba(0,0,0,0.7);position:fixed;width:100%;height:100%;z-index:9;top:0px;visibility:hidden;'></div>";
		echo '$("body").append("'. $append0. '");';
	}
?>
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
		$append1 = "<article onClick='javascript:add_news()'>Dodaj wiadomość</article><article onClick='javascript:edit_news_list()'>Edytuj istniejące wiadomości</article>";
		echo '<script type="text/javascript">$("#menu_admin.podstrona").append("'. $append1. '");</script>';
	}else{
		echo '<script type="text/javascript">$("#menu_admin").css("display","none");</script>';
	}
	
	$artykul = "SELECT id,temat,tresc,galeria,data FROM ". $page_id. " ORDER BY id DESC";
	$wynik_artykul = $conn->query($artykul);
	$artykul_index = 1;
	
	if($page==""){
		$page=1;
	}
	$od = ($page - 1)*5;
	for($i=1;$i<=$od;$i++){
		$row_artykul=$wynik_artykul->fetch_assoc();
	}
	
	while($row_artykul=$wynik_artykul->fetch_assoc() and $artykul_index<6){
		echo '<div id="article">
		<div id="article_header" class="artykul'. $artykul_index. '">
		<div class="title"><b>'. $row_artykul['temat']. '</b>';
		if($row_artykul['data']!=""){
			echo ' /'. $row_artykul['data']. '/ :</div>';
		}else{
			echo ' : </div>';
		}

		echo '<script type="text/javascript">przesun_tytul("artykul'. $artykul_index. '");</script>
		</div>
		<div id="tresc">';
		echo "<iframe width='700px' scrolling='no' allowTransparency='false' height='auto'  onload='javascript:resizeIframe(this);' frameborder='0' srcdoc='". $row_artykul['tresc']. "'></iframe>";
		echo '</div>';
		
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
<?php
	include "render_pages.php";
?>

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