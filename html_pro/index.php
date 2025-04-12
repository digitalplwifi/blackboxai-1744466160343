<?php

require_once 'admin/ajax/db/config.php';
if (!INSTALADO) {
	header('Location: /install/');
	exit();
}
else {
	header('HTTP/1.1 301 Moved Permanently');
	header('Location: /cliente/');
	exit();
}

?>