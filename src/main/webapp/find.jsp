<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID/PW 찾기</title>
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
                <div id="find">
                    <div id="find_form"><!--아이디 비번 찾기 폼-->
                            <form>
                            	<div class="page-header">
                                <h3 class="signup" style="letter-spacing:-1px; margin-top: 60px 0px 60px 0px;">ID/PW 찾기 <small>find your ID/Password</small></h3>
                                </div>
                                    <hr>
                                    <label>
                                        <!-- 아이디 입력칸  -->
                                        <p style="text-align: center; font-size:12px; color:#666; margin-top: 80px;">아이디 찾기</p>
                                        <input type="text" placeholder="복구 이메일 입력" class="size">
                                    </label>
                                    <input type="submit" value="확인" class="btn subbmit">
                                    <label>
                                         <!-- 비밀번호 입력칸 -->
                                         <p style="text-emphasis-style: left; font-size:12px; color:#666; margin-top: 40px;">비밀번호 찾기</p>
                                         <input type="password" placeholder="아이디 입력" class="size">
                                    </label>
                                    <input type="submit" value="확인" class="btn subbmit">
                                    <br>           
									<a href="login"><input type="button" class="btn login"  value="로그인 페이지로 이동" style="margin-top: 100px;"></a>
                            </form>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>