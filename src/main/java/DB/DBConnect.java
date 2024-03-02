package DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static Connection conn;
	
	public static Connection getConn(){
		
		String url="jdbc:mysql://localhost:3306/busbooking",uname="root",password="123456789ab.";
		
		try{
			
			if(conn==null){
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				conn = DriverManager.getConnection(url,uname,password);
				
			}
		}catch(Exception e){
			
			e.printStackTrace();
		}
	
		return conn;
	}
}
