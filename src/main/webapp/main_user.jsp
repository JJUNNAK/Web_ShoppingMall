<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="db.Conn_Test" %>
    <%@ page import="db.Board_info" %>
    <%@ page import="java.util.List"%>
    <%@ page import="db.Product" %>
    <%@ page import="db.Product_info" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Homepage - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">ICT-JAVA</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                                <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="d-flex">
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>
                    </form>
                   
                </div>
               
<!-- 	<div class="jumbotron" style="padding-top: 20px; padding-left: 100px; padding-right: 0px"> -->
<!-- 				<form method="post" action="loginAction.jsp"> -->
<!-- 				<button type="login" class="btn btn-warning" style="float:right; background-color:white;">회원가입</button> -->
<!-- 				<button type="login" class="btn btn-warning" style="float:right; background-color:white;">로그인</button> -->
				
					
<!-- 				</form> -->
<!-- 		</div> -->
		
            </div>
        </nav>
        <% Conn_Test conn = new Conn_Test();
	List<Board_info> list = conn.get_board(); %>
        <!-- Header-->
        <table class="table table-borderd"  >
       	<thead>
       	<tr>
<!--        		<th>번호</th> -->
       		<th>작성자</th>
       		<th>제목</th>
       		<th>날짜</th>
       	</tr>
       	</thead>
       	<tbody>
       	<%
	for(int i=0; i<list.size(); i++){
%>		
	<tr>
<%-- 		<td><%=list.get(i).getB_id() %></td> --%>
		<td><%=list.get(i).getB_writer() %></td>
		<td><a href="selectone.jsp?b_id=<%=list.get(i).getB_id()%>"><%=list.get(i).getB_tittle() %></a></td>
		<td><%=list.get(i).getB_regdate() %></td>
<%
	}
%>
	

       	</tbody>
       </table>
       <hr/>
<!--        민호형 작업하세여 -->
         
       
       <div class="text-center">
       	<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
<!--     <li class="page-item disabled"> -->
<!--       <a class="page-link">Previous</a> -->
<!--     </li> -->
<!--     <li class="page-item"><a class="page-link" href="#">1</a></li> -->
<!--     <li class="page-item"><a class="page-link" href="#">2</a></li> -->
<!--     <li class="page-item"><a class="page-link" href="#">3</a></li> -->
<!--     <li class="page-item"> -->
<!--       <a class="page-link" href="#">Next</a> -->
<!--     </li> -->
  </ul>
</nav>
       	</div>
       	  <!--  여기 부터 상품 리스트임  -->
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <% Product product = new Product();
							List<Product_info> p_list = product.get_product(); %>
								<%
								for(int i=0; i<p_list.size(); i++){  %>	
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- 세일 마크 -->
<!--                             <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div> -->
                            <!-- 상품 이미지 -->
                            <img class="card-img-top" src="<%=p_list.get(i).getP_image()%>" alt="..." />
                            <!-- 상품 상세-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- 상품이름 -->
                                    <h5 class="fw-bolder"><%=p_list.get(i).getP_name()%></h5>

                                   <%=p_list.get(i).getP_price()%> 원
                                </div>
                            </div>							
                      <!--  여기 까지 상품 리스트임  -->
                           <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="productinfo.jsp?p_id=<%=p_list.get(i).getP_id()%>">상세 정보</a></div>
                            </div>
<!--                             <div class="card-footer p-4 pt-0 border-top-0 bg-transparent"> -->
<%--                                 <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="delete_product.jsp?p_id=<%=p_list.get(i).getP_id()%>">상품 삭제</a></div> --%>
<!--                             </div> -->
                           
                        </div>
                        
                    </div>
                     <% } %>
                    
                </div>
               
            </div>
            
            
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        
    </body>
</html>
