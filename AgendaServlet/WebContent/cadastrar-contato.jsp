<%@ page language="java" 
         contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Cadastro de Contatos</title>
	</head>
	<body>
	
		<c:import url="/WEB-INF/jsp/cabecalho.jsp" />
	
		        <div class="container">
            <br>
            <h1>Adicionar contato</h1>
            <br>
            <form action="contato" method="post">
                <div class="form-row">
                    <div class="form-group col-md-8">
                        <label for="colocar-nome">Nome</label>
                        <input type="text" class="form-control" id="inputEmail4" placeholder="Nome" name="nome">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="colocar-nome-fonetico">Nome Fonético</label>
                        <input type="text" class="form-control" id="inputPassword4" placeholder="Nome Fonético" name="nomeFonetico">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-8">
                        <label for="colocar-sobrenome">Sobrenome</label>
                        <input type="text" class="form-control" id="inputEmail4" placeholder="Sobrenome" name="sobrenome">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="colocar-sobrenome-fonetico">Sobrenome Fonético</label>
                        <input type="text" class="form-control" id="inputPassword4" placeholder="Sobrenome Fonético" name="sobrenomeFonetico">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-8">
                        <label for="colocar-empresa">Empresa</label>
                        <input type="text" class="form-control" id="inputEmail4" placeholder="Empresa" name="empresa">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="colocar-empresa-fonetico">Empresa Fonética</label>
                        <input type="text" class="form-control" id="inputPassword4" placeholder="Empresa Fonética" name="empresaFonetica">
                    </div>
                </div>
                
                <div class="row">
                    <div class="col">
                        <label for="colocar-telefone">Telefone</label>
                        <input type="text" class="form-control" id="inputCity" placeholder="Telefone" name="telefone"><br>
                        <script>
                            $(function() {
                                
                            n = 0;
                            m = 5;
                            $("#adiciona").click(function (e) {
                            e.preventDefault();     
                            if (n < m) {	
                            
                            $("#alvo").append("<div class='form-row'>\n\
                            <input type='text' class='form-control' id='inputCity' placeholder='Telefone' name='telefone'><input type='button' class='remover' class='form-control' value='remover'></div>");
                            
                            $(".remover").click(function(e) {
                            e.preventDefault();     
                            $(this).parent("div").remove();
                            n--;
                            
                            if(n==-1) n=0;
                            });
                            
                            n++;	
                            }	
                            });
                            });
                            </script>      
                            <button type="button" class="btn btn-primary btn-sm" id="adiciona">Add. Tel</button> <br>
                        <div id="alvo"></div>
                    </div>
                    <div class="col">
                        <label for="colocar-email">E-mail</label>
                        <input type="text" class="form-control" id="inputCity" placeholder="Email" name="email"><br>
                        <script>
                            $(function() {
                                
                            n = 0;
                            m = 5;
                            $("#adiciona-email").click(function (e) {
                            e.preventDefault();     
                            if (n < m) {	
                            
                            $("#email").append("<div class='form-row'>\n\
                            <input type='text' class='form-control' id='inputCity' placeholder='email' name='email'><input type='button' class='remover' value='remover'></div>");
                            
                            $("#remover").click(function(e) {
                            e.preventDefault();     
                            $(this).parent("div").remove();
                            n--;
                            
                            if(n==-1) n=0;
                            });
                            
                            n++;	
                            }	
                            });
                            });
                            </script>      
                        <button type="button" class="btn btn-primary btn-sm" id="adiciona-email">Add. E-mail</button><br>
                        <div id="email"></div>
                    </div>

                </div><br>
                <div class="form-group">
                    <label for="colocar-endereco">Endereço</label>
                    <input type="text" class="form-control" id="inputAddress" placeholder="Descreva o Endereço" name="endereco">
                </div>
                <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="inputCity">Complemento</label>
                        <input type="text" class="form-control" id="inputCity" placeholder="Complemento do endereço" name="complementoEndereco">
                    </div>
                    <div class="form-group col-md-3">
                        <label for="inputCity">Bairro</label>
                        <input type="text" class="form-control" id="inputCity" placeholder="Bairro" name="bairro">
                    </div>
                    <div class="form-group col-md-3">
                        <label for="inputCity">Rua</label>
                        <input type="text" class="form-control" id="inputCity" placeholder="Rua" name="rua">
                    </div>
                    <div class="form-group col-md-3">
                        <label for="inputZip">CEP</label>
                        <input type="text" class="form-control" id="inputZip" name="cep">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">Cidade</label>
                        <input type="text" class="form-control" id="inputCity" name="cidade">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputState">Estado</label>
                        <select id="inputState" class="form-control" name="estado">
                            <option selected>Selecione</option>
                            <option>DF</option>
                            <option>BA</option>
                            <option>SP</option>
                        </select>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputZip">País</label>
                        <input type="text" class="form-control" id="inputZip" name="pais">
                    </div>
                </div>
                
                <button type="submit" class="btn btn-primary">Cadastrar</button>
            </form>
        </div>
		
	
		
		<c:import url="/WEB-INF/jsp/rodape.jsp" />
	
	