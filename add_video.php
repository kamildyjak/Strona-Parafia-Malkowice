<html>
<head>
<meta charset="UTF-8" />
<link rel="stylesheet" type="text/css" href="style.css"/>
<link rel="stylesheet" type="text/css" href="style_edit_list.css"/>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
</head>
<body style="margin : 0;min-height:210px">
<center><p style='font-size: 20px;margin:10px 0px 10px 0px;'><b>Dodaj film</b><p></center>
<div id="panel_admin" class="news">
	<form method='post' action='dodawanie_filmu.php' autocomplete='off'>
	<input name='tytul' type='text' placeholder='Tytuł filmu...' maxlength='85' style='width:800px'/><br>
	<input name='link_youtube' type='text' placeholder='Link do filmu na YouTube...' style='width:800px'/>
	<center>
		<input type='submit' value='DODAJ !' style='margin-bottom: 15px;'/></input><article onClick='javascript:parent.ukryj_panel_admin()'>ANULUJ</article></center>;
	</center>
	</form>
</div>
</body>
</html>