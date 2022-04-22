<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<title>1대1 문의</title>
<style>
	 table {
        border-collapse: collapse;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        width: auto;
        height: auto;
        width: 700px;
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
      .sub{
	    background-color: #F7CCB6;
	    color: #463D3D;
	    border: 1px solid #999191;
	    letter-spacing: 0px;
	   /*  padding: 5px 0 0 0px; */
	    cursor: pointer;
	    display: inline-block;
	    transition: all 0.5s;    
	    width:80px;
	    height:25px;
	    font-family: "나눔명조";
		color:#463D3D;
	    
	}
	.sub:hover{
	    background: #241571;
	    color: #FFFAF6;
	    transition: all 0.5s;
	}
</style>
</head>
<body style="background-color:#FFFAF6">
<%@include file="head.jsp" %>	
 <div class="contents">
	<table >
		<form action="counselDelete" method="post">
			<tr>
				<td>글번호</td>
				<td><input type="text" name="counselCode" size="5" value="${counselContentV.counselCode}" readonly="readonly"></td>
			</tr>			
			<tr>
				<td>문의종류</td>
				<td><select name="counselType">
					<option value= "환불">환불</option>
					<option value= "배송">배송</option>
					<option value= "주문/결제">주문/결제</option>
					<option value= "회원">회원</option>
					<option value= "상품">상품</option>				
					<option value= "사이트 이용">사이트 이용</option>				
					<option value= "기타">기타</option>				
				</select></td>
			</tr>			
			<tr>
				<td>제목</td>
				<td><input type="text" name="counselTitle" size="61" value="${counselContentV.counselTitle }"></td>
			</tr>			
			</tr>
				<td>문의내용</td>
				<td><textarea name="counselContent" rows="10" cols="50" maxlength="100">${counselContentV.counselContent } </textarea></td>
			</tr>
			<tr>
				<td>게시일</td>
				<td><input type="text" name="counselDate" size="25" value="${counselContentV.counselDate}" readonly="readonly"></td>
			</tr>						
			</tr>
				<td>첨부파일</td>
				<td><img src="${counselContentV.counselImage}" alt="첨부파일" width="180" height="180"/></a></td>
			</tr>					
			<tr>
				<td><a id="hyper" href="counselList">목록보기</a></td>
				<td colspan="2" align="right"><input class="sub" type="submit" value="삭제">
				<input class="sub" type="submit" value="수정" formaction="counselModify"></td>
			</tr>
	</table>
	<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
			<tr>
				<td style="border-bottom:none;" valign="middle"><br><br></td>
				<td><input type="text" style="height:50px;" class="form-control" name = "reply" value="${reply_view.c_ReplyContent }" readonly="readonly"></td>
			</tr>
 	</table> <!-- 관리자페이지에서 입력 시 댓글 출력 양식 -->			
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"crossorigin="anonymous"></script>	
</body>
</html>