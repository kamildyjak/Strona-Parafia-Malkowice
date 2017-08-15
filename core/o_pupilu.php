<?php 

	$servername = "parafiamalko.nazwa.pl";
	$username = "parafiamalko";
	$password = "Dyju711kamilphp";
	$dbname = "parafiamalko";
	
	$conn = new mysqli ($servername, $username, $password, $dbname);
	$conn->set_charset("utf8");
	
	$page_id="o_pupilu_php";
	
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
<title>o pupilu - Parafia Małkowice</title>
<meta charset="UTF-8" />
<link rel="stylesheet" type="text/css" href="style.css"/>
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

function rozwin(cel){
		var id = cel;
		if(id==2){
			$('#article_list.gosc_'+id).children('.opis_gosc').text("Na Święte Dni Wielkiego Tygodnia oraz Wielkanocny Poranek Zmartwychwstania wszystkim Użytkownikom naszych programów, Klientom i Przyjaciołom pragniemy złożyć serdeczne życzenia wyrażające się w jednoczeniu się z Księdzem we wdzięczności Bogu i Chrystusowi- za dar Kapłaństwa i Eucharystii, za każdą Mszę Świętą, Konsekrację i Słowo Boże, za te godziny w konfesjonale i świadectwo kapłańskiego naśladowania Najwyższego Kapłana;- za Mękę i Śmierć Zbawiciela, którą odkupił nasze grzechy braku miłości wobec bliźniego, wszelkich podziałów i niezgody, egoizmu i zapominania o Nim w bracie żyjącym obok,- za nadzieję, jakiej uczy nas Maryja pomimo wielkosobotniej ciszy Grobu, zaufania Bogu do końca,- za radość Wielkanocnego Poranka, za zwycięstwo Boga nad śmiercią i obietnicę także naszego zmartwychwstania.Nie umiemy w pełni zrozumieć Jezusowego cierpienia w tajemnicy Opuszczenia i Krzyża ani boleści Maryi Osamotnionej pod Krzyżem, pragniemy jedynie trwać wraz z Nimi i - wobec podziałów, egoizmu i zła w dzisiejszym świecie - nie uskarżać się na nasze trudności i cierpienia. Ale sercem pełnym wdzięczności pragniemy wołać radosne Alleluja, wielbiąc Boga i radując się z obietnicy życia wiecznego.Życzymy dobrych, błogosławionych świąt, pełnych Bożego Słowa Triduum Paschalnego i radosnej Nocy Zmartwychwstania!Z pamięcią w modlitwie, w jednościw imieniu wspólników oraz pracowników firmyEcclesia SoftwareStanisław Grochmal");
		}
}

function resizeIframe(obj) {
	obj.style.height = 0;
    obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
}

