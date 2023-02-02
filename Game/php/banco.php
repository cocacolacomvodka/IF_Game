<?php

		$bd_local_conexao = 'localhost';
	  	$usuario_conexao = 'root';
	  	$senha_conexao = ''; 
	  	$bd_nome_conexao = 'game';
		    
	  	$conexao = mysqli_connect($bd_local_conexao,$usuario_conexao,$senha_conexao);
		if(!$conexao){
			echo "Problemas para conectar no banco.!";
			die();
		}
		mysqli_set_charset($conexao,"utf8");
		//echo "Connected successfully";
		//mysqli_close($conexao, "game");
		    
?>
