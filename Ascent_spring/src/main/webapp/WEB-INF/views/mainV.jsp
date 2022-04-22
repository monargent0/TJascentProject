<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>ascent</title>
<!-- 비디오 -->
<style>
#videobcg {
	position: relative;
	top:0px;
	left:-15px;
	min-width:100%;
	min-height:100%;
	padding-bottom:70px;
	height:auto;
	margin:0;
	z-index:-1000;
}
/*상품구현 위치 */
#container1 {
		position: relative;
		top:300px;
}
</style>
<!-- 상품에 마우스 올릴때 및 위치 조정  -->
<style>
  .py-5 div:hover {
  border-color:#333;
 }   
  .col {
  padding:70px 70px 0 70px;
  } 
 .detail-text-center {
  padding:15px;
  height:140px;
  text-align:center;
  }
  .card-img-top{
  width: 100%;
  height: 22rem;
  object-fit: cover;
  }
 </style>
</head>
<body style="background-color:#FFFAF6">
<%@include file="head.jsp" %>	
	
	
		<!-- 비디오1  -->
		<!-- 비디오에 하이퍼링크 띄우기  -->
		<ul>
		<video id="videobcg" width="100%" height="480"  autoplay loop muted>
			<source	src="assets/pexels-rose.mp4" type="video/mp4" >
		</video>
			<div class="jb-text">
      	  <p id="hyper1">Red in full bloom</p>
    	  </div>
		<a id="hyper2" href="sFList.do">More </a>		
		</ul>
		
	<!-- 상품 구현  -->
    
    <section class="py-5">
               			  <div class="row row-cols-1 row-cols-md-4 g-4">
		  					<c:forEach items="${mainList }" var="dto"><%--반복문,dto --%>
 								 <div class="col">
   									 <div class="card h-100">
   									  <a class="card-image" href="productDetailV.?productCode=${dto.productCode }">
   									  <img class="card-img-top" src="${dto.productImages }" alt="" /></a>
     								 <div class="card-body">
     								  <div class="detail-text-center">
                              	     <p style="font-size: 15px;" class="pd.name">${dto.productName }</p> 
                                    <!-- Product size-->
                             		<p style="font-size: 13px;" class="pd.size">${dto.productSize }ml</p>
                                    <!-- Product price-->
                                	<p style="font-size: 16px;" class="pd.price">${dto.productPrice }원</p>
    				 		 </div>
    				 		 </div>
    				 		 </div>
    				 		 </div>
               		 </c:forEach>
  				  </div>
  				  </section>
 

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
	crossorigin="anonymous"></script>
</body>
</html>