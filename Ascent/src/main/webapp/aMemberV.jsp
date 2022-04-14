<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" href="css/admin.css" rel="stylesheet" >
<title>ascent ADMIN</title>
</head>

<style>
	
	table{
	border-collapse: collapse;
	}
	th{
	border-bottom: solid 1px #463D3D ;
	}
</style>

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
	 
<div class="contents">
	<div>
		<div> <h2>가입현황</h2> </div>
		<div style= "overflow:auto; width:850px; height:200px;" >
			<table style="width:800px;">
			<tr>
				<th>SignIn Date</th> <th> ID </th> <th> Name </th> <th> Gender </th> 
				<th> Birth Date </th> <th> Phone </th> <th> Email </th>
			</tr>
			<c:forEach items="${inList }" var="in" >
				<tr>
					<td> <fmt:formatDate pattern="yyyy년MM월dd일 yy:mm:ss" value="${in.u_SignDate}"/> </td>
					<td>${in.userID}</td> 
					<td>${in.userName} </td>
					<td>${in.userGender} </td>
					<td> <fmt:formatDate pattern="yyyy년MM월dd일" value="${in.userBirth}"/> </td>
					<td> ${in.userPhone} </td>
					<td> ${in.userEmail} </td>
				</tr>
			</c:forEach>
			</table>
		</div>
	</div>
	
	<div>
		<div> <h2>탈퇴현황</h2> </div>
		<div style="overflow:auto; width:850px; height:200px;" >
			<table style="width:800px;">
			<tr>
				<th>SignOut Date</th> <th> ID </th> <th> Name </th> <th> Gender </th> 
				<th> Birth Date </th> <th> Phone </th> <th> Email </th>
			</tr>
			<c:forEach items= "${ outList }" var="out">
				<tr>
				<td> <fmt:formatDate pattern="yyyy년MM월dd일 yy:mm:ss" value="${out.u_ResignDate}"/> </td>
					<td> ${out.userID}</td> 
					<td> ${out.userName} </td>
					<td> ${out.userGender} </td>
					<td> <fmt:formatDate pattern="yyyy년MM월dd일" value="${out.userBirth}"/> </td>
					<td> ${out.userPhone} </td>
					<td> ${out.userEmail} </td>
				</tr>
			</c:forEach>
		</div>
	</div>


</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"crossorigin="anonymous"></script>
</body>
</html>