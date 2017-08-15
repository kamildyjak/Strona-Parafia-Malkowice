<?php
	$video_id = $_GET['vid_id'];

	$servername = "parafiamalko.nazwa.pl";
	$username = "parafiamalko";
	$password = "Dyju711kamilphp";
	$dbname = "parafiamalko";
	
	$conn = new mysqli ($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");
	
	$page_id = "video_php";
	
	session_start();
	if ( !isset( $_SESSION['admin'] ) || time() - $_SESSION['login_time'] > 1200){
		$admin = "no";
		session_destroy();
	}else{
		$admin = "yes";
		$_SESSION['login_time'] = time();
	}
	
	$sql = "SELECT id, data, autor, tresc FROM ksiega_gosci ORDER BY id DESC LIMIT 8";
	$wynik = $conn->query($sql);
	
?>	
<html>
<head>
<title>Parafia Małkowice</title>
<meta charset="UTF-8" />
<meta name="description" content="Pragnę serdecznie powitać na stronie internetowej wspólnoty Parafii Rzymskokatolickiej pw. Nawiedzenia NMP w Małkowicach oraz wspólnoty kościoła filialnego pw. św. Maksymiliana Kolbe w Duńkowiczkach." />
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
	var isFirefox = typeof InstallTrigger !== 'undefined';
	
	if(isFirefox){
		 obj.style.height = obj.contentWindow.document.body.scrollHeight+30 + 'px';
	}else{
		 obj.style.height = obj.contentWindow.document.body.scrollHeight+ 'px';
	}
   
}


function rozwin(cel){
		var id = cel;
		if(id==2){
			$('#article_list.gosc_'+id).children('.opis_gosc').text("Na Święte Dni Wielkiego Tygodnia oraz Wielkanocny Poranek Zmartwychwstania wszystkim Użytkownikom naszych programów, Klientom i Przyjaciołom pragniemy złożyć serdeczne życzenia wyrażające się w jednoczeniu się z Księdzem we wdzięczności Bogu i Chrystusowi- za dar Kapłaństwa i Eucharystii, za każdą Mszę Świętą, Konsekrację i Słowo Boże, za te godziny w konfesjonale i świadectwo kapłańskiego naśladowania Najwyższego Kapłana;- za Mękę i Śmierć Zbawiciela, którą odkupił nasze grzechy braku miłości wobec bliźniego, wszelkich podziałów i niezgody, egoizmu i zapominania o Nim w bracie żyjącym obok,- za nadzieję, jakiej uczy nas Maryja pomimo wielkosobotniej ciszy Grobu, zaufania Bogu do końca,- za radość Wielkanocnego Poranka, za zwycięstwo Boga nad śmiercią i obietnicę także naszego zmartwychwstania.Nie umiemy w pełni zrozumieć Jezusowego cierpienia w tajemnicy Opuszczenia i Krzyża ani boleści Maryi Osamotnionej pod Krzyżem, pragniemy jedynie trwać wraz z Nimi i - wobec podziałów, egoizmu i zła w dzisiejszym świecie - nie uskarżać się na nasze trudności i cierpienia. Ale sercem pełnym wdzięczności pragniemy wołać radosne Alleluja, wielbiąc Boga i radując się z obietnicy życia wiecznego.Życzymy dobrych, błogosławionych świąt, pełnych Bożego Słowa Triduum Paschalnego i radosnej Nocy Zmartwychwstania!Z pamięcią w modlitwie, w jednościw imieniu wspólników oraz pracowników firmyEcclesia SoftwareStanisław Grochmal");
		}
}
function ukryj_panel_admin(){
	$('#okno_admin.edit_all').fadeOut(100);
	$('#admin_bg').fadeOut(100);
	<?php echo "setTimeout(function(){window.location='video.php?vid_id=".$video_id."'},100);"; ?>
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
		$append1="<article onClick='javascript:add_video()'>Dodaj film</article><article onClick='javascript:edit_video_list()' style='width: 230px;'>Edytuj istniejącą listę filmów</article>";
		echo '<script type="text/javascript">$("#menu_admin.podstrona").append("'. $append1. '");</script>';

	}else{
		echo '<script type="text/javascript">$("#menu_admin").css("display","none");</script>';
	}

?>
	<div id="article" >
<?php
	
	$sql_video = "SELECT temat,link FROM video_list WHERE id='$video_id'";
	$wynik_video = $conn->query($sql_video);
	$row_video = $wynik_video->fetch_assoc();
	
	$nazwa = $row_video['temat'];
	$adres = $row_video['link'];

?>
		<div id="article_header" class="artykul1">
			<div class="title"><b><?php echo $nazwa ;?></b> :</div>
			<script type="text/javascript">
				przesun_tytul("artykul1");
				</script>
		</div>
		<center>
		<div id="tresc" class="pelna">
			<iframe width="520" height="355" src=<?php echo '"'. $adres. '"'; ?> frameborder=0" allowfullscreen></iframe>
		</div>
		</center>

	</div>
	
	<div id="article">
		<div id="article_header" class="artykul2">
			<div class="title"><b>Mała próbka popisów ptaszyny</b> :</div>
			<script type="text/javascript">
				przesun_tytul("artykul2");
			</script>
		</div>
		<div id="tresc" class="pelna">
			<div class="video_link">
				<?php
					$sql_link = "SELECT id,temat FROM video_list";
					$wynik_link = $conn->query($sql_link);
					
					while($row_link = $wynik_link->fetch_assoc()){
						echo '<li><a href="video.php?vid_id='. $row_link['id']. '">'. $row_link['temat']. '</a></li>';
					}
				?>
			</div>
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