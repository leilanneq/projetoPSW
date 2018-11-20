package br.com.agenda.servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.agenda.dao.ContatoDAOJDBC;
import br.com.agenda.model.Contato;

public class ContatoServlet extends HttpServlet {

	private static final long serialVersionUID = -3669248415472496966L;
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// validar se os dados foram preenchidos
//		if (request.getParameter("nome").isEmpty())
	//		throw new ServletException("O nome deve ser informado");
		
//		if (request.getParameter("dataNascimento").isEmpty())
	//		throw new ServletException("A data de nascimento deve ser informada");		
		
		// montar o novo contato
		
		Contato contato = new Contato();
		contato.setNome(request.getParameter("nome"));
		contato.setEndereco(request.getParameter("endereco"));	
		contato.setTelefone(request.getParameter("telefone"));
		contato.setNome(request.getParameter("nome"));
		contato.setNomeFonetico(request.getParameter("nomeFonetico"));
		contato.setSobrenome(request.getParameter("sobrenome"));
		contato.setSobrenomeFonetico(request.getParameter("sobrenomeFonetico"));
		contato.setEmpresa(request.getParameter("empresa"));
		contato.setEmpresaFonetica(request.getParameter("empresaFonetica"));
		contato.setTelefone(request.getParameter("telefone"));
		contato.setEmail(request.getParameter("email"));
		contato.setEndereco(request.getParameter("endereco"));
		contato.setComplementoEndereco(request.getParameter("complementoEndereco"));
		contato.setBairro(request.getParameter("bairro"));
		contato.setRua(request.getParameter("rua"));
		contato.setCep(request.getParameter("cep"));
		contato.setCidade(request.getParameter("cidade"));
		contato.setEstado(request.getParameter("estado"));
		contato.setPais(request.getParameter("pais"));

		
		// inserir o contato no banco
		
		ContatoDAOJDBC dao = new ContatoDAOJDBC((Connection) request.getAttribute("connection"));
		
		dao.inserir(contato);
		
		// redirecionar para a listagem de contatos
		
		request.getRequestDispatcher("/WEB-INF/jsp/lista-contato.jsp").forward(request, response);
		
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ContatoDAOJDBC dao = new ContatoDAOJDBC((Connection) request.getAttribute("connection"));
		request.setAttribute("contato", dao.getAll()); //mudei a variável de "contatos" para "contato"
		request.getRequestDispatcher("/WEB-INF/jsp/lista-contato.jsp").forward(request, response);
		
	}



}
