<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

</body>
</html>