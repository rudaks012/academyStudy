package co.micol.dbPrj;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DataSource {
	private String driver; // 사용할 JDBC 드라이버
	private String url; // DBMS 가 위치한 주소
	private String user; // DB에 접속할 계정
	private String password; // DB접속계정의 패스워드

	public Connection conn; // JAVA에서 DBMS연결객체

	public DataSource() {
		getDbproperties(); // 외부 properties 파일을 읽어서 내부 변수에 담음
		try {
			Class.forName(driver);	// 설치하는 명령어 (JDBC를 설치해돌라)
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("DB 연결 성공");

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			System.out.println("DB 연결 실패");
		}

	}

	private void getDbproperties() {
		File path = new File("src/main/resources/db.properties");	//파일을 다루는 객체
		Properties properties = new Properties();
		//properties 파일을 생성을 하면 메모리에 들어감. K = V  -> 메모리 가면 K:V
		// K값을 Property  여기서 db.properties의 앞의 driver를 가져온다.
		try {
			FileReader file = new FileReader(path);
			properties.load(file);
			driver = properties.getProperty("driver");
			url = properties.getProperty("url");
			user = properties.getProperty("user");
			password = properties.getProperty("password");
		} catch (IOException e) {
			e.printStackTrace();

		}
	}
}
