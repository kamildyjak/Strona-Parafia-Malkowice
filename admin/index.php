<?php


?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta charset="UTF-8" />
<title>Panel logowania</title>
</head>
<body>

<div id="panel_login">
<div class="napis_parafia">
<center>
	<h1>Parafia Rzymskokatolicka</h1>
	<h2>pw. Nawiedzenia NMP w Małkowicach</h2>
	<h3>Logowanie do panelu administracyjnego</h3>
</center>
</div>
<form method="post" action="loging.php">
<center>
<input name="login" type="text" placeholder="Nazwa użytkownika :" autofocus/><br>
<input name="password" type="password" placeholder="Hasło :"/><br>
<input type="submit" value="Zaloguj się">
</center>
</div>
</body>
</html>