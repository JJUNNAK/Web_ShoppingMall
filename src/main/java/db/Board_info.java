package db;

import java.sql.Date;

public class Board_info {


	private int b_id;
	private String b_writer;
	private String b_tittle;
	private String b_content;
	private Date b_regdate;
	
	
	// 생성자
	public Board_info() {
		super();
	}
	
	
	// 매개변수 생성자
	public Board_info( String b_writer, String b_tittle, String b_content, Date b_regdate, int b_id ) {
		super();
		this.b_writer = b_writer;
		this.b_tittle = b_tittle;
		this.b_content = b_content;
		this.b_regdate = b_regdate;
		this.b_id = b_id;
		
	}
	
	
	
	// getter /  setter
	public int getB_id() {
		return b_id;
	}


	public void setB_id(int b_id) {
		this.b_id = b_id;
	}


	public String getB_writer() {
		return b_writer;
	}


	public void setB_writer(String b_writer) {
		this.b_writer = b_writer;
	}


	public String getB_tittle() {
		return b_tittle;
	}


	public void setB_tittle(String b_tittle) {
		this.b_tittle = b_tittle;
	}


	public String getB_content() {
		return b_content;
	}


	public void setB_content(String b_content) {
		this.b_content = b_content;
	}


	public Date getB_regdate() {
		return b_regdate;
	}


	public void setB_regdate(Date b_regdate) {
		this.b_regdate = b_regdate;
	}
	

}

	
