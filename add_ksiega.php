<html>
<head>
<meta charset="UTF-8" />
<link rel="stylesheet" type="text/css" href="style.css"/>
<link rel="stylesheet" type="text/css" href="style_edit_list.css"/>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
</head>
<body style="margin : 0;min-height:210px">
<div id="header_list">
<center><p><b>Dodaj wpis do księgi gości</b><p></center>
</div>
<div id="panel_admin" class="news">

<form method='post' action='dodawanie_ksiega.php' autocomplete='off' enctype='multipart/form-data'>
<input name='autor' type='text' placeholder='Autor...' maxlength='85' style='width:700px' autofocus/><br>
<textarea name='tresc' placeholder='Treść wpisu...' style='width:800px;height:300px;max-width:855px'></textarea>
<center style='margin-bottom:15px'><input type='submit' value='DODAJ !'></input><article onClick='javascript:parent.ukryj_panel_admin()'>ANULUJ</article></center></form>

</div>
</body>
</html>