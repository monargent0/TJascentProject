<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<style>
	  table {
        border-collapse: collapse;
        border-top: 2px solid black;
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
	}
    
    </style>
<meta charset="UTF-8">
<title>ascent 1대1 문의</title>
</head>
<body bgcolor="#FFFAF6">

 <div class="contents">
	<h2>1대1 문의</h2>
	<table border="1">
		<tr>
			<th>글번호</th>
			<th>문의종류</th>
			<th>제목</th>
			<th>게시일</th>
			<th>답변여부</th>
		</tr>
		<c:forEach items="${list }" var="dto">
			<tr>
				<td><a href="counselDetail.do?counselCode=${dto.counselCode }"> ${dto.counselCode }</a></td>
				<td>${dto.counselType }</td>
				<td>${dto.counselTitle}</td>						
				<td>${dto.counselDate}</td>
				<td>${dto.c_ReplyCheck}</td>
			</tr>
		</c:forEach>
		<tr>
			<td align="right" colspan="5"><a href="counselWriteV.jsp">글작성</a></td>
		</tr>
	</table>	
	</div>
</body>
</html>