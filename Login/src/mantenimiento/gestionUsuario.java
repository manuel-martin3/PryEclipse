package mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.usuario;
import util.MySQLConexion;

public class gestionUsuario {
	
	public usuario obtenerUsuario(usuario usu){
		
		usuario _usu = null;
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		try {
			con = MySQLConexion.getConnection();
			String sql= "select idU, username,pswd from login where username = ? and pswd = ?";
			pst = con.prepareStatement(sql);   			
			pst.setString(1, usu.getUsername());
			pst.setString(2, usu.getPswd());
			
			rs=pst.executeQuery(sql);
			
			while (rs.next()) {				
				_usu = new usuario(rs.getInt(1), rs.getString(2), rs.getString(3));				
			}
			
			
		} catch (Exception e) {
			System.out.println("Error al obtener el usuario");
		}
		return _usu;		
	}
}
