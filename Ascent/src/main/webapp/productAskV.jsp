<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세문의</title>
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
<h2>ascent 상품 상세문의</h2>
 <div class="contents">
	<table border="1">
			<tr>
				<td>문의번호</td>
				<td><input type="text" name="askCode" size="5" value="${productAskV.askCode}" readonly="readonly"></td>
			</tr>			
			<tr>
				<td>문의제목</td>
				<td><input type="text" name="askTitle" size="61" value="${productAskV.askTitle }" readonly="readonly"></td>
			</tr>			
			</tr>
				<td>문의내용</td>
				<td><textarea name="askContent" rows="10" cols="50" maxlength="100" readonly="readonly">${productAskV.askContent } </textarea></td>
			</tr>
			<tr>
				<td>게시일</td>
				<td><input type="text" name="askDate" size="25" value="${productAskV.askDate}" readonly="readonly"></td>
			</tr>						
			<tr>
				<td><a href="productDetailV.do">상품 페이지로 돌아가기</a></td>
			</tr>
	</table>
</div>	
</body>
</html>