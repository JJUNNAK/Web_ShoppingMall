<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 	<% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
    <%@ page import="db.Product" %>
    <%@ page import="db.Product_info" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품상세정보</title>
<style>
        body{ padding: 50px;}

        .btn{
		padding: 5px 10px 5px 10px;
		border-radius: 3px;
		background-color: #eff0f1;
		font-size: 0.8rem;
		border : none;
	}
		

	
	.btn:focus {
		outline: none;
	}
	
	.btn:hover {
		background-color: black;
		color: white;
	}

    body { padding: 50px;}

    .product_view { position: relative;padding: 0 0 0 395px; width: 962px; box-sizing: border-box;}
    .product_view .img { position: absolute; left: 0; top: 0;}
    .product_view .img > img { width: 368px; height: 370px; border:1px solid #e8e8e8; }
    .product_view .img li:after { content: ""; display: block; clear: both;}
    .product_view .img li { float: left; padding: 10px 10px 0 0;}
    .product_view .img li.on img { border-color:#0a56a9;}
    .product_view .img li img { width: 68px; height: 68px; border:1px solid #e8e8e8;}
    .product_view h2 { margin: 0 0 15px; padding: 0 0 20px; border-bottom:2px solid #333; font-size:24px; color:#232323; line-height: 26px;}
    .product_view table th,
    .product_view table td { padding:14px 0; font-size: 15px; color:#444; text-align: left;}
    .product_view table td.price { font-size: 22px;}
    .product_view table td.total { font-size:19px; color:#0a56a9;}
    .product_view table td.total b { font-size: 22px;}
    .product_view table .length { position: relative; width: 71px; height: 32px; border:1px solid #c6c6c6;}
    .product_view table .length input { width:44px; height: 30px; border:none;border-right:1px solid #c6c6c6; text-align:center; }
    .product_view table .length a { overflow: hidden;position: absolute; right: 0; width: 26px; height: 16px; color:transparent;}
    .product_view table .length a:nth-of-type(1) {  top: 0;background: url("../images/ico_up.png") no-repeat center;}
    .product_view table .length a:nth-of-type(2) { bottom:0; background: url("../images/ico_down.png") no-repeat center; border-top:1px solid #c6c6c6;}
    .product_view table select { width:100%; border:1px solid #c6c6c6; box-sizing: border-box;  background: url("../images/ico_select.png") no-repeat right 11px center;appearance:none; -webkit-appearance:none; -moz-appearance:none;}
    .product_view table select::-ms-expand { display: none;}
    .product_view .btns { padding: 45px 0 0; text-align: center;}
    .product_view .btns > a { display: inline-block; width: 136px; height: 42px;border-radius: 2px; font-size: 16px; color:#fff; line-height: 42px; }
    .product_view .btns > a.btn1 { background: #666;}
    .product_view .btns > a.btn2 { background: #0a56a9;}

    </style>
</head>
<body>
	<% 	int p_id = Integer.parseInt(request.getParameter("p_id"));
	Product product = new Product();
	Product_info p = product.get_detail(p_id); %>		
	<div class="product_view">
		<h2><%=p.getP_name()%></h2>
		<table>
			<caption>
				<details class="hide">
					<summary>상품정보</summary>
					판매가, 상품코드, 옵션 및 결제금액 안내
				</details>
			</caption>
			<colgroup>
			<col style="width:173px;">
			<col>
			</colgroup>
			<tbody>
			<tr>
				<th>판매가</th>
				<td class="price"><%=p.getP_price()%></td>
			</tr>
			<tr>
				<th>상품코드</th>
				<td><%=p.getP_id()%></td>
			</tr>
			<tr>
				<th>구매수량</th>
				<td>
					<div class="length">
						<input type="number" min="1" value="1">
						<a href="#a">증가</a>
						<a href="#a">감소</a>
					</div>
				</td>
			</tr>
			<tr>
				<th>사용가능쿠폰</th>
				<td>0개</td>
			</tr>
			<tr>
				<th>사이즈 선택</th>
				<td>
					<select>
					<option>free</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>배송비</th>
				<td>무료배송</td>
			</tr>
			<tr>
				<th>결제금액</th>
				<td class="total"><b><%=p.getP_price()%></b>원</td>
			</tr>
			</tbody>
		</table>
		<div class="img">
			<img src="<%=p.getP_image()%>" alt="">
		</div>
        <a href="buy.jsp?p_id=<%=p.getP_id()%>"><input type="button" class="btn login"  value="구매하기" style="margin-top: 100px;"></a>            
		<a href="main_user.jsp"><input type="button" class="btn main"  value="메인으로 이동" style="margin-top: 100px;"></a>
    </div>
	
</body>
</html>