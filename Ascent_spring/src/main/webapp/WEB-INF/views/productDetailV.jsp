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
<%@include file="head.jsp" %>
	
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
				<form name="cartForm" method="post" action="cartWrite">
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
	<%session.setAttribute("productCode", request.getParameter("productCode")); %>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
<script>
	var cartForm = document.cartForm;
	var userID = '<%=session.getAttribute("userID")%>';
	var productCode = document.cartForm.productCode.value;
	
function cartWriteCheckUser() {
	
	if (userID != 'null'){
		cartForm.submit();
		alert("장바구니에 담았습니다.")
	}
	else{
		alert("로그인이 필요합니다.");
		location.href='logInV?productCode='+productCode;
	}
}

</script>
</html>