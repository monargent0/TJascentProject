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
	<link type="text/css" href="css/productlist.css" rel="stylesheet" >
	  <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
	 <!-- Custom styles for this template -->
    <link href="headers.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  </head>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css"><%-- 아이콘 --%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>ascent</title>

</head>
<style>
.b-example-divider {
  height: 3rem;
  background-color: rgba(0, 0, 0, .1);
  border: solid rgba(0, 0, 0, .15);
  border-width: 1px 0;
  box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
}

.form-control-dark {
  color: #fff;
  background-color: var(--bs-dark);
  border-color: var(--bs-gray);
}
.form-control-dark:focus {
  color: #fff;
  background-color: var(--bs-dark);
  border-color: #fff;
  box-shadow: 0 0 0 .25rem rgba(255, 255, 255, .25);
}

.bi {
  vertical-align: -.125em;
  fill: currentColor;
}


.dropdown-toggle {
  outline: 0;
  
} 

 .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
</style>
<style>
.bi-search{
            font-size: 28px;
            line-height: 28px;
            color:black;
        }
        
.bi-person-fill{
            font-size: 32px;
            line-height: 32px;
            color:black;
            }
 .card-body {
         height:100px;
        }
 .py-5 div:hover {
       border-color:#333;
      
       }
     
  .col {
  padding:500px 0 0 100px;
  }     
</style>
<body>
<!-- 상단홈바 -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">ascent</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Shop</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           perfume
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">eau de perfume</a></li>
            <li><a class="dropdown-item" href="#">eau de toillette</a></li>
            <li><a class="dropdown-item" href="#">eau de cologne</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Body Spray</a></li>
          </ul>
          <li class="nav-item">
         <a  class="nav-link px-2 text-white" href="#">FAQs</a>
         </li>
            <li  class="nav-item">
            <a  class="nav-link px-2 text-white" href="#">About</a>
            </li>
      
       
      </ul>
      
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="검색하기" aria-label="Search">
        <i class="bi bi-search" ></i>
      </form>
    
      
      
       <div class="text-end">
    	<i class="bi bi-person-fill"></i>
    	 </div>
    	
    	<j class="bi bi-bag-heart" style="font-size:2rem; cursor: pointer;"></j>

    <script>

        var j = 0;
        $('j').on('click',function(){
            if(j==0){
                $(this).attr('class','bi-bag-fill');
                j++;
            }else if(j==1){
                $(this).attr('class','bi-bag-heart');
                j--;
            }

        });

    </script>
      
    </div>
  </div>
</nav>

<!-- Header-->
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">Perfume</h1>
                    <p class="lead fw-normal text-white-50 mb-0">Find your own scent!</p>
                </div>
            </div>
        </header>
       
     
       
		  <!-- 실행해보기 -->
       <%--    <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="card">
                        <div class="card h-100">
                            <!-- Product image-->
                            <a class="card-image" href="/Pplist.view.do"><img class="card-img-top" src="${dto.productImages}" alt="" width="100%"/></a>
                            <!-- Product details-->
                            <div class="card-body">
                                <div class="text-center">
                                   <p class="pd.name">${dto.productName }</p>
                                    <!-- Product size-->
                             		<p class="pd.size">${dto.productSize }ml</p>
                                    <!-- Product price-->
                             		<p class="pd.price">${dto.productPrice }원</p>
                                </div>
                            </div>
               			   --%>
               			  
               			   <section class="py-5">
               			  <div class="row row-cols-1 row-cols-md-4 g-4">
		  					<c:forEach items="${appList }" var="dto"><%--반복문,dto --%>
 								 <div class="col">
   									 <div class="card h-100">
   									  <a class="card-image" href="/Pplist.view.do"><img class="card-img-top" src="${dto.productImages}" alt="" width="50%"/></a>
     								 <div class="card-body">
     								  <div class="text-center">
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
                           
                            		 <!-- Product name-
                            		  <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <!-- 찜  
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">옵션 보기 </a></div>
                                <br> -->
                               <!--   <div class="text-center"><j class="text-center bi bi-heart" style="font-size:1.7rem;cursor: pointer;" href="#"></j></div>
                        	        <script>
                           		     var j = 0;
            						$('j').on('click', function() {
            						if (j == 0) {
            							$(this).attr('class', 'bi-heart-fill');
            							j++;
            						} else if (j == 1) {
            							$(this).attr('class', 'bi-heart');
            							j--;
            						}
            					});
                            	    </script> -->
                            </div>
                    	    </div>
                   		 </div>
                   	 </div>
                 
               </section>
         
           
           
           
           
           
           
           
           
           
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>