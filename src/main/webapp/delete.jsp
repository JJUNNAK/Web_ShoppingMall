<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
    
    <%@ page import="db.Conn_Test" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int b_id = Integer.parseInt(request.getParameter("b_id"));
	Conn_Test ct = new Conn_Test();
	int res = ct.delete(b_id);
	
	if(res>0){
%>
		<script type="text/javascript">
			alert("글 삭제 성공");
			location.href="main.jsp";
		</script>
<% 
	}else{
%>
		<script type="text/javascript">
			alert("글 삭제 실패");
			location.href="main.jsp";
		</script>
<%
	}
%>


</body>
</html>