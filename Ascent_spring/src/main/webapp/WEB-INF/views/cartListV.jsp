<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
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

<title>Cart List</title>
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
<script>
// all check
function checkBoxAll(event) {
	const query = 'input[name="checkCart"]';
	const selectedEls = document.querySelectorAll(query);

	if (event.target.checked) {
		selectedEls.forEach((el) => {
			el.checked = true;
		});
	} else {
		selectedEls.forEach((el) => {
			el.checked = false;
		});
	}
}
</script>
<body style="background-color:#FFFAF6">
<%@include file="head.jsp" %>	

<div class="list">
	<h1>장바구니</h1>
	<table border="1">
			<tr>
				<th hidden="">userID</th>
				<th hidden="">cartCode</th>
				<th hidden="">productCode</th>
				<th><input type="checkbox" name="checkAll" id="allCheck" onclick="checkBoxAll(event)"></th>
				<th>이미지</th>
				<th>이름</th>
				<th>용량</th>
				<th>가격</th>
				<th>수량</th>
				<th>합계</th>
			</tr>
			<form name="cartForm" method="post">
			<c:forEach items="${cartList }" var="dto">
			<tr>
				<td hidden="">
				<input type="text" value="<%=request.getParameter("userID") %>" name="userID" readonly="readonly">
				</td>
				<td hidden="">
				<input type="text" value="${dto.cartCode }" name="cartCode" readonly="readonly">
				</td>
				<td>
				<input type="checkbox"  name="checkCart" value="${dto.cartCode }">
				</td>
				<td align="center">
				<a href="productDetail.do?productCode=${dto.productCode }">
				<img class="img" src="${dto.productImages }" width="100px" name="productImages">
				</a>
				</td>
				<td align="left">
				<a href="productDetail.do?productCode=${dto.productCode }">${dto.productName }</a>
				</td>
				<td align="center">
				${dto.productSize } ml
				</td>
				<td align="center">
				${dto.productPrice } 원
				</td>
				<td align="center">
					<select name="cartAmount">
						<option value="${dto.cartAmount }" selected="selected">${dto.cartAmount }</option>
						<option value="1" onselect="">1</option>
						<option value="2" onselect="">2</option>
						<option value="3" onselect="">3</option>
					</select>
					개
				</td>
				<td align="center">
				${dto.cartSum } 원
				</td>
			</tr>
			</c:forEach>
			</table><br>
				<input type="button" value="선택상품 주문" onclick="checkUserCheck()">
				<input type="submit" value="선택상품 삭제" formaction="cartDelete.do">
			</form>
</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"crossorigin="anonymous"></script>
</body>
</html>
