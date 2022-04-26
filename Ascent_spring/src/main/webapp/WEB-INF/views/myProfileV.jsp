<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
 	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 	<% request.setCharacterEncoding("utf-8"); %>
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
<title>ascent</title>
</head>

<style>
	table {
        border-collapse: collapse;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        width: auto;
        height: auto;
        width: 600px;
      }
      
      table, th, td {
        padding: 5px;
       }
       
      .contents{
		position: absolute;
		left : 50%;
		transform : translate(-50%,0%);
		padding: 50px ;
		font-family:"나눔명조";  
      	color: #463D3D;
	}    
	#hyper{				
      	/* font-size: 20px; */
      	TEXT-DECORATION:none;
      	font-family:"나눔명조";  
      	color: #463D3D;
      }
      .sub{
	    background-color: #F7CCB6;
	    color: #463D3D;
	    border: 1px solid #999191;
	    letter-spacing: 0px;
	   /*  padding: 5px 0 0 0px; */
	    cursor: pointer;
	    display: inline-block;
	    transition: all 0.5s;    
	    width:130px;
	    height:25px;
	    font-family: "나눔명조";
		color:#463D3D;
	    
	}
	.sub:hover{
	    background: #241571;
	    color: #FFFAF6;
	    transition: all 0.5s;
	}
</style>
<body style="background-color:#FFFAF6">
<%@include file="head.jsp" %>	

<div class="contents">

<h2>My Profile</h2>

<table>
			<tr> <td><h4>기본정보</h4> </td></tr>	
			
				<tr>
					<td> 이름 </td> 
					<td> ${userinfo.userName} </td>
				</tr>
				<tr>
					<td> 생년월일 </td> 
					<td> <fmt:formatDate pattern="yyyy년 MM월 dd일" value="${userinfo.userBirth }"/></td>
				</tr>
				<tr>
					<td> 성별 </td> 
					<td> ${userinfo.userGender}</td>
				</tr>
				<tr><td> </td></tr>
				<tr> <td><h4>연락처정보</h4></td></tr>
				<tr>
					<td> 이메일 </td> 
					<td> ${userinfo.userEmail } </td>
				</tr>
				<tr>
					<td> 전화번호 </td> 
					<td> ${userinfo.userPhone }</td>
				</tr>
				<tr><td> </td></tr>
			<tr>
				<td> <button class="sub" type="button" onclick="location='myPWModify'">비밀번호 변경</button> </td>
				<td align="right"> <button class="sub" type="button" onclick="location='myProfileModifyV'">개인정보 수정</button> </td>
			</tr>
</table>
	
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
	crossorigin="anonymous"></script>
</body>
</html>