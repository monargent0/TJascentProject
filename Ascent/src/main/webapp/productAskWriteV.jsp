<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 문의 폼</title>
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
	<h2>ascent 상품 상세문의</h2>
		<table border="1">
		<form action="pAskWrite.do" method="post">
			<tr>
				<td>문의제목</td>
				<td><input type="text" name="askTitle" size="50"></td>
			</tr>
			<tr>
				<td>문의내용</td>
				<td><textarea name="askContent" rows="10" cols="50" maxlength="100"></textarea></td>
			</tr>
			<tr>		
				<td><a href="productDetailV.do">상품 페이지로 돌아가기</a></td>
				<td colspan="2" align="right"><input type="submit" value="입력"></td>
			</tr>
		</form>
	</table>	
	</div>
</body>
</html>