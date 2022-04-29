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
  padding:15px;
  height:140px;
  text-align:center;
  }
 
  .card-img-top{
  width: 100%; 
  height: 22rem;
  object-fit: cover;
  }
 .pagination {
      list-style:none;
     display:flex;
     justify-content: center;
     align-items: center;
  } 
  .pagination li{
  	float:left;
    font-size: 20px;
    font-weight: 300;
  }
 </style>
</head>
<body style="background-color:#FFFAF6">
<%@include file="head.jsp" %>
     
<!-- 상품 -->
               			   <section id="mytable" class="py-5">
               			  <div class="row row-cols-1 row-cols-md-4 g-4">
		  					<c:forEach items="${allList }" var="dto"><%--반복문,dto --%>
 								 <div class="col">
   									 <div class="card h-100">
   									  <a class="card-image" href="productDetailV?productCode=${dto.productCode }">
   									  <img class="card-img-top" src="${dto.productImages}" alt="" /></a>
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
 <!--  paging --> 
			 <nav class="paging-nav" aria-label="Page navigation example">
  			<div>
  			<ul class="pagination" id="pagination">
 			<!--  이전 페이지 -->
  				<c:if test="${pageMaker.prev }">
   				 <li class="page-item">
    			  	<a class="page-link" href="${pageMaker.startPage - 1 }" aria-label="Previous">
     			   <span aria-hidden="true">&laquo;</span>
    			 Previous </a>
   				</li>
   				</c:if>
   
   			<!-- 1부터 5까지 화면상 보여주는 페이지  -->	
   			<c:forEach var="num"  begin="1" end="${pageMaker.endPage }">
   			 <li class="page-item">
   			 <a class="page-link" href="/allList?num=${num }">${num }</a></li>		
   			 </c:forEach>	
   			 <!-- 다음 페이지  -->
   			 
   			 <c:if test="${pageMaker.next }">
   			 <li class="page-item">
    			  <a class="page-link" href="${pageMaker.endPage + 1 }" aria-label="Next">
    			  Next<span aria-hidden="true">&raquo;</span>
     			 </a>
    			</li>
  				</c:if>
  				</ul>
			</div>		
			</nav>
 
  	
	 <!-- paging move  form  -->
	<form id="moveForm" action="get">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
	</form>
	
	<!-- page move function -->
	<script>
			$(document).ready(function () {
				var moveForm = $("#moveForm");
				
				$(".page-item a").on("click",function(e) {
					
					e.preventDefault();
					moveForm.find("input[name= 'pageNum']").val($(this).attr("href"));
					moveForm.attr("action", "/allList");
					moveForm.submit();
				});
			});
	</script>
 

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>