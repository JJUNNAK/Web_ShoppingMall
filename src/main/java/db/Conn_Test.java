package db;

import com.mysql.cj.protocol.Resultset;
import com.mysql.cj.xdevapi.PreparableStatement;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.sql.*;
import java.util.*;
import java.util.Date;

/*	
	게시판
	CREATE TABLE board(
	b_id INT NOT NULL,
	b_writer VARCHAR(20),
	b_title VARCHAR(50),
	b_content VARCHAR(200),
	b_regdate DATETIME
	)
*/
	

public class Conn_Test {
	
	Properties prop = new Properties();
	Statement st;
  	ResultSet rs;
  	PreparedStatement psmt;
  	Connection conn;
  	
    // ******************************** 본인 컴퓨터에 맞는 프로퍼티 경로 입력!!! ********************************
   	String prop_path = "C:\\Users\\nackjun\\eclipse-workspace\\board_Test\\src\\main\\webapp\\WEB-INF/db.properties";
    // ***************************************************************************************************
	
	public Conn_Test() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Reader reader = new FileReader(prop_path);
	         prop.load(reader);
	         String db = prop.getProperty("db");
	         String user = prop.getProperty("user");
	         String pw = prop.getProperty("pw");
	         conn =  DriverManager.getConnection(db, user, pw);
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public List<Board_info> get_board(){
	  	List<Board_info> res = new ArrayList<Board_info>();
	  	Board_info board_info = new Board_info();
	  	
	   
	  	try {     
        
         // SQL 쿼리
         st = conn.createStatement();
         String sql = "select * from board;";
         
         rs = st.executeQuery(sql);
         while(rs.next()) {
        	 Board_info b = new Board_info(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getInt(5));
        	 res.add(b);
        			 
         }
         
         System.out.println("# 게시판 목록 출력");
         
         // DB 연결 종료
         conn.close();

      }
//      catch(ClassNotFoundException error) {
//         System.out.println("mysql driver 경로 오류 ");
//      }
      catch(SQLException error) {
         error.printStackTrace();
	}

		
		return(res);
		
	}
	
	
	public Board_info selectOne(int b_id) {
		
	  	Board_info res = null;
	  	
		try {
	         
	         String sql = "select * from board where b_id=?";
	         
	         psmt=conn.prepareStatement(sql);
	         psmt.setInt(1, b_id);
	         
	         rs = psmt.executeQuery();
	         
	         while(rs.next()) {
	        	 res = new Board_info();
	        	 res.setB_writer(rs.getString(1));
	        	 res.setB_tittle(rs.getString(2));
	        	 res.setB_content(rs.getString(3));
	        	 res.setB_id(rs.getInt(4));
	        	 
	         }
	         System.out.println("# 게시판 내용 출력");
		}catch(SQLException e) {
			e.printStackTrace();
		}
//		finally {
//			try {
//				rs.close();
//				psmt.close();
//				conn.close();
//			}catch(SQLException e) {
//				e.printStackTrace();
//			}
//			
			return res;
		}//end select one
		
	public int insert(Board_info bi) {
		java.util.Date utilDate = new java.util.Date();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
	  	int res = 0;
	  	
		try {
			  
	         String sql = "insert into board(b_writer, b_title, b_content, b_regdate) values(? ,? ,? ,?)";
	         
	         psmt = conn.prepareStatement(sql);
	         psmt.setString(1, bi.getB_writer());
	         psmt.setString(2, bi.getB_tittle());
	         psmt.setString(3, bi.getB_content());
	         psmt.setDate(4, sqlDate);
	         
	         res = psmt.executeUpdate();
	         
	         
	         System.out.println("# 게시판 글 등록.");
	         
		}catch(Exception e) {
			e.printStackTrace();
		}
			return res;
	}//end insert
	
	public  int delete(int b_id) {
		
	  	int res = 0;
	  	
		try {
	         String sql = "delete from board where b_id=?";
	         
	         psmt = conn.prepareStatement(sql);
	         psmt.setInt(1, b_id);
	         
	         res = psmt.executeUpdate();
	         System.out.println("# 게시판 글 삭제");
	         
		}catch(Exception e) {
			e.printStackTrace();
		}
			return res;
	}//end method

		
		
		
}//end class
	
	
	
	


	
