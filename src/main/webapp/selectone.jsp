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
<style>
	    .btn_wrap{
            padding: 5px 10px 5px 10px;
            border-radius: 3px;
            background-color: #eff0f1;
            border : none;
        }
            
    
        
        .btn_wrap:focus {
            outline: none;
        }
        
        .btn_wrap:hover {
            background-color: black;
            color: white;
        }
    
        html {
            font-size: 10px;
        }
    
        a {
            text-decoration: none;
            color: inherit;
        }
    
        .board_wrap {
            width: 1000px;
            margin: 100px auto;
        }
    
        .board_title {
            margin-bottom: 30px;
        }
    
        .board_title h1 {
            font-size: 3rem;
        }
    
        .bt_wrap {
            margin-top: 30px;
            font-size: 0;
        }
    
    
        .board_write {
            border-top: 2px solid #000;
        }
    
</style>
</head>
<body>
<% 	int b_id = Integer.parseInt(request.getParameter("b_id"));
	Conn_Test conn = new Conn_Test();
	Board_info b = conn.selectOne(b_id); %>

<div class="board_wrap">
        <div class="board_title">
	        <h1>게시판</h1>
        </div>
	    <form action="insert_alert.jsp" method="get">
            <div class="board_write_wrap">
                <div class="board_write">
                    <table>
                        <tr>
                            <th>작성자</th>
                            <td><%=b.getB_writer()  %></td>
                        </tr>
                        <tr>
                            <th>제목</th>
                            <td><%=b.getB_tittle()  %></td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td><textarea rows="10", cols="60" readonly="readonly"><%=b.getB_content()  %></textarea></td>	
                        </tr>
<!--                         <tr> -->
<!--                             <td colspan="2" align="right"> -->
<!--                             <button onclick="location.href='main.jsp'" >목록</button> -->
<!--                             </td> -->
<!--                         </tr> -->
                    </table>
                </div>	
            </div>
        </form>
    </div>
</body>
</html>