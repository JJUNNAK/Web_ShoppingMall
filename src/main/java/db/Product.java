package db;

import com.mysql.cj.protocol.Resultset;
import com.mysql.cj.xdevapi.PreparableStatement;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.sql.*;
import java.util.*;
import java.util.Properties;

/*
상품
CREATE TABLE product(
p_id INT NOT NULL primary key,
p_image VARCHAR(5000),
p_name VARCHAR(50) NOT NULL,
p_price INT NOT NULL
);
*/

public class Product {
	
	Properties prop = new Properties();
	Statement st;
  	ResultSet rs;
  	PreparedStatement psmt;
  	Connection conn;
  	
  	// ******************************** 본인 컴퓨터에 맞는 프로퍼티 경로 입력!!! ********************************
  	String prop_path = "C:\\Users\\nackjun\\eclipse-workspace\\board_Test\\src\\main\\webapp\\WEB-INF/db.properties";
   // ***************************************************************************************************
  	
  	
	public Product() {
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
	}//end Product
	
	
	
	public List<Product_info> get_product(){
		
//		Statement st;
//	  	ResultSet rs;
	  	List<Product_info> res = new ArrayList<Product_info>();
	  	Product_info product_info = new Product_info();

	  	try {
	  		 
         

         
     	
         // SQL 쿼리
         st = conn.createStatement();
         String sql = "select * from product;";
         
         rs = st.executeQuery(sql);
         while(rs.next()) {
        	 Product_info p = new Product_info(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4));
        	 res.add(p);
        			 
         }
         
         // DB 연결 종료
         conn.close();
         
         System.out.println("# 상품 목록 출력");

      }
//      catch(ClassNotFoundException error) {
//         System.out.println("mysql driver 경로 오류 ");
//      }
      catch(SQLException error) {
         error.printStackTrace();
	}

		
		return(res);
		
		
	}
	
	public Product_info get_detail(int p_id) {

	  	Product_info res = null;
	  	
		try {
	         String sql = "select * from product where p_id=?";
	         
	         psmt=conn.prepareStatement(sql);
	         psmt.setInt(1, p_id);
	         
	         rs = psmt.executeQuery();
	         
	         while(rs.next()) {
	        	 res = new Product_info();
	        	 res.setP_id(rs.getInt(1));
	        	 res.setP_image(rs.getString(2));
	        	 res.setP_name(rs.getString(3));
	        	 res.setP_price(rs.getInt(4));
	        	 
	         }
	         
	         System.out.println("# 상품 상세정보 출력");
		}catch(SQLException e) {
			e.printStackTrace();
		}

			return res;
		}//end get_detail

	
	
	public int insert_product(Product_info pi) {

	  	int res = 0;
	  	
		try {
			
			
			
	         String sql = "insert into product values(? ,? ,? ,?)";
	         
	         psmt = conn.prepareStatement(sql);
	         psmt.setInt(1, pi.getP_id());
//	         이미지 업로드 수정 필요
	         psmt.setString(2, pi.getP_image());
	         psmt.setString(3, pi.getP_name());
	         psmt.setInt(4, pi.getP_price());
	         
	         res = psmt.executeUpdate();

	         System.out.println("# 상품 등록 ");
		}catch(Exception e) {
			e.printStackTrace();
		}
			return res;
	}//end insert
	
	public  int delete_product(int p_id) {
//		PreparedStatement psmt;
		
	  	int res = 0;
	  	
		try {
			
	         String sql = "delete from product where p_id=?";
	         
	         psmt = conn.prepareStatement(sql);
	         psmt.setInt(1, p_id);
	         
	         res = psmt.executeUpdate();
	         
	         
	         System.out.println("# 상품 삭제");
	         
		}catch(Exception e) {
			e.printStackTrace();
		}
			return res;
	}//end method
	
}
