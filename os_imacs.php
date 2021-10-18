<?php
include('verificar_login.php');
?>

<body>
	<title> Nova OS: iMac </title>
<body>

<html>
<div align="center">
		<fieldset style="width: 50%">
			<h2> Ordem de Serviço (iMac) </h2> <br>
		
			<div align="left">
				<b> Identificação </b> <br>
				<hr>
				<form action="cadastrar.php" method="POST">	
				<input type=hidden name=tipo value="imac">
					<table width=100%>
						<tr>
							<td>
								Ordem de Serviço: <input type=text name=os>
							</td>

							<td>
								CPF: <input type=text name=cpf>
							</td>
						</tr>
					</table> <br> <br>

					<b> Informações  </b>
					<hr>

					<table width=100%>
						<tr>
							<td>
								Modelo: <input type=text name=modelo>   		<br><br>
								Tamanho:  <input type=text name=tamanho> <br><br>
								 
							</td>

							<td valign="top">
								Ano: <input type=text name=ano>	<br><br>
								Emc: <input type=text name=emc>		<br><br>
								 
							</td>

							
						</tr>
					</table> <br>
					
					<b> Configuração </b> <br>
					<hr>

					

					
					<table width=100%>
						<tr>
							<td>
								
								Processador: <input type=text name=processador>	<br><br>
								Memória Ram: <input type=text name=ram>	<br><br>
								Placa de Vídeo: <input type=text name=placa_video>	<br><br>
								HD: <input type=text name=hd> 		<br><br>
								Acessórios: <input type=text name=acessorios>	<br><br><br>
							</td>
							
						</tr>
					</table>					


					

					<b> Relato do Cliente  </b>
					<hr>
					<textarea rows=6 cols=40 name=problema></textarea> <br>
				
					<hr>
	
					<div align=center>
						<input type=submit value=Cadastrar>
						<input type=reset value=Resetar>
					</div>
					
				</form>
			</div>
		</fieldset>
	</div>
</html>