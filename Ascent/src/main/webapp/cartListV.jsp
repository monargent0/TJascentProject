<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
<body>
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
			<form name="cartForm">
			<c:forEach items="${cartList }" var="dto" varStatus="status">
			<tr>
				<td hidden="">
				<input type="text" value="<%=request.getParameter("userID") %>" name="userID" readonly="readonly">
				</td>
				<td hidden="">
				<input type="text" value="${dto.cartCode }" name="cartCode" readonly="readonly" >
				</td>
				<td hidden="">
				<input type="text" value="${dto.productCode }" name="productCode" readonly="readonly">
				</td>
				<td>
				<input type="checkbox"  name="checkCart" value="${dto.cartCode }">
				</td>
				<td align="center">
				<a href="productDetail.do?productCode=${dto.productCode }">
				<img class="img" src="${dto.productImages }" width="150px" name="productImages">
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
					<select name="cartAmount" id="cartAmount">
						<option value="${dto.cartAmount }" selected="selected">${dto.cartAmount }</option>
						<option value="1" onselect="cartModify.do?cartCode=${dto.cartCode}&?cartAmount=1">1</option>
						<option value="2" onselect="cartModify.do?cartCode=${dto.cartCode}&?cartAmount=2">2</option>
						<option value="3" onselect="cartModify.do?cartCode=${dto.cartCode}&?cartAmount=3">3</option>
					</select>
					개
				</td>
				<td align="center">
				${dto.cartSum } 원
				</td>
			</tr>
			</c:forEach>
			</table><br>
				<input type="submit" value="선택상품 삭제" formaction="cartDelete.do">
				<input type="submit" value="선택상품 주문" formaction="orderView.do">
			</form>
</div>
</body>
</html>
