<?php

    include ('../dao/usuarioDao.php');
    
    class usuario
    {
         public $usuario;
         public $nome;
         public $senha;
        
     function usuario($usu,$nm,$pass)
     {
         $this -> usuario = $usu;
         $this -> nome    = $nm;
         $this -> senha   =$pass; 
     }
     
      function salvar(  )
      {
          $bOk = false;
          
          $dao = new usuarioDao( );
          
          $dao -> salvar($this);
          
          return $bOk;
      }
      
      
      function atualiza($strNvNome,$strNvSenha)
      {
          $this->nome  = $strNvNome;
          $this->senha = $strNvSenha;
          
          $dao = new usuarioDao( );
          $dao->alterar( $this );
      }
      
      function remove(  )
      {
         $dao = new usuarioDao( );
         $dao->remover($this);
      }
      
      function busca(  )
      {
        $dao = new usuarioDao( );
        $usu = $dao -> busca($this);
          
        return $usu;
      }
      
    }

?>