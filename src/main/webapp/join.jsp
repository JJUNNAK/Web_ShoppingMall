<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name = "viewport" content="width=device-width", initial-scale="1">
<title>회원가입</title>

<style>
	.btn{
		padding: 5px 10px 5px 10px;
		border-radius: 3px;
		background-color: #eff0f1;
		text-becoration: none;
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
		<div style = "text-align:center">
	            <div id="con">
	                <div id="signup">
	                    <div id="signup_form"><!--회원가입 폼-->
	                            <form method="post" action="joinAction.jsp">
	                            	<div class="page-header">
	                                <h3 class="signup" style="letter-spacing:-1px; margin-top: 60px 0px 60px 0px;">회   원   가   입 <small>signup</small></h3>
	                                </div>
	                                    <hr>
	                                    <label>
	                                        <!-- 아이디 입력칸  -->
	                                        <p style="text-align: center; font-size:12px; color:#666; margin-top: 80px;">아이디</p>
	                                        <input type="text" placeholder="아이디" name="u_id" class="size">
	                                    </label>
	                                    <label>
	                                         <!-- 비밀번호 입력칸 -->
	                                         <p style="text-emphasis-style: left; font-size:12px; color:#666; margin-top: 40px;">비밀번호 </p>
	                                         <input type="password" placeholder="비밀번호" name="u_pw"class="size">
	                                    </label>
	                                    <label>
	                                        <!-- 아이디 입력칸  -->
	                                        <p style="text-align: center; font-size:12px; color:#666; margin-top: 80px;">이름</p>
	                                        <input type="text" placeholder="이름" name="u_name" class="size">
	                                    </label>
	                                    <label>
	                                        <!-- 아이디 입력칸  -->
	                                        <p style="text-align: center; font-size:12px; color:#666; margin-top: 80px;">주소</p>
	                                        <input type="text" placeholder="주소" name="u_address" class="size">
	                                    </label>
	                                    <label>
	                                        <!-- 아이디 입력칸  -->
	                                        <p style="text-align: center; font-size:12px; color:#666; margin-top: 80px;">전화번호</p>
	                                        <input type="text" placeholder="전화번호" name="u_phone" class="size">
	                                    </label>                                                                        
	                                    <br>
	                                    <input type="submit" value="등록하기" class="btn subbmit" style="margin-top: 40px;"><br>            
	                            </form>
	                    </div>
	                </div>
	            </div>
	        </div>
	</body>

</html>