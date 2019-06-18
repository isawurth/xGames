 <?php
$_SESSION['con'] = mysqli_connect("localhost","games");
//usuario senha e nome do banco
	if (mysqli_connect_errno() != 0) 
	{
			$msg_erro = mysqli_connect_error();
			echo ("<p>Erro para conectar no Banco de Dados!</p>
				   <p>Mensagem de erro: $msg_erro</p>");
			return;
			
	}

	mysqli_query($_SESSION['con'],"SET NAMES 'utf8'");
	mysqli_query($_SESSION['con'],"SET character_set_connection=utf8");
	mysqli_query($_SESSION['con'],"SET character_set_client=utf8");
	mysqli_query($_SESSION['con'],"SET character_set_results=utf8");
        
        	function funSelect($tabela, $campos, $argumentos) {
		
		$sql = "SELECT $campos from $tabela $argumentos";		
		$retorno = mysqli_query($_SESSION['con'], $sql); # retorna registros (SELECT)
		$lista = array();
		while($reg = mysqli_fetch_assoc($retorno))	{
			array_push($lista, $reg);
		}
		return $lista;
	}
?>