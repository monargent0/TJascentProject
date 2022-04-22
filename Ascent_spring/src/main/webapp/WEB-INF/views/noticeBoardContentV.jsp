<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<style>
	  table {
        border-collapse: collapse;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        width: auto;
        height: auto;
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
</style>
</head>
<body style="background-color:#FFFAF6">
<%@include file="head.jsp" %>	
 <div class="contents">
	<table >
			<tr>
				<td>글번호</td>
				<td><input type="text" name="noticeCode" size="5" value="${noticeBoardContentV.noticeCode}" readonly="readonly"></td>
			</tr>			
			<tr>
				<td>종류</td>
				<td><input type="text" name="noiticeType" size="15" value="${noticeBoardContentV.noticeType}" readonly="readonly"></td>
			</tr>			
			<tr>
				<td>제목</td>
				<td><input type="text" name="noticeTitle" size="50" value="${noticeBoardContentV.noticeTitle }" readonly="readonly"></td>
			</tr>			
			</tr>
				<td>내용</td>
				<td><textarea name="noticeContent" rows="10" cols="50" maxlength="100" readonly="readonly">${noticeBoardContentV.noticeContent } </textarea></td>
			</tr>
			<tr>
				<td><a id="hyper" href="noticeBoardList">목록보기</a></td>
			</tr>
	</table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>	
</body>
</html>