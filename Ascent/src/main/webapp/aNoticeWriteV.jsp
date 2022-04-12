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

<div class="contents">
	<table >	
		<form action="noticeWAdmin.do" method="post">		
			<tr>
				<td>종류</td>
				<td><input type="text" name="noticeType" size="61" ></td>
			</tr>			
			<tr>
				<td>제목</td>
				<td><input type="text" name="noticeTitle" size="61" ></td>
			</tr>			
			</tr>
				<td>내용</td>
				<td><textarea name="noticeContent" rows="10" cols="50" maxlength="3000" ></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><button class="sub" type="submit">추가</button></td>
			</tr>
		</form>
	</table>
</div>	
</body>
</html>