function ukryj_panel_admin(){
	$('#panel_admin').fadeOut(100);
	$('#admin_bg').fadeOut(100);
}
</script>
</head>
<body>
<script>
<?php
	if($admin=="yes"){
		$append0 = "<div id='admin_bg' onClick='javascript:ukryj_panel_admin()' style='background-color:rgba(0,0,0,0.7);position:fixed;width:100%;height:100%;z-index:9;top:0px;visibility:hidden;'></div>";
		echo '$("body").append("'. $append0. '");
		function add_news(){$("#panel_admin.news").css("visibility","visible").css("display","block");$("#admin_bg").css("visibility","visible").css("display","block");}';
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
	<div class="napis_parafia">
		<h1>Parafia Rzymskokatolicka</h1>
		<h2>pw. Nawiedzenia NMP w Małkowicach</h2>
	</div>
	<div class="spolecznosci">
		<a href=""><img src="images/facebook_icon.png" style="padding-bottom: 3px;"></a>
		<a href=""><img src="images/google_icon.png" style="padding-bottom: 3px;"></a>
		<img src="images/szukaj.png">
	</div>
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
	<div id="panel_admin" class="news"></div>

<?php

	if($admin=="yes"){
		$append1 = "<article onClick='javascript:add_news()'>Dodaj news'a</article><article>Edytuj istniejące news'y</article>";
		$append2 = "<form method='post' action='dodawanie_newsa.php' autocomplete='off' enctype='multipart/form-data'>";
		$append2 = $append2. "<input name='tytul' type='text' placeholder='Tytuł newsa...' maxlength='85' style='width:700px' autofocus/><br>";
		$append2 = $append2. "<textarea name='tresc_html' placeholder='Treść (kod HTML)...' style='width:800px;height:300px;max-width:855px'></textarea>";
		$append2 = $append2. "<p>Wybierz zdjęcia, które są umieszczone w tekście :</p><input type='file' name='files[]' multiple='multiple' accept='image/*'/>";
		$append2 = $append2. "<p>Wybierz miniaturki zdjęć do galerii :</p><input type='file' name='thumbs[]' multiple='multiple' accept='image/*'/><br>";
		$append2 = $append2. "<p>Wybierz zdjęcia do galerii :</p><input type='file' name='images[]' multiple='multiple' accept='image/*'/>";
		$append2 = $append2. "<center><input type='submit' value='DODAJ !'></input><article onClick='javascript:ukryj_panel_admin()'>ANULUJ</articel></center>";
		$append2 = $append2. "<input name='id' value='". $page_id. "' style='visibility:hidden;width:0px;height:0px'/><input name='link' value='o_pupilu.php' style='visibility:hidden;width:0px;height:0px'/></form>";
		echo '<script type="text/javascript">$("#menu_admin.podstrona").append("'. $append1. '");</script>
		<script type="text/javascript">$("#panel_admin.news").append("'. $append2. '");</script>';
	}else{
		echo '<script type="text/javascript">$("#menu_admin").css("display","none");</script>';
	}

	$artykul = "SELECT id,temat,tresc,galeria FROM ". $page_id. " ORDER BY id DESC";
	$wynik_artykul = $conn->query($artykul);
	$artykul_index = 1;
	
	while($row_artykul=$wynik_artykul->fetch_assoc()){
		echo '<div id="article">
		<div id="article_header" class="artykul'. $artykul_index. '">
		<div class="title">'. $row_artykul['temat']. ':</div>
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
		$artykul_index++;
	}

?>
	<div id="article" >
		<div id="article_header" class="artykul<?php echo $artykul_index;?>">
			<div class="title">ŻAKO - AFRYKAŃSKA GADUŁA:</div>
			<script type="text/javascript">
				przesun_tytul("artykul<?php echo $artykul_index;$artykul_index++;?>");
				</script>
		</div>
		<div id="tresc" class="pelna">
		  <p><img src="pictures/żako_tresc.jpg" style="float:right;margin:0px 0px 4px 4px"/>
„Gadająca papuga!” Przecież posiadanie takiej papugi to marzenie każdego dziecka
 i niemal każdego hodowcy ptaków egzotycznych. A wynika owo marzenie ze
stereotypów i zapewne z disnejowskich bajek zapamiętanych z dzieciństwa. Przede
wszystkim jednak z powszechnego mniemania o niezwykłej inteligencji tych ptaków
</p>
 <p>Rzeczywiście, pod względem umiejętności naśladowania dźwięków – i to niestety 
nie tylko mowy ludzkiej (!) – papugi są rzeczywiście wyjątkowo i potrafią zaskakiwać
nawet doświadczonych hodowców.
</p>
<p>Jakie papugi „gadają”? No cóż, teoretycznie niemal wszystkie. Wymawiania pojedynczych 
   słów przy dużej dozie cierpliwości i zaangażowania można nauczyć nawet 
maleńką, pospolitą papużkę falistą. Jednak do prawdziwych specjalistów w naśladowaniu ludzkiej mowy należą duże papugi: kakadu, ary, amazonki, zaś niekwestionowanym arcymistrzem w tej dziedzinie jest żako – niepozorna, szaropióra afrykańska papuga będąca wręcz doskonałym pierzastym „gadułą”.
</p>
 <p>Posiadanie takiego ptaka to jednak nie tylko przyjemność, ale również liczne obowiązki. Ze względu na rozwiniętą inteligencję papugi te wymagają bowiem poświęcania im wiele uwagi oraz jak najczęstszego dotrzymywania im towarzystwa.
	</p>
		</div>

	</div>
	
	<div id="article">
		<div id="article_header" class="artykul<?php echo $artykul_index;?>">
			<div class="title">ZDJĘCIA:</div>
			<script type="text/javascript">
				przesun_tytul("artykul<?php echo $artykul_index;$artykul_index++;?>");
				</script>
		</div>
		<div id="tresc" class="pelna">
			<p>Papuga Żako imieniem Frodo</p>
		</div>
		<center>
		<div class="zdjecia">
			<a class="option" href="pictures/full_size/zako_zdjecia_1.jpg"  rel="shadowbox[ZAKO];" title=""><img src="pictures/thumbs/zako_zdjecia_1.jpg" style="cursor:zoom-in"></a>
			<a class="option" href="pictures/full_size/zako_zdjecia_2.jpg"  rel="shadowbox[ZAKO];" title=""><img src="pictures/thumbs/zako_zdjecia_2.jpg" style="cursor:zoom-in"></a>
			<a class="option" href="pictures/full_size/zako_zdjecia_3.jpg"  rel="shadowbox[ZAKO];" title=""><img src="pictures/thumbs/zako_zdjecia_3.jpg" style="cursor:zoom-in"></a>
		</div>
		</center>
	</div>
	
	<div id="article">
		<div id="article_header" class="artykul<?php echo $artykul_index;?>">
			<div class="title">MAŁA PRÓBKA POPISÓW PTASZYNY:</div>
			<script type="text/javascript">
				przesun_tytul("artykul<?php echo $artykul_index;$artykul_index++;?>");
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

</body>
</html>