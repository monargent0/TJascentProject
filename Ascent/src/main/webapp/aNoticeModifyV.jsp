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
	 
<div class="contents">
	<table >	
		<form action="noticeMAdmin.do" method="post">
			<tr>
				<td>글번호</td>
				<td><input type="text" name="noticeCode" size="61" value="${noticeBoardV.noticeCode}" readonly="readonly"></td>
			</tr>			
			<tr>
				<td>종류</td>
				<td><input type="text" name="noticeType" size="61" value="${noticeBoardV.noticeType}" ></td>
			</tr>			
			<tr>
				<td>제목</td>
				<td><input type="text" name="noticeTitle" size="61" value="${noticeBoardV.noticeTitle }" ></td>
			</tr>			
			</tr>
				<td>내용</td>
				<td><textarea name="noticeContent" rows="10" cols="50" maxlength="3000" >${noticeBoardV.noticeContent } </textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><button class="sub" type="submit">수정</button>
					<button class="sub" type="button" onclick="location='noticeDelete.do?noticeCode=${noticeBoardV.noticeCode}'">삭제</button></td>
			</tr>
		</form>
	</table>
</div>	

</body>
</html>