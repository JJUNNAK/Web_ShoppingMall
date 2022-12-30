package db;

import java.sql.Date;

public class Product_info {
	
	
	private int p_id;
	private String p_image;
	private String p_name;
	private int p_price;
	
	
	// 생성자
	public Product_info() {
		super();
	}
	
	
	// 매개변수 생성자
	public Product_info(int p_id, String p_image, String p_name, int p_price) {
		super();
		this.p_id = p_id;
		this.p_image = p_image;
		this.p_name = p_name;
		this.p_price = p_price;
		
	}
	
	
	// getter /  setter
	
	public int getP_id() {
		return p_id;
	}


	public void setP_id(int p_id) {
		this.p_id = p_id;
	}


	public String getP_image() {
		return p_image;
	}


	public void setP_image(String p_image) {
		this.p_image = p_image;
	}


	public String getP_name() {
		return p_name;
	}


	public void setP_name(String p_name) {
		this.p_name = p_name;
	}


	public int getP_price() {
		return p_price;
	}


	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	
	
	
	
	
	

}
