<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
    
  	<%@ page import="db.Product" %>
    <%@ page import="db.Product_info" %>
    <%@ page import="java.io.File" %>
	<%@ page import="java.util.Enumeration" %>
	<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
	<%@ page import="com.oreilly.servlet.MultipartRequest"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String realFolder="";
	String saveFolder = "/images";		//사진을 저장할 경로
	String encType = "utf-8";				//변환형식
	int maxSize=5*1024*1024;				//사진의 size
			
	ServletContext context = this.getServletContext();		//절대경로를 얻는다
// 	realFolder = context.getRealPath(saveFolder);			//saveFolder의 절대경로를 얻음

	// ### 이미지 저장 경로 = 서버기준 폴더###
	realFolder=context.getRealPath(saveFolder);
	MultipartRequest multi = null;
	
	//파일업로드를 직접적으로 담당		
	multi = new MultipartRequest(request,realFolder,maxSize,encType);
	
	//form으로 전달받은 3가지를 가져온다
	int p_id = Integer.parseInt(multi.getParameter("p_id"));
	String p_name = multi.getParameter("p_name");
	int p_price = Integer.parseInt(multi.getParameter("p_price"));
	
	// ### form으로 입력받은 이미지의 이름을 image_name 에 저장. ###
	String image_name = multi.getFilesystemName("p_image");
	/* System.out.println(realFolder);
	System.out.println(image_name); */
	
	
	// ### DB에 저장할 이미지 경로를 임의로 images/이미지 형식으로 지정함. ###
	String p_image = "images" + "/" + image_name;
	System.out.println(p_image);
	
	Product_info pi = new Product_info();
	pi.setP_id(p_id);
	pi.setP_image(p_image);
	pi.setP_name(p_name);
	pi.setP_price(p_price);
	
	Product product = new Product();
	int res = product.insert_product(pi);
	
	if(res>0){
%>
		<script type="text/javascript">
			alert("상품이 등록되었습니다.");
			location.href="main.jsp";
		</script>
<% 
	}else{
%>
		<script type="text/javascript">
			alert("상품 아이디가 중복이거나 알수없는 오류가 발생하였습니다.");
			location.href="insert_product.jsp";
		</script>
<%
	}
%>
</body>
</html>