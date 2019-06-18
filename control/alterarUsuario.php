<?php

include ('../model/usuario.php');

session_start();

$strNvNome  = $_POST[ 'nome' ];
$strNvSenha = $_POST[ 'senha' ];


$logado = $_SESSION[ 'login' ];

$usuario = new usuario($logado, null, null);

$usuario->atualiza($strNvNome,$strNvSenha);

header("Location: http://localhost/xgames/indexLogado.html");




