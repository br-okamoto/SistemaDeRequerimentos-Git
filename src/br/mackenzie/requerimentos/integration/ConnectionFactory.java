package br.mackenzie.requerimentos.integration;

import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

public class ConnectionFactory {
	
	private Connection connection;
    private String URL = "jdbc:mysql://localhost:3306/SistemaDeRequerimentos?useUnicode=true";
    private String USER = "root";
    private String PASS = "administrador";
    
    public Connection getConnection() {
    	try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USER, PASS);
    	}
        catch(SQLException e) {
            	
        }
        catch (ClassNotFoundException e) {
        	
        }
    	return connection;
    }

}