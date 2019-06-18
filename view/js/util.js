function validaCampos( )
{
    var usuario = document.getElementById( "usuario");
    var senha   = document.getElementById( "senha"  );

    if(usuario != "" && senha != "")
    {
        
    }    
    else
    {
        document.getElementById("dvAlert").append("<b>Preencha usuário ou/e senha!<b/>");
    }
    
}