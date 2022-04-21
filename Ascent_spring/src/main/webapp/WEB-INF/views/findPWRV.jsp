<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기 결과</title>
</head>

<style>
	.contents{
		position: absolute;
		left : 50%;
		transform : translate(-50%,0%);
		padding: 50px ;
		width: 400px;
	}
	
	#bt{
	    background-color: #F7CCB6;
	    color: #463D3D;
	    border: 1px solid #999191;
	    /* font-size: 1.0em; */
	    letter-spacing: 0px;
	    padding: 5px 0 0 0px;
	    cursor: pointer;
	    display: inline-block;
	   	margin-bottom : 10px;
	    transition: all 0.5s;    
	    width:110px;
	    height:28px;
	}
	#bt:hover{
	    background: #241571;
	    color: #FFFAF6;
	    transition: all 0.5s;
	}
</style>

<body bgcolor="#FFFAF6">
<%
 	String txt = "";
 	if(request.getAttribute("userPW") == null){
 		txt = "결과가 없습니다.";
 	}else{
 		txt = request.getAttribute("userPW") + "입니다.";
 	}
 
 %>

	<div class="contents">

		<div >
			<h3>
				찾으시는 비밀번호는 <%= txt %>
			</h3>
		</div>

		<div style="float: right;">
			<% if( txt == "결과가 없습니다."){ %>
				<button id="bt" onclick="window.close()">닫기</button>
				<button id="bt" type="button" onclick= "javascript:history.back()" >돌아가기</button>
			<% }else { 	%>
				<button id="bt" onclick="window.close()">닫기</button>
	  	    <% } %>
		</div>	
		
	</div>
</body>
</html>