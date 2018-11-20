<%@ page language="java" 
         contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
         
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Lista de Contatos Cadastrados</title>
	</head>
	
	<body>
	
		<c:import url="/WEB-INF/jsp/cabecalho.jsp" />
		
		
		<h2>Contatos Cadastrados</h2>
		
		<table border="1px" cellpadding="5px" cellspacing="0">
		
			<tr background="#000">
				<th>Nome</th>
				<th>Nome Fonético</th>
				<th>Sobrenome</th>
				<th>Sobrenome Fonético</th>
				<th>Empresa</th>
				<th>Empresa Fonética</th>
				<th>Telefone</th>
				<th>E-mail</th>
				<th>Endereço</th>
				<th>Complemento</th>
				<th>Bairro</th>
				<th>Rua</th>
				<th>CEP</th>
				<th>Cidade</th>
				<th>Estado</th>
				<th>País</th>
				
			</tr>
			
			<c:forEach var="contato" items="${contato}">
			
				<tr>
					
					<td>${contato.nome}</td>
					<td>${contato.nomeFonetico}</td>
					<td>${contato.sobrenome}</td>
					<td>${contato.sobrenomeFonetico}</td>
					<td>${contato.empresa}</td>
					<td>${contato.empresaFonetica}</td>
					<td>${contato.telefone}</td>
					<td>${contato.email}</td>
					<td>${contato.endereco}</td>
					<td>${contato.complementoEndereco}</td>
					<td>${contato.bairro}</td>
					<td>${contato.rua}</td>
					<td>${contato.cep}</td>
					<td>${contato.cidade}</td>
					<td>${contato.estado}</td>
					<td>${contato.pais}</td>
					
				
					
					<td>
						<a href="#">Alterar</a> | <a href="#">Excluir</a>
					</td>					

				</tr>
			
			</c:forEach>
				
		
		</table>
		
		
		<c:import url="/WEB-INF/jsp/rodape.jsp" />		
		
	</body>
</html>