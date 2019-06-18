<?php

    class produto
    {
        public $console;
        public $nome;
        public $categoria;
        public $ano;
        
        function produto( $console,$nome,$categoria,$ano )
        {
            $this->console   = $console; 
            $this->nome      = $nome;
            $this->categoria = $categoria;
            $this->ano       = $ano;
        }
    }
?>