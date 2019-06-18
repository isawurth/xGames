<?php
    $strUser    = "";
    $strSenha   = "";
    $strUrl     = "";
    $strDatabse = "";

    function instancia( )
    {
        return mysqli_connect($strUrl,$strUser,$strSenha,$strDatabse);
    }
?>