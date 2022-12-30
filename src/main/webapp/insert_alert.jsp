<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
    
  	<%@ page import="db.Conn_Test" %>
    <%@ page import="db.Board_info" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String b_writer = request.getParameter("b_writer");
	String b_tittle = request.getParameter("b_tittle");
	String b_content = request.getParameter("b_content");
	
	Board_info bi = new Board_info();
	bi.setB_writer(b_writer);
	bi.setB_tittle(b_tittle);
	bi.setB_content(b_content);
	
	Conn_Test ct = new Conn_Test();
	int res = ct.insert(bi);
	
	if(res>0){
%>
		<script type="text/javascript">
			alert("글 등록 성공");
			location.href="main.jsp";
		</script>
<% 
	}else{
%>
		<script type="text/javascript">
			alert("글 등록 실패");
			location.href="insert.jsp";
		</script>
<%
	}
%>
</body>
</html>