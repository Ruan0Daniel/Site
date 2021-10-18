<?php
include('conexao.php');
$conexao = mysqli_connect(HOST, USUARIO, SENHA, DB);

$tipo= isset($_POST['tipo']) ? $_POST['tipo'] : "";  // variável de controle para inserir os dados nas tabelas corretamente

switch ($tipo) {
    case 'notebook':
        $os= isset($_POST['os']) ? $_POST['os'] : "";
		$cpf= isset($_POST['cpf']) ? $_POST['cpf'] : "";
		$marca= isset($_POST['marca']) ? $_POST['marca'] : "";
		$modelo= isset($_POST['modelo']) ? $_POST['modelo'] : "";
		$processador= isset($_POST['processador']) ? $_POST['processador'] : "";
		$ram= isset($_POST['ram']) ? $_POST['ram'] : "";
		$hd= isset($_POST['hd']) ? $_POST['hd'] : "";
		$placa_video= isset($_POST['placa_video']) ? $_POST['placa_video'] : "";
		$tamanho_tela= isset($_POST['tamanho_tela']) ? $_POST['tamanho_tela'] : "";
		$carregador= isset($_POST['carregador']) ? $_POST['carregador'] : "";
		$acessorios= isset($_POST['acessorios']) ? $_POST['acessorios'] : "";
		$problema= isset($_POST['problema']) ? $_POST['problema'] : "";
		
		$sql = "insert into os_notebook values ('$os', '$cpf', '$marca', '$modelo', '$processador', '$ram', '$hd', '$placa_video', '$tamanho_tela', '$carregador', '$acessorios', '$problema')";

		$resultado = $conexao->query($sql) or trigger_error($conexao->error);

		if($resultado==true)
		{
			echo "Cadastro da OS realizado com sucesso";
		}
		else 
		{
			echo "erro: Cadastro da OS não foi realizado";
		}

		$conexao ->close();
        break;
		
	case 'pc':
		$os= isset($_POST['os']) ? $_POST['os'] : "";
		$cpf= isset($_POST['cpf']) ? $_POST['cpf'] : "";
		$pc= isset($_POST['pc']) ? $_POST['pc'] : "";
		$placa_mae= isset($_POST['placa_mae']) ? $_POST['placa_mae'] : "";
		$processador= isset($_POST['processador']) ? $_POST['processador'] : "";
		$ram= isset($_POST['ram']) ? $_POST['ram'] : "";
		$hd= isset($_POST['hd']) ? $_POST['hd'] : "";
		$placa_video= isset($_POST['placa_video']) ? $_POST['placa_video'] : "";
		$fonte= isset($_POST['fonte']) ? $_POST['fonte'] : "";
		$gabinete= isset($_POST['gabinete']) ? $_POST['gabinete'] : "";
		$acessorios= isset($_POST['acessorios']) ? $_POST['acessorios'] : "";
		$problema= isset($_POST['problema']) ? $_POST['problema'] : "";
		
		$sql = "insert into os_pc values ('$os', '$cpf', '$pc', '$placa_mae', '$processador', '$ram', '$hd', '$placa_video', '$fonte', '$gabinete', '$acessorios', '$problema')";
			
		$resultado = $conexao->query($sql) or trigger_error($conexao->error);

		if($resultado==true)
		{
			echo "Cadastro da OS realizado com sucesso";
		}
		else 
		{
			echo "erro: Cadastro da OS não foi realizado";
		}

		$conexao ->close();
		break;
			
	case 'macbook':
		$os= isset($_POST['os']) ? $_POST['os'] : "";
		$cpf= isset($_POST['cpf']) ? $_POST['cpf'] : "";
		$macbook= isset($_POST['macbook']) ? $_POST['macbook'] : "";
		$modelo= isset($_POST['modelo']) ? $_POST['modelo'] : "";
		$ano= isset($_POST['ano']) ? $_POST['ano'] : "";
		$emc= isset($_POST['emc']) ? $_POST['emc'] : "";
		$processador= isset($_POST['processador']) ? $_POST['processador'] : "";
		$ram= isset($_POST['ram']) ? $_POST['ram'] : "";
		$placa_video= isset($_POST['placa_video']) ? $_POST['placa_video'] : "";
		$hd= isset($_POST['hd']) ? $_POST['hd'] : "";
		$carregador= isset($_POST['carregador']) ? $_POST['carregador'] : "";
		$tamanho_tela= isset($_POST['tamanho_tela']) ? $_POST['tamanho_tela'] : "";
		$acessorios= isset($_POST['acessorios']) ? $_POST['acessorios'] : "";
		$problema= isset($_POST['problema']) ? $_POST['problema'] : "";
		
		$sql = "insert into os_macbook values ('$os', '$cpf', '$macbook', '$modelo', '$ano', '$emc','$processador', '$ram', '$placa_video', '$hd', '$carregador', '$tamanho_tela', '$acessorios', '$problema')";
			
		$resultado = $conexao->query($sql) or trigger_error($conexao->error);

		if($resultado==true)
		{
			echo "Cadastro da OS realizado com sucesso";
		}
		else 
		{
			echo "erro: Cadastro da OS não foi realizado";
		}
		
		$conexao ->close();
		break;
			
	case 'imac':
		$os= isset($_POST['os']) ? $_POST['os'] : "";
		$cpf= isset($_POST['cpf']) ? $_POST['cpf'] : "";
		$modelo= isset($_POST['modelo']) ? $_POST['modelo'] : "";
		$ano= isset($_POST['ano']) ? $_POST['ano'] : "";
		$tamanho= isset($_POST['tamanho']) ? $_POST['tamanho'] : "";
		$emc= isset($_POST['emc']) ? $_POST['emc'] : "";
		$processador= isset($_POST['processador']) ? $_POST['processador'] : "";
		$ram= isset($_POST['ram']) ? $_POST['ram'] : "";
		$placa_video= isset($_POST['placa_video']) ? $_POST['placa_video'] : "";
		$hd= isset($_POST['hd']) ? $_POST['hd'] : "";
		$acessorios= isset($_POST['acessorios']) ? $_POST['acessorios'] : "";
		$problema= isset($_POST['problema']) ? $_POST['problema'] : "";
		
		$sql = "insert into os_imac values ('$os', '$cpf', '$modelo', '$ano', '$tamanho', '$emc','$processador', '$ram', '$placa_video', '$hd', '$acessorios', '$problema')";
			
		$resultado = $conexao->query($sql) or trigger_error($conexao->error);

		if($resultado==true)
		{
			echo "Cadastro da OS realizado com sucesso";
		}
			else 
		{
			echo "erro: Cadastro da OS não foi realizado";
		}

		$conexao ->close();
		break;
		
		
	case 'evento':
		$os= isset($_POST['os']) ? $_POST['os'] : "";
		$data= isset($_POST['data']) ? $_POST['data'] : "";
		$hora= isset($_POST['hora']) ? $_POST['hora'] : "";
		$evento= isset($_POST['evento']) ? $_POST['evento'] : "";
		
		$sql = "insert into eventos (os, data, hora, evento) values ('$os', '$data', '$hora', '$evento')";
			
		$resultado = $conexao->query($sql) or trigger_error($conexao->error);

		if($resultado==true)
		{
			echo "Cadastro do evento realizado com sucesso";
		}
			else 
		{
			echo "erro: Cadastro do evento não foi realizado";
		}

		$conexao ->close();
		break;	
}
?>
