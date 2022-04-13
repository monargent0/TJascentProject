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
		font-family:"나눔명조";
      	color:#463D3D;
	}
    
	#hyper{				
      	font-size: 14px;
      	font-family:"나눔명조";
      	color:#463D3D;
      }
    </style>
<meta charset="UTF-8">
<title>ascent 상품 리뷰</title>
</head>
<body bgcolor="#FFFAF6">
 <div class="contents">
	<h2>후기</h2>
	<table border="1">
				<tr>
			<th>글번호</th>
			<th>제목</th>
		</tr>
		<c:forEach items="${list }" var="dto">
			<tr>
				<td style="text-align: center;"><a id="hyper" href="reviewDetail.do?reviewCode=${dto.reveiwCode }">${dto.reviewCode }</a></td>
				<td>${dto.reviewTitle }</td>
			</tr>
		</c:forEach>
				<tr>
			<td align="right" colspan="5"><a href="reviewWriteV.jsp">글작성</a></td>
		</tr>		
	</table>
	</div>
</body>
</html>