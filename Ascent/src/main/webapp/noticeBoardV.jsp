<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
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
</head>
<body bgcolor="#FFFAF6">
 <div class="contents">
	<table border="1">
			<tr>
				<td>글번호</td>
				<td><input type="text" name="noticeCode" size="5" value="${noticeBoardV.noticeCode}" readonly="readonly"></td>
			</tr>			
			<tr>
				<td>종류</td>
				<td><input type="text" name="noiticeType" size="15" value="${noticeBoardV.noticeType}" readonly="readonly"></td>
			</tr>			
			<tr>
				<td>제목</td>
				<td><input type="text" name="noticeTitle" size="61" value="${noticeBoardV.noticeTitle }" readonly="readonly"></td>
			</tr>			
			</tr>
				<td>내용</td>
				<td><textarea name="noticeContent" rows="10" cols="50" maxlength="100" readonly="readonly">${noticeBoardV.noticeContent } </textarea></td>
			</tr>
			<tr>
				<td><a href="noitceBoardList.do">목록보기</a></td>
			</tr>
	</table>
</div>	
</body>
</html>