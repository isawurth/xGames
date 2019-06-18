<!DOCTYPE html>
<html>
    <head>
        <!--MDBOOTSTRAP -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.1/css/mdb.min.css" rel="stylesheet">      
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.1/js/mdb.min.js"></script>
        <!--MDBOOTSTRAP -->
        <link href="../estilo.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>xGames</title>
        
    </head>
    <body>
                  <!--Navbar-->
<nav class="navbar navbar-dark light-dark lighten-4">

  <!-- Navbar brand -->
  <a class="navbar-brand" href="#">Menu</a>

  <!-- Collapse button -->
  <button class="navbar-toggler toggler-example" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1"
    aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation"><span class="dark-blue-text"><i
        class="fas fa-bars fa-1x"></i></span></button>

  <!-- Collapsible content -->
  <div class="collapse navbar-collapse" id="navbarSupportedContent1">

    <!-- Links -->
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
          <a class="nav-link" href="../indexLogado.html">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="../view/formCadastro.html">Cadastrar</a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="../indexLogado.html#carouselExampleIndicators">Listar</a>
      </li>
    </ul>
    <!-- Links -->

  </div>

</nav>    
        
    <div class="container m-2 mx-auto h-50 center-block" id="principal"> 
   
        <?php
        include("../db.php");
              
     $id_jogo	=	$_GET['id_jogo'];
     $query = "SELECT * FROM jogos WHERE id_jogo=$id_jogo ";
     
     $resposta = mysqli_query($con, $query);
 
     while($pesquisa = mysqli_fetch_array($resposta)){
        $id_jogo = $pesquisa["id_jogo"];
        if ($_GET['id_jogo']=="$id_jogo"){
        switch ($id_jogo) {
        case "$id_jogo":
        break;
}
        $console = $pesquisa["console"];
?>
        <center> 
        <div id='detalhar' class='text-white'>
                 <h1><?php echo $pesquisa["nome"]; ?> </h1>
            <hr color='white'>       
      <?php echo "<img src='../img/$console/$id_jogo.jpg' width='300' height='300'" ?>
        <br/>  <br/>            
       <?php echo "ID: ". $pesquisa["id_jogo"]; ?>
        <br/>
       <?php echo "Console: ".$pesquisa["console"]; ?>
        <br/>
       <?php echo "Categoria: ".$pesquisa["categoria"]; ?>
        <br/>
       <?php echo "Nome: ".$pesquisa["nome"]; ?>
        <br/>
       <?php echo "Ano: ".$pesquisa["ano"]; ?>
        <br/>
        <?php echo "Descrição: ".$pesquisa["descricao"];?>
           <?php     }
     
}
        ?>
        <hr color='white'>
        <h1>Gráfico do Jogo</h1>
        
        <?php echo "<img src='../img/$console/$id_jogo.gif' width='700' alt='Nao foi possivel encontrar' " ?>
     
        </div>
        </center>
<input type="submit" class="btn btn-dark"  value="Voltar" onclick="history.go(-1)" />

 <br/><br/>
            
            <hr color="white">
            <div id="rodape" class="text-white">
                
                <center> Site Desenvolvido por Isabela Wurthmann - IFSP Guarulhos </center>
            </div>
    </div>
  </body>
</html>

