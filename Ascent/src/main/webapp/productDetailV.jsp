<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
 <!-- 메인홈바  CSS -->
<link type="text/css" href="css/productlist.css" rel="stylesheet" >
<link href="headers.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">

<%-- 아이콘 --%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>ascent</title>
<style>
.product_view { 
	position:relative;
	padding: 0 0 0 730px;
	width:1600px;
	box-sizing:border-box;	
}
.product_view .img{
	position: absolute;
	padding:50px 0 0 0; 
	left:200px;
	top:0;	
}
.product_view h2 {
margin:100px 0 15px;
padding: 0 0 20px;
border-bottom:1.5px solid #333;
font-size:30px;
color:#463D3D;
line-height: 26px;
}
.product_view table th,
.product_view table td {
	padding:14px 0 ;
	font-size: 20px;
	color:#444;
	text-align:left;
}
.product_view .btn {
padding: 45px 0 0; 
text-align:center;

}
.product_view .btn > button{
left:200px;
display:inline-block;
width:126px;
height:50px;
font-size:20px;
border-radius:2px;
color:#999191;
line-height: 42px;
background:#1A0D35;
} 

</style>
</head>
<body style="background-color:#FFFAF6">
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
      			 <!--검색내용  -->
				<form  class="d-flex" method="post" action="searchProduct.do" >
				<div>
					<input value="${param.searchText }" type="text"  class="form-control me-2" placeholder="검색하기" name="searchText" aria-label="Search"> 
				</div>
				
					<div class="text-end">
					
					<!--  검색 -->
					<div> 
				<button type="submit" class="btn text-white">
                  <svg xmlns="http://www.w3.org/2000/svg"  width="20" height="20" fill="currentColor" class="bi bi-search-heart" viewBox="0 0 14 14 ">
				  <path d="M6.5 4.482c1.664-1.673 5.825 1.254 0 5.018-5.825-3.764-1.664-6.69 0-5.018Z"/>
 				 <path d="M13 6.5a6.471 6.471 0 0 1-1.258 3.844c.04.03.078.062.115.098l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1.007 1.007 0 0 1-.1-.115h.002A6.5 6.5 0 1 1 13 6.5ZM6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11Z"/>
				</svg>
				<span class="visually-hidden"></span>
                </button>
				 </div> 
				 </div>
				</form>
				
				<!-- 마이페이지 -->
					<% 
				 	 if(session.getAttribute("userID") == null){
					%>
					<i class="bi bi-person-fill" style="font-size:2.5rem;cursor: pointer;" onclick = "location.href='logInV.jsp'" ></i>
					<%
					}else if(session.getAttribute("userID") != null){
					%>
					<i class="bi bi-person-fill" style="font-size:2.5rem;cursor: pointer;" onclick = "location.href='myPageV.jsp'" ></i>
				  <% } %>
				  <!-- 장바구니 -->
					<j  class="bi bi-bag-heart" style="font-size:2.3rem; cursor: pointer;" onclick = "cartListCheckUser()"></j>
					
				</div>
			</div>
	</nav>
	
	<!--  상품상세  -->
	<div class="product_view">
		<h2>${detail.productName }</h2>
		<table>
		<colgroup>
	 	<col style="width:173px;">
		<col>
		</colgroup>
		<tbody>
		<tr>	<!-- c:foreach는 dao arraylist 쓸때만   -->
			<th>브랜드</th>
			<td>${detail.productBrand }</td>
		</tr>
		<tr>	
			<th>가격</th>
			<td>${detail.productPrice  }원</td>
		</tr>
		
		<tr>
			<th>상품명</th>
			<td>${detail.productName }</td>
		</tr>
		<tr>
			<th>용량</th>
			<td>${detail.productSize }ml</td>
		</tr>
		<tr>
			<td>
				<form name="cartForm" method="post" action="cartWrite.do">
				<input type="hidden" name="userID" value="<%=session.getAttribute("userID") %>" >
				<input type="hidden" name="productCode" value="${detail.productCode }" >
				<select name="cartAmount" class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
				 <option value="1">1 </option>
				 <option value="2">2 </option>
				 <option value="3">3 </option>
				 <option value="4">4 </option>
				 <option value="5">5 </option>
				 <option value="6">6 </option>
				 <option value="7">7 </option>
				 <option value="8">8 </option>
				 <option value="9">9 </option>
				 <option value="10">10 </option>
				</select> 
				<div class="btn">  
				<button class="btn1" type="button" onclick="cartWriteCheckUser()">장바구니</button>
				</div>
				</form>
			</td>
		</tr>
		</tbody>
		</table>
		<div>
			<img class="img" width="430px" src="${detail.productImages }">
		</div>
	</div>
	 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
<script>
	var cartForm = document.cartForm;
	var userID = '<%=session.getAttribute("userID")%>';
	var productCode1 = document.cartForm.productCode.value;
function cartWriteCheckUser() {
	
	if (userID != 'null'){
		cartForm.submit();
		alert("장바구니에 담았습니다.")
	}
	else{
		alert("로그인이 필요합니다.");
		location.href='logInV.jsp?productCode='+productCode1;
	}
}
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