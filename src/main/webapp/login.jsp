<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name = "viewport" content="width=device-width", initial-scale="1">
<title>로그인</title>
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
	
	.input{
		padding: 80px 0px 50px 0px;
	}
</style>
</head>
<body>
	<div style = "text-align:center">
            <div id="con">
                <div id="login">
                    <div id="login_form"><!--로그인 폼-->
                            <form method="post" action="loginAction.jsp">
                            	<div class="page-header">
                                <h3 class="signup" style="letter-spacing:-1px; margin-top: 60px 0px 60px 0px;">로  그  인 <small>login</small></h3>
                                </div>
                                    <hr>
                                    <label>
                                        <!-- 아이디 입력칸  -->
                                        <p style="text-align: center; font-size:12px; color:#666; margin-top: 80px;">아이디</p> 
                                        <input type="text" placeholder="아이디" name="u_id"class="size">
                                    </label>
                                    <label>
                                         <!-- 비밀번호 입력칸 -->
                                         <p style="text-emphasis-style: left; font-size:12px; color:#666; margin-top: 20px;">비밀번호 </p>
                                         <input type="password" placeholder="비밀번호" name="u_pw"class="size">
                                    </label>
                                    <br>
									<input type="submit" class="btn login" value="로그인">
									<input type="reset" class="btn login"  value="다시 입력" style="margin-top: 100px;">
									<input type="button" class="btn login" value="관리자 로그인" onclick="location.href='/board_Test/adminlogin.jsp'"/>
									<input type="button" class="btn login" value="회원가입" onclick="location.href='/board_Test/join.jsp'"/>
                         	</form>
                     </div>                     
                 </div>
            </div>
            </div>
</body>
</html>