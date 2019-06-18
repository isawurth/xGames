<?php
    include ('../model/usuario.php');

    $strUsuario = $_POST[ 'usuario' ];
    $strsenha   = $_POST[ 'senha'   ];

    $usuario = new usuario($strUsuario,null,$strsenha);
    
    //Efetuar Login
    $usuario = $usuario->busca();
    
    var_dump($usuario->nome);
    
    if( !$usuario->nome == null )
    {
       session_start();
       
       $_SESSION['login'] = $strUsuario;
               
       header("Location: http://localhost/xgames/indexLogado.html");
    }
    else
    {
        header("Location: http://localhost/xgames/index.html");
    }


