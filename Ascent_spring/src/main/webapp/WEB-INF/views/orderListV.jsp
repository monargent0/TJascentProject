<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>ascent</title>
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
</head>
<body style="background-color:#FFFAF6">
<%@include file="head.jsp" %>
	
<div class="list">
	<h1>Order List</h1>
		<table >
			<tr>
				<th hidden="">userID</th>
				<th hidden="">orderCode</th>
				<th align="center">주문번호</th>
				<th align="center">이미지</th>
				<th>이름</th>
				<th>용량</th>
				<th>가격</th>
				<th>수량</th>
				<th>합계</th>
				<!-- <th>주문수량</th>
				<th>주문총액</th> -->
			</tr>
			<form method="post" name="orderList">
			<c:forEach items="${orderList }" var="dto">
			<tr>
				<td hidden="">
				<input type="text" value="<%=session.getAttribute("userID") %>" name="userID" readonly="readonly" >
				</td>
				<td hidden="">
				<input type="text" value="${dto.orderCode }" name="orderCode" readonly="readonly">
				</td>
				<td align="center">
				<a href="orderDetail.do?orderNumber=${dto.orderNumber }&userID=<%=session.getAttribute("userID")%>">${dto.orderNumber }</a>
				</td>
				<td align="center">
				<img class="img" src="${dto.productImages }" width="150px" name="productImages">
				</td>
				<td align="center">
				<input hidden="" type="text" value="${dto.productName }" name="productName" readonly="readonly">
				${dto.productName }
				</td>
				<td align="center">
				<input hidden="" type="text" value="${dto.productSize }" name="productSize" readonly="readonly">
				${dto.productSize } ml
				</td>
				<td align="center">
				<input hidden="" type="text" value="${dto.productPrice }" name="productPrice" readonly="readonly">
				${dto.productPrice } 원
				</td>
				<td align="center">
				${dto.cartAmount } 개
				</td>
				<td align="center">
				${dto.cartSum } 원
				</td>
				<%-- <td align="center">
				<input type="text" value="${dto.orderAmount }" name="orderAmount" readonly="readonly">
				</td>
				<td align="center">
				<input type="text" value="${dto.orderSum }" name="orderSum" readonly="readonly">
				</td> --%>
			</tr>
			</c:forEach>
			</form>
		</table>
</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>