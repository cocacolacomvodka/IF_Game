<?php
		$hostname_conexao = "mysql.hostinger.com.br";
		$database_conexao = "u846242083_game";
		$username_conexao = "u846242083_game";
		$password_conexao = "bita@301";
		$conexao = mysqli_connect($hostname_conexao, $username_conexao, $password_conexao);

		if(mysqli_connect_errno($conexao)){
			echo "Problemas para conectar no banco.
			die();
		}
		//echo "Connected successfully";
?>