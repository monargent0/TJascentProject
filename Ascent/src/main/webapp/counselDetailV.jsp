<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1대1 문의</title>
</head>
<body>
	<table border="1">
		<form action="counselDelete.do" method="post">
			<tr>
				<td>글번호</td>
				<td><input type="text" name="counselCode" size="5" value="${counselDetailV.counselCode }" readonly="readonly"></td>
			</tr>			
			<tr>
				<td>문의종류</td>
				<td><input type="text" name="counselType" size="5" value="${counselDetailV.counselType }" readonly="readonly"></td>
			</tr>			
			<tr>
				<td>제목</td>
				<td><input type="text" name="counselTitle" size="5" value="${counselDetailV.counselTitle }" readonly="readonly"></td>
			</tr>			
			</tr>
				<td>문의내용</td>
				<td><textarea name="counselContent" rows="10" cols="50" maxlength="100" readonly="readonly">${counselDetailV.counselContent } </textarea></td>
			</tr>
			<tr>
				<td>게시일</td>
				<td><input type="text" name="counselDate" size="5" value="${counselDetailV.counselDate }" readonly="readonly"></td>
			</tr>						
			<tr>
				<td colspan="2"><input type="submit" value="삭제">
				<a href="ACounselList.do">목록보기</a>
				</td>
			</tr>
	</table>		
</body>
</html>