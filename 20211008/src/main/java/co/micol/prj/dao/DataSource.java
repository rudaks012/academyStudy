package co.micol.prj.dao;

import java.io.FileReader;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.sql.Connection;

public class DataSource {
	private static DataSource dataSource = new DataSource();
	private Connection conn;
	private String driver;
	private String url;
	private String user;
	private String password;

	private DataSource() { // �ܺο��� ������ �� ������ ������ ����
		dbconfig();

	}
	public static DataSource getInstance() {
		return dataSource;	
	}
	private void dbconfig() {
		Properties properties = new Properties();
		String resource = getClass().getResource("/db.properties").getPath();
		try {
			properties.load(new FileReader(resource));
			driver = properties.getProperty("driver");
			url = properties.getProperty("url");
			user = properties.getProperty("user");
			password = properties.getProperty("password");
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	private void config() {

	}

	public Connection getConnection() {
	
		try {
			Class.forName(driver); // ojdbc ����
			conn = (Connection) DriverManager.getConnection(url,user,password);
		}catch(ClassNotFoundException | SQLException e) { 
			
		}
		return conn;	
			
		}
		
	}

