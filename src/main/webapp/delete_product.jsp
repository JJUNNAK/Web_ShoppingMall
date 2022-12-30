<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
    
    <%@ page import="db.Product" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int p_id = Integer.parseInt(request.getParameter("p_id"));
	Product p = new Product();
	int res = p.delete_product(p_id);
	
	if(res>0){
%>
		<script type="text/javascript">
			alert("상품이 삭제되었습니다. ");
			location.href="main.jsp";
		</script>
<% 
	}else{
%>
		<script type="text/javascript">
			alert("상품 삭제 오류");
			location.href="main.jsp";
		</script>
<%
	}
%>


</body>
</html>