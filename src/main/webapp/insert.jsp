<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
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
    
     table, th, td {
        border: 1px solid #bcbcbc;
      }
      table {
        width: 1000px;
        height: 200px;
      }
      td {
        text-align: center;
      }
      table{
	margin : auto;
    height: 80%;
    width : 80%;
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
font-size: 30px;
font-family: "Comic Sans", "Apple Chancery", cursive;
text-align: center;



}

</style>
</head>
<body>
 
    <div  id="inner">
        
	    <form action="insert_alert.jsp" method="get">
            <div class="board_write_wrap">
                <div class="board_write">
                    <table>
                    <tr>
                    <div class="p">
	        <h1>글쓰기</h1>
        </div>
        </tr>
                        <tr>
                            <th>작성자</th>
                            <td><input type="text" name="b_writer"></td>
                        </tr>
                        <tr>
                            <th>제목</th>
                            <td><input type="text" name="b_tittle"></td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td><textarea  rows="10" cols="60" name="b_content"></textarea></td>
                        </tr>
                        <tr>
                            <td colspan="2" align="right">
                            <input type="submit" value="입력"  class="btn_wrap">
                            <input type="button" value="취소" onclick="location.href='main.jsp'"  class="btn_wrap">
                            </td>
                        </tr>
                    </table>
                </div>	
            </div>
	    </form>
    </div>
</body>
</html>