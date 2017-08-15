
<div id="top_admin_panel">
<center>
<article onClick="javasctipt: menu_top_edit()">Edytuj menu główne</article>
<article id="ksiega_akcept" onClick="javasctipt: ksiega_akceptuj()">Księga gości - oczekujące</article>
<article onClick="javasctipt: add_video()">Dodaj film</article>
<article onClick="javasctipt: log_out()" style="float:right;margin-right:16px">Wyloguj !</article>
</center>
</div>
<script>
function log_out(){
	window.location = 'log_of.php';
}

function menu_top_edit(){
	edit();
	document.getElementById('edit_all').src = "menu_list.php";
}
<?php

	include "admin_include.php";

?>
</script>