package db;

import java.io.FileReader;
import java.io.Reader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public class UserDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private Statement st;
	private ResultSet rs;
	Properties prop = new Properties();	

	
	// ******************************** 본인 컴퓨터에 맞는 프로퍼티 경로 입력!!! ********************************
	  	String prop_path = "C:\\Users\\nackjun\\eclipse-workspace\\board_Test\\src\\main\\webapp\\WEB-INF/db.properties";
	   // ***************************************************************************************************
	
	public UserDAO() {
		try {
	         Reader reader = new FileReader(prop_path);
	         prop.load(reader);
	         Class.forName("com.mysql.jdbc.Driver");
	         String db = prop.getProperty("db");
	         String user = prop.getProperty("user");
	         String pw = prop.getProperty("pw");
	         conn =  DriverManager.getConnection(db, user, pw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int login(String u_id, String u_pw) {
		String SQL = "SELECT u_pw FROM user WHERE u_id =? and admin =0 or admin= 1";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, u_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if(rs.getString(1).equals(u_pw)) {
					return 1; // 로그인 성공
				}
				else
					return 0; // 비밀번호 불일치 
			}
			return -1;	// 아이디가 없음
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // 데이터베이스 오류
	}

	public int adminlogin(String u_id, String u_pw) {
		String SQL = "SELECT u_pw FROM user WHERE u_id =? and admin = 1";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, u_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if(rs.getString(1).equals(u_pw)) {
					return 1; // 로그인 성공
				}
				else
					return 0; // 비밀번호 불일치 
			}
			return -1;	// 아이디가 없음
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // 데이터베이스 오류
	}
	
	public int join(User user) {
		String SQL = "INSERT INTO USER(u_id, u_pw, u_name, u_address, u_phone) VALUES (?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getU_id());
			pstmt.setString(2, user.getU_pw());
			pstmt.setString(3, user.getU_name());
			pstmt.setString(4, user.getU_address());
			pstmt.setString(5, user.getU_phone());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
	
	public List<User> userinfo(){
		
	  	List<User> res = new ArrayList<User>();
	  	User user = new User();

	  	try {

         // SQL 쿼리
         st = conn.createStatement();
         String sql = "select * from user;";
         
         rs = st.executeQuery(sql);
         while(rs.next()) {
        	 User u = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5),rs.getString(6));
        	 res.add(u);         
    	 }
         conn.close();
         
         System.out.println("# 회원 출력");
      }
      catch(SQLException error) {
         error.printStackTrace();
	}
		return(res);
	}
	
	public int upate(User user){
		int res = 0;
		String SQL = "UPATE USER set admin = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getU_admin());
			
			res =  pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res; // 데이터베이스 오류

	}	
}
