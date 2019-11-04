package com.proyecto.conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.proyecto.entidades.Cancion;


public class Conexion {
	Connection con=null;
	Statement stmt=null;
	ResultSet rs=null;
	PreparedStatement pstmt=null;
	
	String connectionUrl="jdbc:sqlserver://localhost:1433;"+"databaseName=SpotiFake;integratedSecurity=true;";
	
	
	public Conexion() {
		try {
			DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
			con=DriverManager.getConnection(connectionUrl);
			stmt=con.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void liberarRecursos() {
		try {
			//rs.close();
			stmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public List mostrarDatos() {
		String consulta = "SELECT idCancion, nombre, artista, album, genero, duracionCancion, imagen " + "FROM Cancion";
		
		List<Cancion> listaCanciones = new ArrayList<Cancion>();
		
		try {
			rs = stmt.executeQuery(consulta);
			
			while(rs.next()) {
				Cancion cancion = new Cancion(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getFloat(6), rs.getString(7));
				listaCanciones.add(cancion);				
			}	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listaCanciones;
	}
}
