<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="db.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="db.User" scope="page" />
<jsp:setProperty name="user" property="u_id" />
<jsp:setProperty name="user" property="u_pw" />	
<jsp:setProperty name="user" property="u_name" />
<jsp:setProperty name="user" property="u_address" />
<jsp:setProperty name="user" property="u_phone" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
	<body>
		<%	// ---> 2.
			if (user.getU_id() == null || user.getU_pw() == null || user.getU_name() == null
				|| user.getU_address() == null || user.getU_phone() == null) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다.')");
				script.println("history.back()");
				script.println("</script>");
			} else {  // ---> 3.
				UserDAO userDAO = new UserDAO();
				int result = userDAO.join(user);
				if (result == -1) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('이미 존재하는 아이디입니다.')");
					script.println("history.back()");
					script.println("</script>");
				}
				else  {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("location.href = 'login.jsp'");
					script.println("</script>");
				}	
			}
		%>
	</body>
</html>