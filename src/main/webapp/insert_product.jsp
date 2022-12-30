<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩 스크립트 설치-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<style>
.outer {
  position: relative;
  width: 100%;
  height: 100%;
  font-size: 25px;
  color:red;
  border: 2px solid green;
  margin:0;
}

#inner {
  position: absolute;
  transform: translate(-50%,-50%);
  left: 50%;
  top: 50%;
  width: 500px;
}

.p
{

font-variant: small-cpas;
font-weight: bolder;
font-size: 50px;
font-family: "Comic Sans", "Apple Chancery", cursive;
text-align: center;



}

     table, th, td {
        border: 1px solid #bcbcbc;
      }

      td {
        text-align: center;
      }

}




</style>
</head>
<body>
<!-- 부트스트랩 설치 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	
	
	<form encType = "multipart/form-data" action="insert_product_alert.jsp" method="post">
		<table class="table table-bordered" id="inner">
  <thead>
  	<tr><td colspan="2" align="right">
  	<div class="p"><p>상품등록</p></div>
  	</td>
  	</tr>
			<tr>
				<th>상품 코드</th>
				<td><input type="text" name="p_id"></td>
			</tr>
			<tr>
				<th>상품 이름</th>
				<td><input type="text" name="p_name"></td>
			</tr>
			<tr>
				<th>상품 가격</th>
				<td><input type="text" name="p_price"></td>
			</tr>
			<tr>
				<th>상품 이미지</th>
				<td><input type="file" name="p_image"></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
				<input type="submit" value="입력">
				<input type="button" value="취소" onclick="location.href='main.jsp'">
				</td>
			</tr>
		</table>	
	</form>
</body>
  <footer class="py-5 bg-dark">
            <div class="p"><p class="m-0 text-center text-white">ICT JAVA</p></div>
        </footer>
</html>