<?php

class usuarioDao
{
    public function executaQuery( $sql )
    {  
        try
        {
           $servidor = "localhost";
           $usuario = "root";
           $senha = "";
           $dbname = "games";
  
           $con = mysqli_connect($servidor,$usuario,$senha,$dbname);
           
           mysqli_query($con,$sql);

           mysqli_close($con);

        } catch (Exception $ex) {
            echo $ex;
        }
        
    }

    public function retornaQuery( $sql )
    {  
        try
        {
           $servidor = "localhost";
           $usuario = "root";
           $senha = "";
           $dbname = "games";
  
           $con = mysqli_connect($servidor,$usuario,$senha,$dbname);
           
           $retorno = mysqli_query($con,$sql);

           mysqli_close($con);

        } catch (Exception $ex) {
            echo $ex;
        }
        
        return  $retorno;
    }
    
    public function salvar($objeto)
    {   
       $usuario =  $objeto;
       $sql = "INSERT INTO usuario(nome,login,senha) VALUES('".$usuario -> nome."','".$usuario -> usuario."','".$usuario -> senha."')";   
       
       echo $sql;
       
       $this->executaQuery($sql);
    }
    
    public function alterar( $objeto )
    {
       $sql = "UPDATE usuario set ";
       
       if($objeto -> nome != NULL )
       {
         $sql = $sql."nome = '".$objeto -> nome."'";
       }
       
       if($objeto ->senha != NULL)
       {
           if($objeto -> nome != NULL )
           {
              $sql = $sql." ,senha = '".$objeto ->senha."'"; 
           }
           else
           {
              $sql = $sql." senha = '".$objeto ->senha."'";
           }
       }
        $sql = $sql." WHERE login  = '".$objeto -> usuario."'";   
       
       echo $sql;
       
       $this->executaQuery($sql); 
    }
    
    public function remover( $objeto )
    {
       $sql = "DELETE FROM usuario WHERE login  = '".$objeto -> usuario."'";   
       
       echo $sql;
       
       $this->executaQuery($sql); 
    }

    public function busca($objeto)
    {
       $sql = "SELECT * FROM usuario WHERE login = '".$objeto->usuario."' && senha = '".$objeto->senha."'";
       
      $resultados = $this->retornaQuery($sql);
       
      foreach($resultados as $resultado)
      {
        $objeto->nome    =  $resultado['nome'];
        $objeto->usuario =  $resultado['login'];
        $objeto->senha   =  $resultado['senha'];
      }

      return $objeto;


    }
}

