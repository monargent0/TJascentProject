<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세</title>
</head>
<body>

	<div class="productdetail">
			<h2>${dto.productName }</h2>

 	<colgroup>
 	<col style="width:px;">
	<col>
	</colgroup>
	<table>
	<tr>	<!-- c:foreach는 dao arraylist 쓸때만   -->
		<th>판매가</th>
		<td><fmt:formatNumber value="${detail.productPrice }원" pattern="###,###,###"/></td>
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
			<form name="form1" method="post" action="cartWrite.do">
			<input type="hidden" name="productCode" value="${detail.productCode }" >
			<select name="amount">
				<c:forEach begin=1 end="10" var="i">
					<option value="${i }">${i }</option>
				</c:forEach>
			</select>&nbsp;개 
			<a href="http://localhost:8080/Ascent/cartList.do?productCode=${detail.productCode }"><input type="submit" value="CART"></a>
			</form>
		</td>
	</tr>
	</table>

</div>
</body>
</html>