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
                
                $jogos	=	$_POST['jogos'];
                
                $query = "SELECT * FROM jogos  WHERE console LIKE '$jogos'";
                
            
                $resposta = mysqli_query($con, $query);

                if (!$resposta)
                {
                    echo "Erro:Informações não cadastradas" . PHP_EOL;
                    echo "Debuggin errno:" . mysqli_errno($con) . PHP_EOL;
                    echo "Debuggin erro:" . mysqli_error($con) . PHP_EOL;

                    exit;
                } 
                else 
                {
            ?>		

        <table class="table text-white">
            <tr>
              <th scope>id_jogo</th>
              <th scope> Console</th>
              <th scope>Categoria</th>
              <th scope>Nome</th>
              <th scope>Ano</th>
              <th scope> Detalhar </th>
            </tr>
                <?php
                  while( $linha = mysqli_fetch_array($resposta) ) 
                   {
                      
                       ?>
                      <tr>
                          <td> <?php echo $linha['id_jogo'];   ?> </td>
                          <td> <?php echo $linha['console'];   ?> </td>
                          <td> <?php echo $linha['categoria']; ?> </td>
                          <td> <?php echo $linha['nome'];      ?> </td>
                          <td> <?php echo $linha['ano'];       ?> </td>
                          
                          <td><a href="detalhar.php?id_jogo=<?=$linha['id_jogo']?>"> <img src="../img/lupa.png" width="20" height="20"> </a></td>
                      </tr>    
                   
                      
                  <?php }

              }
                ?>
            </table>
        
            <br/><br/>

            <input type="submit" class="btn btn-dark"  value="Voltar" onclick="history.go(-1)" />
            
            <br/><br/>
            
            <hr color="white">
            <div id="rodape" class="text-white">
                
                <center> Site Desenvolvido por Isabela Wurthmann - IFSP Guarulhos </center>
            </div>
            </div>
    
    
    
    
    </div>
    </body>
</html>