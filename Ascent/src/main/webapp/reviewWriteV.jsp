<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      
      table, td {
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
<title>ascent 리뷰 작성폼</title>
</head>
<body bgcolor="#FFFAF6">
	<div class="contents">
	<h2>ascent 리뷰 작성</h2>
		<table border="1">
		<form action="reviewWrite.do" encType="multipart/form-data" method="post">
			<tr>
				<td>제목</td>
				<td><input type="text" name="reviewTitle" size="50"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="reviewContent" rows="10" cols="50" maxlength="100"></textarea></td>
			</tr>
			<tr>
				<td>첨부파일</td>
				<td><input type="file" name="reviewImage" accept="image/*" multiple></td>
			</tr>			
			<tr>
				<td><a href="reviewList.do">목록보기</a></td>
				<td colspan="2" align="right"><input type="submit" value="입력"></td>
			</tr>
		</form>
	</table>	
	</div>		
</body>
</html>