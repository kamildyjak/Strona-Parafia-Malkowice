<?php
	session_start();
	$_SESSION['admin'] = "o_tak";
	$_SESSION['login_time'] = time();
	echo '<script type="text/javascript">window.location="/";</script>';
?>