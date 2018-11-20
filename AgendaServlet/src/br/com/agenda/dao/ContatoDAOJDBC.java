package br.com.agenda.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.agenda.model.Contato;

public class ContatoDAOJDBC implements DAOContrato<Contato, Integer> {
	
	private Connection connection;
	
	public ContatoDAOJDBC(Connection connection) {
		
		this.connection = connection;
		
	}

	@Override
	public void inserir(Contato obj) {

		try {
			
			String sql = "Insert into Contato ("
					+ "nome, "
					+ "nomeFonetico, "
					+ "sobrenome, "
					+ "sobrenomeFonetico, "
					+ "empresa, "
					+ "empresaFonetica, "
					+ "telefone, "
					+ "email, "
					+ "endereco, "
					+ "complementoEndereco, "
					+ "bairro, "
					+ "rua, "
					+ "cep, "
					+ "cidade, "
					+ "estado, "
					+ "pais)" + 
		                  " values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";			
			
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			stmt.setString(1, obj.getNome());
			stmt.setString(2, obj.getNomeFonetico());
			stmt.setString(3, obj.getSobrenome());
			stmt.setString(4, obj.getSobrenomeFonetico());
			stmt.setString(5, obj.getEmpresa());
			stmt.setString(6, obj.getEmpresaFonetica());
			stmt.setString(7, obj.getTelefone());
			stmt.setString(8, obj.getEmail());
			stmt.setString(9, obj.getEndereco());
			stmt.setString(10, obj.getComplementoEndereco());
			stmt.setString(11, obj.getBairro());
			stmt.setString(12, obj.getRua());
			stmt.setString(13, obj.getCep());
			stmt.setString(14, obj.getCidade());
			stmt.setString(15, obj.getEstado());
			stmt.setString(16, obj.getPais());
			
			stmt.executeUpdate();
			
		} catch (SQLException e) {
			
			System.out.println("SQLExeption: " + e.toString());
			e.printStackTrace();
			
		}
		
	}

	@Override
	public void alterar(Contato obj) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void excluir(Contato obj) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Contato> getAll() {

		try {
			
			PreparedStatement stmt = connection.prepareStatement("Select * from Contato");
			ResultSet rs = stmt.executeQuery();
			
			List<Contato> contatos = new ArrayList<Contato>();
			
			while (rs.next()) {
				
				Contato contato = new Contato();
				contato.setCodigo(rs.getInt("id"));
				
				
				
				contato.setNome(rs.getString("nome"));
				contato.setNomeFonetico(rs.getString("nomeFonetico"));
				contato.setSobrenome(rs.getString("sobrenome"));
				contato.setSobrenomeFonetico(rs.getString("sobrenomeFonetico"));
				contato.setEmpresa(rs.getString("empresa"));
				contato.setEmpresaFonetica(rs.getString("empresaFonetica"));
				contato.setTelefone(rs.getString("telefone"));
				contato.setEmail(rs.getString("email"));
				contato.setEndereco(rs.getString("endereco"));
				contato.setComplementoEndereco(rs.getString("complementoEndereco"));
				contato.setBairro(rs.getString("bairro"));
				contato.setRua(rs.getString("rua"));
				contato.setCep(rs.getString("cep"));
				contato.setCidade(rs.getString("cidade"));
				contato.setEstado(rs.getString("estado"));
				contato.setPais(rs.getString("pais"));

				
				contatos.add(contato);
				
			}
			
			rs.close();
			stmt.close();			
			
			return contatos;
			
		} catch(SQLException e) {

			e.printStackTrace();
			return new ArrayList<Contato>();
			
		}

	}

	@Override
	public Contato getById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

}
