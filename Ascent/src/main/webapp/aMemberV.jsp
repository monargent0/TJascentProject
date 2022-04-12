<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입/탈퇴 현황</title>
</head>

<style>
	.contents{
		position: absolute;
		left : 50%;
		transform : translate(-50%,0%);
		padding: 50px ;
		font-family: "나눔명조";
		color:#463D3D;
	}
</style>

<body bgcolor="#FFFAF6">
<div class="contents">
<a href="adminV.jsp">main</a> 
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
</body>
</html>