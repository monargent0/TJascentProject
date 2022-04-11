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
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/headers/">
    <!-- Bootstrap core CSS -->
	<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- 메인홈바  CSS -->
	<link type="text/css" href="css/productlist.css" rel="stylesheet" >
	 
	 <!-- Custom styles for this template -->
    <link href="headers.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
    rel="stylesheet" 
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
    crossorigin="anonymous">

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
  <%-- 아이콘 --%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>ascent</title>
<!-- 상품에 마우스 올릴때 및 위치 조정  -->
<style>
 .py-5 div:hover {
  border-color:#333;     
 }   
  .col {
  padding:70px 70px 0 70px;
  } 

  .detail-text-center {
 	padding:30px;
  height:140px;
  text-align:center;
  }    
 </style>
</head>
<!-- 메인 홈바  -->
<body>
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
							<li><a class="dropdown-item" href="pPList.do">Eau de perfume</a></li>
							<li><a class="dropdown-item" href="pTList.do">Eau de toilette</a></li>
							<li><a class="dropdown-item" href="pCList.do">Eau de cologne</a></li>
							<li><a class="dropdown-item" href="pBList.do">Body Spray</a></li>
						</ul>
					</li> 
					<!-- 1:1문의 ,공지사항, 상품문의  -->
					<li><a class="nav-link px-2" href="main.do">About</a>
						<ul>
							<li><a href="#">Notice</a></li>
							<li><a href="counselList.do">Q&A</a></li>
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
					<script>
					var k = 0;
					$('k').on('click', function() {
						if (k == 0) {
							$(this).attr('class', 'bi-search-heart');
							k++;
						} else if (k == 1) {
							$(this).attr('class', 'bi-search');
							k--;
						}
					});
				</script>
					<%
					if(session.getAttribute("userID") == null){
					%>
					<i class="bi bi-person-fill" style="font-size:2.5rem;cursor: pointer;" onclick = "location.href='logInV.jsp'" ></i>
					<%
					}else if(session.getAttribute("userID") != null){
					%>
					<i class="bi bi-person-fill" style="font-size:2.5rem;cursor: pointer;" onclick = "location.href='myPageV.jsp'" ></i>
				  <% } %>
				  
					<j  class="bi bi-bag-heart" style="font-size:2.3rem; cursor: pointer;" href="#"></j>

				<script>
					var j = 0;
					$('j').on('click', function() {
						if (j == 0) {
							$(this).attr('class', 'bi-bag-check-fill');
							j++;
						} else if (j == 1) {
							$(this).attr('class', 'bi-bag-heart');
							j--;
						}
					});
				</script>
				</div>
			</div>
			
		</div>
	</nav>
	
<!-- Header-->
     <!--    <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">shop</h1>
                    <p class="lead fw-normal text-white-50 mb-0">find your own scent</p>
                </div>
            </div>
        </header> -->
     
<!-- 상품 -->
               			   <section class="py-5">
               			  <div class="row row-cols-1 row-cols-md-4 g-4">
		  					<c:forEach items="${appList }" var="dto"><%--반복문,dto --%>
 								 <div class="col">
   									 <div class="card h-100">
   									  <a class="card-image" href="productDetail.do?productCode=${dto.productCode }">
   									  <img class="card-img-top" src="${dto.productImages}" alt="" /></a>
     								 <div class="card-body">
     								  <div class="detail-text-center">
                              	     <p class="pd.name">${dto.productName }</p>
                                    <!-- Product size-->
                             		<p class="pd.size">${dto.productSize }ml</p>
                                    <!-- Product price-->
                                	<p class="pd.price">${dto.productPrice }원</p>
                             	
    				 		 </div>
    				 		 </div>
    				 		 </div>
    				 		 </div>
               		 </c:forEach>
  				  </div>
  				  </section>
                            <!-- Product actions-->
                           
                            		
                            		
                               
                           
                 
           
           
           
           
           
           
           
           
           
           
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>