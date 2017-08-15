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

?>
<html>
<head>
<title>Aktualności - Parafia Małkowice</title>
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

function ukryj_panel_admin(){
	$('#okno_admin.edit_all').fadeOut(100);
	$('#admin_bg').fadeOut(100);
	<?php echo "setTimeout(function(){window.location='aktu_list.php'},100);"; ?>
}

function to_top(){
		$("html, body").animate({
			scrollTop: 0
			}, 100);
	return false;
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

	<div id="okno_admin" class="edit_all" style="display:none;">
	<iframe id='edit_all' width='900px' style='border:0px' scrolling='no' onload='javascript:resizeIframe(this);'></iframe>
	</div>
	
<?php echo '<script type="text/javascript">$("#menu_admin").css("display","none");</script>'; ?>
	<div id="article">
		<div id="article_header" class="artykul<?php echo $artykul_index;?>">
			<div class="title"><b>AKTUALNOŚCI</b> :</div>
			<script type="text/javascript">
				przesun_tytul("artykul<?php echo $artykul_index;$artykul_index++;?>");
				</script>
		</div>
		<div id="tresc" >
		<?php
			$sql_aktu = "SELECT tytul,link,data FROM aktualnosci ORDER BY id DESC";
			$wynik_aktu = $conn->query($sql_aktu);
			$i = 1;
			while($row_aktu=$wynik_aktu->fetch_assoc()){
				echo '<div id="article_list" class="gosc_'. $i. '">
				<img src="images/aktualnosci_lista.png">
				<div class="data_dodania">'. $row_aktu["data"]. '</div>
				<div class="opis_gosc">'. $row_aktu["tytul"].  '
				<div class="gosc_link" style="margin:0px 0px 0px 10px" ><a href="'. $row_aktu["link"].'"><b><i>więcej...</i></b></a></div>
				</div>
				</div>';
			}

		?>
		
		</div>

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