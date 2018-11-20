package br.com.agenda.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

	private static Connection connection;
	private static int qtdeVezesConectado;
	
	private ConnectionFactory() {
		
		// singleton
		
	}
	
	public static Connection getConnection() {
		
	//	if (connection == null) {
			abreConexao();
		//}
		
		return connection;
		
	}
	
	private static void abreConexao() {
		
		
        String servidor = "localhost"; 
        String porta = "3306";//"SERVER_PORT";
        String dataBase = "agenda2"; //"DATABASE_NAME";

		
		try {
			
	   	    Class.forName("com.mysql.jdbc.Driver");
	    	  
	        String connectionUrl = "jdbc:mysql://" + servidor + ":" + porta + "/" + dataBase;			
			
			connection = DriverManager.getConnection(connectionUrl, "root", "tavares");
			qtdeVezesConectado ++;
			
			System.out.println("Qtde Vezes Conectado: " + qtdeVezesConectado);
			
		} catch (SQLException | ClassNotFoundException e) {
			
			System.out.println("não funcionou!" + e.toString());
			
		}
		
	}
	public static void main(String[] args) {
		ConnectionFactory.getConnection();
	}
	
}
