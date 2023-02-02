<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="../css/waitingscreen.css">
	<script>
    function loginsuccessfuly(){
        //setTimeout("window.location='../jogo_ciencias_5/index.html'", 1500);
        setTimeout("window.open('../jogo_ciencias_5/index.html','_parent')", 1500);
    }
    function loginfailed(){
        setTimeout("window.location='../index.html'", 1500);
    }
	</script>
 </head>
 <body>
 <div class="fundo">
        <div class="bloco">
            <img src="../imagens/titulo_jogo.png">
	<?php
		// Conexão com o banco de dados
		// require "banco.php";
		// Inicia sessões
		session_start();
		include "banco.php";

		$EMAIL = $_POST['femailLogin'];
		$SENHA = $_POST['fsenhaLogin'];
		//$scodif = md5($SENHA); 
        //echo "$scodif"."</br>";
        //echo md5($SENHA);

		echo "<div>";
		//mysqli_select_db($conexao, "u846242083_game");
		mysqli_select_db($conexao, "banco");
		$sql = mysqli_query($conexao,"SELECT * FROM aluno WHERE email = '$EMAIL' and senha = '$SENHA'");
		$row = mysqli_num_rows($sql);
		$linha_dados = mysqli_fetch_array($sql);

		if ($row > 0){
    		$_SESSION['email'] = $_POST['femailLogin'];
    		$_SESSION['senha'] = $_POST['fsenhaLogin'];
    		$_SESSION['nome'] = $linha_dados['Nome'];
    		$_SESSION['id_aluno'] = $linha_dados['ID_Aluno'];
    		echo "<p id='p'>Logado com Sucesso. Redirecionando...</p>";
    		echo "<script>loginsuccessfuly()</script>";
		}else{
    		echo "<p id='p'>Nome de usuário ou senha inválidos.</p>";
    		echo "<script>loginfailed()</script>";
		}

		echo "</br>";
		echo "<p id='p1'> Hoje é dia " . date('d/m/Y') . " agora são " . date('H:i:s')."</p>";
		echo "</div>";
        	

	?>
	</div>
    </div>
 </body>
</html>
