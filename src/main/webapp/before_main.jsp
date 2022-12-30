<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
    <%@ page import="db.Conn_Test" %>
    <%@ page import="db.Board_info" %>
    <%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% Conn_Test conn = new Conn_Test();
	List<Board_info> list = conn.get_board(); %>
<h1>공지사항</h1>
<table border="1">
	<col width=10px> 
	<col width=80px>
	<col width=200px>
	<col width=100px>
	<col width=50px>
	<tr>
		<th>No</th>
		<th>작성자</th>
		<th>제목</th>
		<th>작성일자</th>
	</tr>
<%
	for(int i=0; i<list.size(); i++){
%>		
	<tr>
		<td><%=list.get(i).getB_id() %></td>
		<td><%=list.get(i).getB_writer() %></td>
		<td><a href="selectone.jsp?b_id=<%=list.get(i).getB_id()%>"><%=list.get(i).getB_tittle() %></a></td>
		<td><%=list.get(i).getB_regdate() %></td>
		<td><a href="delete.jsp?b_id=<%=list.get(i).getB_id()%>">삭제</a></td>
<%
	}
%>
	<tr>
		<td colspan="6" align="right">
			<button onclick="location.href='insert.jsp'" >글쓰기</button>
		</td>
	</tr>
</table>
</body>
</html>