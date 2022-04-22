<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	.contents{
		position: absolute;
		left : 50%;
		transform : translate(-50%,0%);
		padding: 50px ;
		font-family: "나눔명조";
		color:#463D3D;
	}
	 .hd-btn{
	    background-color: #FFFAF6;
	    color: #463D3D;
	    border: none;
	    font-size: 1.0em;
	    letter-spacing: 0px;
	    padding: 5px 0 0 0px;
	    cursor: pointer;
	    display: inline-block;
	    transition: all 0.5s;    
	    width:100px;
	    height:32px;
	    font-family: "나눔명조";
		color:#463D3D;
	    
	}
	.hd-btn:hover{
	    background: #F7CCB6;
	    color: #FFFAF6;
	    transition: all 0.5s;
	}
</style>
<body style="background-color:#FFFAF6">
<%@include file="head.jsp" %>	
	
	
<div class="contents">

<!-- 개인정보수정,회원탈퇴 -->
<h4 align="center">MY PAGE</h4>

<button onclick="location='profile.do'" style="width: 200px;" class="hd-btn">나의 정보</button> <br>
<br>
<button onclick="location='addressList.do'" style="width: 200px;" class="hd-btn">주소록</button> <br>
<br>
<button onclick="location='orderList.do'" style="width: 200px;" class="hd-btn">주문내역</button> <br>
<br>
<button onclick="location='counselList.do'" style="width: 200px;" class="hd-btn">1:1문의</button> <br>
<br>
<button onclick="location='reviewList.do'" style="width: 200px;" class="hd-btn" >후기목록</button> <br>
<br>
<button onclick="location='signOutV'" style="width: 200px;" class="hd-btn">회원탈퇴</button> <br>
<br>
<button onclick="location='logOutH'" style="width: 200px;" class="hd-btn">로그아웃</button> <br>
<br>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"crossorigin="anonymous"></script>
</body>
</html>