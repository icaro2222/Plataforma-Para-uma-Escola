package Dao;

import java.sql.Connection; 
import java.sql.DriverManager;

public class MySqlConnection {
	
	private String host;
	private String banco;
	private String senha;
	private String usuario;

	public MySqlConnection() {}

	public MySqlConnection(String host, String banco, String senha, String usuario) {
		this.host = host;
		this.banco = banco;
		this.senha = senha;
		this.usuario = usuario;
	}

	public Connection getConnection() {
		Connection conn = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		
		
		
		this.setBanco("sysschool?autoReconnect=true&amp;useSSL=false");
		this.setUsuario("root");
		
		// LocalHost
		
		this.setHost("localhost:3306");
		this.setSenha("");
		//Servido
		
//		this.setHost("node7203-sysschool.sp.skdrive.net");
//		this.setSenha("KNGsvn19272");
		
		this.setHost("jdbc:mysql://"+this.getHost()+"/"+this.getBanco());
		
		try {
			conn = DriverManager.getConnection( this.getHost(), this.getUsuario(), this.getSenha());
		} catch (Exception e) {
			e.printStackTrace();
		}


		return conn;
	}

	public String getHost() {
		return host;
	}

	public void setHost(String host) {
		this.host = host;
	}

	public String getBanco() {
		return banco;
	}

	public void setBanco(String banco) {
		this.banco = banco;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

}
