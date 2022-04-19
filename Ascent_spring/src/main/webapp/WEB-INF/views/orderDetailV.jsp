<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/headers/">

<!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
<link type="text/css" href="css/productlist.css" rel="stylesheet" >
<!-- Custom styles for this template -->
<link href="headers.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<%-- 아이콘 --%>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<title>Order Detail</title>
</head>
<style>
	  table {
        border-collapse: collapse;
        width: auto;
        height: auto;
      }
      
      table, th, td {
        padding: 5px;
       }
       th{
       border-top : 1px solid black;
       border-bottom: 1px solid black;
       }
       
      .list{
      	position: absolute;
      	top : 50%;
      	left : 50%;
      	transform : translate(-50%,-50%);
      }
</style>
<body>
	<!-- 메인홈바 -->
	<nav id="navBar" class="navbar navbar-expand-lg navbar">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					
				<!-- 상품 카테고리 한눈에 차라락 보여주기  -->
					<ul id="nav">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="main.do" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Scent </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="allList.do">All</a></li>
							<li><a class="dropdown-item" href="sFList.do">Floral</a></li>
							<li><a class="dropdown-item" href="sCList.do">Citrus</a></li>
							<li><a class="dropdown-item" href="sFRList.do">Fresh</a></li>
							<li><a class="dropdown-item" href="sFTList.do">Fruity</a></li>
							<li><a class="dropdown-item" href="sWList.do">Woody</a></li>
							<li><a class="dropdown-item" href="sOList.do">Oriental</a></li>
						</ul>
					</li> 
				<!-- 상품별로 보여주기  -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="main.do" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Perfume </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="allList.do">All</a></li>
							<li><a class="dropdown-item" href="pPList.do">Eau de perfume</a></li>
							<li><a class="dropdown-item" href="pTList.do">Eau de toilette</a></li>
							<li><a class="dropdown-item" href="pCList.do">Eau de cologne</a></li>
							<li><a class="dropdown-item" href="pBList.do">Body Spray</a></li>
						</ul>
					</li>
					<!-- 1:1문의 ,공지사항, 상품문의  -->
					<li><a class="nav-link px-2" href="#">About</a>
						<ul>
							<li><a href="noticeBoardList.do">Notice</a></li>
							<!-- <li><a href="counselList.do">Q&A</a></li> -->
							<%
							if(session.getAttribute("userID") == null){
							%>
							<li><a href="logInV.jsp">Q&A</a></li>
							<%
							}else if(session.getAttribute("userID") != null){
							%>
							<li><a href="counselList.do">Q&A</a></li>
						  <% } %>
						</ul>
					</li>
				</ul>
				</ul>
				<!--로고 -->
      			  <div class="container col-12 col-lg-auto me-lg-auto mb-2 mb-md-0">
   					 <a class="navbar-brand" href="main.do">
   					   <img src="assets/logo.png"  alt="" width="300" height="150">
  					  </a>
				  </div>
      			 <!--검색하기  -->
				<form  class="d-flex">
					<input class="form-control me-2" type="search" placeholder="검색하기" aria-label="Search"> 
				</form>
				<!--검색,마이페이지,장바구니 아이콘  -->
				<div class="text-end">
					<k class="bi bi-search" style="font-size:2.1rem; cursor: pointer;" href="#"></k>

					<% 
				 	 if(session.getAttribute("userID") == null){
					%>
					<i class="bi bi-person-fill" style="font-size:2.5rem;cursor: pointer;" onclick = "location.href='logInV.jsp'" ></i>
					<%
					}else if(session.getAttribute("userID") != null){
					%>
					<i class="bi bi-person-fill" style="font-size:2.5rem;cursor: pointer;" onclick = "location.href='myPageV.jsp'" ></i>
				  <% } %>
					<j  class="bi bi-bag-heart" style="font-size:2.3rem; cursor: pointer;" onclick="cartListCheckUser()"></j>
				</div>
			</div>
		</div>
	</nav>

	<div class="list">
		<h1>Order Detail</h1>
		<table >
			<tr >
				<th hidden="">userID</th>
				<th hidden="">orderCode</th>
				<th>주문번호</th>
				<th>주문일</th>
				<th>이미지</th>
				<th>이름</th>
				<th>용량</th>
				<th>가격</th>
				<th>수량</th>
				<th>합계</th>
				<!-- <th>주문수량</th>
				<th>주문총액</th> -->
			</tr>
			<form method="post" name="detailForm">
			<c:forEach items="${orderDetail }" var="dto">
			<tr>
				<td hidden="">
				<input type="text" value="<%=session.getAttribute("userID") %>" name="userID" readonly="readonly" >
				</td>
				<td hidden="">
				<input type="text" value="${dto.orderCode }" name="orderCode" readonly="readonly">
				</td>
				<td align="center">
				<h3>${dto.orderNumber }</h3>
				</td>
				<td align="center">
				${dto.orderDate }
				</td>
				<td align="center">
				<img class="img" src="${dto.productImages }" width="150px" name="productImages">
				</td>
				<td align="center">
				${dto.productName }
				</td>
				<td align="center">
				${dto.productSize } ml
				</td>
				<td align="center">
				${dto.productPrice } 원
				</td>
				<td align="center">
				${dto.cartAmount } 개
				</td>
				<td align="center">
				${dto.cartSum } 원
				</td>
			<%-- 	<td align="center">
				<input type="text" value="${dto.orderAmount }" name="orderAmount" readonly="readonly">
				</td>
				<td align="center">
				<input type="text" value="${dto.orderSum }" name="orderSum" readonly="readonly">
				</td> --%>
				<td align="center">
				<input type="submit" value="후기 작성" formaction="reviewWrite.do?orderCode=${dto.orderCode }">
				<input type="submit" value="환불" formaction="refund.do?orderCode=${dto.orderCode }">	
				</td>
			</tr>
			</c:forEach>
			</form>
		</table>
	</div>

</body>
<script>
var userID = '<%=session.getAttribute("userID")%>';
function cartListCheckUser() {
	if (userID != 'null'){
		location.href='cartList.do?userID='+userID;
	}
	else{
		alert("로그인이 필요합니다.");
		location.href='logInV.jsp';
	}
}
function sendProductCodeLogin() {
	if (userID != 'null'){
		location.href='myPage.jsp'
	}
	else{
		alert("로그인이 필요합니다.");
		location.href='logInV.jsp?productCode='+productCode1;
	}
}
</script>
</html>