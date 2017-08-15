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
	$news_id = $_GET['news_id'];
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
	
	$sql_ile = "SELECT COUNT(*) FROM $page_id";
	$wynik_ile = $conn->query($sql_ile);
	$ile_news = $wynik_ile->fetch_row();
	
	$sql_parent_name = "SELECT nazwa FROM zakladki_menu WHERE id='$parent'";
	$sql_child_name = "SELECT nazwa FROM menu_". $parent. " WHERE id='$child' ";
	
	
	$wynik_parent_name = $conn->query($sql_parent_name);
	$wynik_child_name = $conn->query($sql_child_name);
	
	$row_parent_name = $wynik_parent_name->fetch_assoc();
	$row_child_name = $wynik_child_name->fetch_assoc();

?>
<html lang="pl">
<head>
<?php
	$artykul = "SELECT temat,tresc,galeria,data FROM $page_id WHERE id='$news_id'";
	$wynik_artykul = $conn->query($artykul);
	$row_artykul=$wynik_artykul->fetch_assoc();
	
	echo "<title>". $row_artykul['temat']. " - Parafia Małkowice</title>";
?>
<meta charset="UTF-8" />
<link rel="stylesheet" type="text/css" href="style.css"/>
<link rel="shortcut icon" href="images/favicon.png"/> 
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

function przesun_tytul(zrodlo){
	var klasa = zrodlo;
	var article_tytul_szerokosc = $('#article_header.'+klasa).children('.title').width();
	$('#article_header.'+klasa).css('background-position',article_tytul_szerokosc+'px 0px');
}

function resizeIframe(obj) {
	obj.style.height = 0;
    obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
}

</script>
</head>
<body>
<script>

	$("body").append("<div id='admin_bg' onClick='javascript:ukryj_panel_admin()' style='background-color:rgba(0,0,0,0.7);position:fixed;width:100%;height:100%;z-index:9;top:0px;visibility:hidden;'></div>");
	function add_gosc(){$("#okno_admin.news").css("visibility","visible").css("display","block");$("#admin_bg").css("visibility","visible").css("display","block");to_top()}
	
<?php
	if($admin=="yes"){
		echo 'function edit(){$("#okno_admin.edit_all").css("visibility","visible").css("display","block");$("#admin_bg").css("visibility","visible").css("display","block");to_top();}';
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
	<?php echo "<center><p style='margin:0px 0px 10px 10px;font-size:17px'><b>".$row_parent_name['nazwa']." | ". $row_child_name['nazwa']."</b></p></center>"; ?>

<?php

	echo '<script type="text/javascript">$("#menu_admin").css("display","none");</script>';
	
	$artykul_index = 1;
	
		echo '<div id="article">
		<div id="article_header" class="artykul'. $artykul_index. '">
		<div class="title"><b>'. $row_artykul['temat']. '</b> /'. $row_artykul['data']. '/ :</div>
		<script type="text/javascript">przesun_tytul("artykul'. $artykul_index. '");</script>
		</div>
		<div id="tresc">';
		echo "<iframe width='700px' scrolling='no' allowTransparency='false' height='auto' onload='javascript:resizeIframe(this);' frameborder='0' srcdoc='". $row_artykul['tresc']. "'></iframe>";
		echo '</div>';
		
		if($row_artykul['galeria'] != ""){
			echo "<center>
			<div class='zdjecia'>";
			echo $row_artykul['galeria'];
			echo "</div>
			<center>";
		}
		echo '</div>';
	
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