<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
    <%@ page import="db.Product" %>
    <%@ page import="db.Product_info" %> 
<<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매</title>

<style>
	.btn{
		padding: 5px 10px 5px 10px;
		border-radius: 3px;
		background-color: #eff0f1;
		font-size: 0.8rem;
		border : none;
	}
		
	.btn.login{
		display:inline-block;
		color: black;
	}
	
	.btn:focus {
		outline: none;
	}
	
	.btn:hover {
		background-color: black;
		color: white;
	}

    


</style>

</head>
<body>
<% 	int p_id = Integer.parseInt(request.getParameter("p_id"));
	Product product = new Product();
	Product_info p = product.get_detail(p_id); %>
<center>
	<div id="container">
		<h2>주문서 작성</h2>
			<p style="color: red; font-size: 10px">모든 항목을 모두 채워주세요.</p>
			<hr>
		<form action="Lab1_result.jsp" name="form" method="post">
			<p>이름</p>
			<input type="text" id="name" name="name">
		<span id="name_chk"> </span>
			<p>전화번호</p>
			<input type="text" id="tel" name="tel" placeholder="-제외하고 입력">

            <p>주소입력</p>
			<input type="text" id="tel" name="tel" placeholder="우편주소"><br>
            <input type="text" id="tel" name="tel" placeholder="기본주소"><br>
            <input type="text" id="tel" name="tel" placeholder="상세주소">
		<hr>
			<div class="total">
				금액 : <span id="total_price" style="font-size: 25px"><%=p.getP_price()%></span>
			</div>
			<p><input type="button" class="btn" value="구매" onclick=add() ></p>
		</form>
	</div>
</center>
</body>
</html>

<script>
    function add(){
         alert("구매가 완료 되었습니다.");
         window.location.href  ="main_user.jsp"//해당 주소로 이동하는방법
    }
</script>
