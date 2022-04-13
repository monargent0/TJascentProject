<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" href="css/admin.css" rel="stylesheet" >
<title>ascent ADMIN</title>
</head>
<body style="background-color:#FFFAF6">

	 <header>
	   <div >
	    <a href="main.do"><img src="assets/logo.png"  width="130" height="70"  /></a>
		 <button onclick="location='adminV.jsp'" class="hd-btn">관리자홈</button> 
	     <button onclick="location='memberList.do'" class="hd-btn">회원관리</button>
	     <button onclick="location='productAdmin.do'" class="hd-btn">상품관리</button>
		 <button onclick="location='noticeLAdmin.do'" class="hd-btn" >공지사항관리</button> 
		 <button onclick="location='counselAdmin.do'" class="hd-btn" >개인문의관리</button> 
		 <button onclick="location='logOutH.jsp'"  class="hd-btn">로그아웃</button> 
	    </div>
	 </header>   
<!-- productCode productName productPrice productSize productImages productBrand category_categoryCode -->
<div class="contents" >
		<div> <h2> 제품 현황 </h2> </div>
		<div style= "overflow:auto; width:950px; height:650px;" >
			<table style="width:900px;">
			<tr>
				<th> 제품사진 </th><th>제품코드</th> <th> 제품명 </th> <th> 가격 </th> 
				<th> 용량 </th> <th> 브랜드 </th> 
			</tr>
			<c:forEach items="${pList }" var="all" >
				<tr>
					<td> <a class="" href="pDetailAdmin.do?productCode=${all.productCode }">
						<img  src="${all.productImages}" alt="미리보기" width="90" height="90"/></a></td> 
					<td> <a id="hyper" href="pDetailAdmin.do?productCode=${all.productCode }"> ${all.productCode}</a> </td>
					<td> <a id="hyper" href="pDetailAdmin.do?productCode=${all.productCode }">${all.productName} </a></td>
					<td> <a id="hyper" href="pDetailAdmin.do?productCode=${all.productCode }">${all.productPrice}원 </a></td>
					<td> <a id="hyper" href="pDetailAdmin.do?productCode=${all.productCode }">${all.productSize}ml </a></td>
					<td> <a id="hyper" href="pDetailAdmin.do?productCode=${all.productCode }">${all.productBrand} </a></td>
				</tr>
			</c:forEach>
			</table>
		</div>
		<div style="text-align: center;"><br><button class="sub" type="button" onclick="location='aProductAddV.jsp'">추가</button></div>
</div>

</body>
</html>
