<?php

class consoleDao 
{
    public $tpConsole;
    public $sql;
   
 
    public function consoleDao( $console )
    {
        $this->tpConsole = $console;
        $this->sql = "SELECT * FROM jogos WHERE console = '".$tpConsole."'";
    }
    
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
}
