<?php
include ('../model/usuario.php');

session_start();

$logado = $_SESSION['login'];

$usuario = new usuario($logado, null, null);
$usuario->remove( );

header("Location: http://localhost/xgames/index.html");



