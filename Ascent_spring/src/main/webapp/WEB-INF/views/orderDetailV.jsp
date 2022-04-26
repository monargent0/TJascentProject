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

<title>ascent</title>
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
<body style="background-color:#FFFAF6">
<%@include file="head.jsp" %>

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
function sendProductCodeLogin() {
	if (userID != 'null'){
		location.href='myPageV'
	}
	else{
		alert("로그인이 필요합니다.");
		location.href='logInV?productCode='+productCode1;
	}
}
</script>
</html>