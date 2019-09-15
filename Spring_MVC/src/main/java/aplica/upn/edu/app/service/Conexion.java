package aplica.upn.edu.app.service;

import java.sql.*;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class Conexion {
	
	
	public DriverManagerDataSource Conexion() 
	{
		
		DriverManagerDataSource data = new DriverManagerDataSource();
		data.setDriverClassName("com.mysql.jdbc.Driver");
		data.setUrl("jdbc:mysql://localhost:3306/Proyecto1");
		data.setUsername("root");
		data.setPassword("summer9620");
		return data;
	}
	
	
	/*
	Connection con;
    public Conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Proyecto1","root","summer9620");            
        } catch (Exception e) {
            System.err.println("Error"+e);
        }
    }
    
    public Connection getConnection(){
        return con;
    }
    */

}
