<%@page import="com.javalec.ascent.dto.ADtoN"%>
<%@page import="java.util.List"%>
<%@page import="com.javalec.ascent.dao.ADaoN"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<%
	ADaoN daoN = new ADaoN();
	int count = daoN.getCount();
	int pageSize = 10; // 한 페이지에 출력할 게시글 수

	// 페이지 링크를 클릭한 번호 / 현재 페이지
	String pageNum = request.getParameter("pageNum");
	if (pageNum == null){ // 클릭한게 없으면 1번 페이지
		pageNum = "1";
	}
	// 연산을 하기 위한 pageNum 형변환 / 현재 페이지
	int currentPage = Integer.parseInt(pageNum);

	// 해당 페이지에서 시작할 게시글 / 마지막 게시글
	int startRow = (currentPage - 1) * pageSize + 1;
	int endRow = currentPage * pageSize;
	
	
	ADaoN dao = ADaoN.getInstance();
	count = dao.getCount(); // 데이터베이스에 저장된 총 갯수

	
	List<ADtoN> list = null;
	
	if (count > 0) {
		// getList()메서드 호출 / 게시글 반환
		list = dao.getList(startRow, endRow);
	}
	
%>
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
<title>ascent 공지사항</title>
</head>
<body bgcolor="#FFFAF6">

 <div class="contents">
	<h2>공지사항</h2>
	(공지사항 수 : <%=count %>)	
	<table border="1">
		<tr>
			<th>글번호</th>
			<th>종류</th>
			<th>제목</th>
			<th>게시일</th>
		</tr>
		<c:forEach items="${list }" var="dto">
			<tr>
				<td><a id="hyper" href="noticeBoardDetail.do?noticeCode=${dto.noticeCode }">${dto.noticeCode }</a></td>
				<td>${dto.noticeType }</td>
				<td>${dto.noticeTitle}</td>						
				<td>${dto.noticeDate}</td>
			</tr>
		</c:forEach>
	</table>	
	</div>
<%	// 페이징 처리
	if(count > 0){
	// 총 페이지의 수
	int pageCount = count / pageSize + (count%pageSize == 0 ? 0 : 1);
	// 한 페이지에 보여줄 페이지 블럭(링크) 수
	int pageBlock = 10;
	// 한 페이지에 보여줄 시작 및 끝 번호(예 : 1, 2, 3 ~ 10 / 11, 12, 13 ~ 20)
	int startPage = ((currentPage-1)/pageBlock)*pageBlock+1;
	int endPage = startPage + pageBlock - 1;
							
	// 마지막 페이지가 총 페이지 수 보다 크면 endPage를 pageCount로 할당
	if(endPage > pageCount){
	endPage = pageCount;
	}
							
	for(int i=startPage; i <= endPage; i++){ // 페이지 블록 번호
	if(i == currentPage){ // 현재 페이지에는 링크를 설정하지 않음
%>
									[<%=i %>]
<%									
	}else{ // 현재 페이지가 아닌 경우 링크 설정
%>
		<a href="noticeBoardListV.do?pageNum=<%=i%>">[<%=i %>]</a>
<%	
	}
} 
															
}						
%>
</body>
</html>