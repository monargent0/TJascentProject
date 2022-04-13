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
	  
		<h2>공지사항</h2>
		
		<table style="width:800px;">
			<tr><td colspan="4" align="right"><button class="sub" type="button" onclick="location='aNoticeWriteV.jsp'">추가</button></td></tr>
			<tr>
				<th>글번호</th>
				<th>종류</th>
				<th>제목</th>
				<th>게시일</th>
			</tr>
			<c:forEach items="${list }" var="dto">
				<tr>
					<td><a id="hyper" href="noticeDAdmin.do?noticeCode=${dto.noticeCode }">${dto.noticeCode }</a></td>
					<td><a id="hyper" href="noticeDAdmin.do?noticeCode=${dto.noticeCode }">${dto.noticeType }</a></td>
					<td><a id="hyper" href="noticeDAdmin.do?noticeCode=${dto.noticeCode }">${dto.noticeTitle}</a></td>						
					<td><a id="hyper" href="noticeDAdmin.do?noticeCode=${dto.noticeCode }">
					<fmt:formatDate pattern="yyyy년 MM월 dd일 hh:mm:ss" value="${dto.noticeDate}"/></a></td>
				</tr>
			</c:forEach>
		</table>	
	
	</div>
	 
	 
	 

</body>
</html>