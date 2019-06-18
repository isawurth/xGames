<?php
    include ('../model/usuario.php');


    $strNmUsuario = $_POST[ 'nome'   ];
    $strUsuario   = $_POST[ 'usuario'];
    $strSenha     = $_POST[ 'senha'  ];
    
    $usuario = new usuario($strUsuario, $strNmUsuario, $strSenha);
    $usuario -> salvar( ); 
    
    header("Location: http://localhost/xgames/index.html");
    die();
?>