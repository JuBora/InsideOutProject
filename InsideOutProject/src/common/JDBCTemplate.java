package common;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

/**
 * SingleTon Pattern : 클래스에 대한 객체가 프로그램 구동 내내 한개만 작성되어 사용되게 함. static을 이용할거임.
 * static특징 : 모든 필드, 메소드가 static이어야한다.
 * 
 * @author nobodj
 *
 */
public class JDBCTemplate {
	//private JDBCTemplate(){} //생성해도 결국 이미 생성된 static자원을 사용하게 된다.
	
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Properties prop = new Properties();
//			prop.load(new FileReader("resources/driver.properties"));
			
			//driver.properties파일의 절대경로를 문자열로 반환
			//getResource(): 클래스패스로  부터 지정한 경로의 URL객체 반환. 
			//				/는 프로젝트의 buildpath를 가리킴
			//getPath(): 절대경로를 문자열로 반환
			String fileName = JDBCTemplate.class.getResource("/driver.properties")
												.getPath();
//			System.out.println(fileName);
			prop.load(new FileReader(fileName));
			
			
			
			String driver = prop.getProperty("driver");
			String url = prop.getProperty("url");
			String user = prop.getProperty("user");
			String password = prop.getProperty("password");
			
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			conn.setAutoCommit(false);// 기본값은 true, 원칙은 application에서 모든걸 제어하는 것임.
		} catch (Exception e) {
			e.printStackTrace();
		}

		return conn;
	}

	public static void close(Connection conn) {
		try {
			if(conn!=null && !conn.isClosed())
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * PreparedStatement는 Statement의 하위클래스
	 * 
	 * @param stmt
	 */
	public static void close(Statement stmt) {
		try {
			if(stmt!=null & !stmt.isClosed())
				stmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void close(ResultSet rset) {
		try {
			if(rset!=null && !rset.isClosed())
				rset.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void commit(Connection conn){
		
		try {
			if(conn!=null && !conn.isClosed())
				conn.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void rollback(Connection conn){
		try {
			if(conn!=null && !conn.isClosed())
				conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
