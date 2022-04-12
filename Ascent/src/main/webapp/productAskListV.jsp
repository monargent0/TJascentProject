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
<title>상품 문의 목록</title>
</head>
<body  bgcolor="#FFFAF6">
	 <div class="contents">
	<h2>상품 상세문의</h2>

	<table border="1">
		<tr>
			<th>문의번호</th>
			<th>문의제목</th>
			<th>게시일</th>
			<th>답변여부</th>
		</tr>
		<c:forEach items="${list }" var="dto">
			<tr>
				<td style="text-align: center;"> ${dto.askCode }</td>
				<td><a id="hyper" href="productAskV.do?askCode=${dto.askCode }">${dto.askTitle}</a></td>						
				<td>${dto.askDate}</td>
				<td>${dto.a_ReplyCheck}</td>
			</tr>
		</c:forEach>
		<tr>
			<td align="right" colspan="5"><a id="hyper" href="productAskWriteV.jsp">문의 작성</a></td>
		</tr>
	</table>	
	
		<br><a id="hyper" href="mainV.jsp">main</a> &nbsp; <a id="hyper" href="logOutH.jsp">로그아웃</a>
	</div>	
</body>
</html>