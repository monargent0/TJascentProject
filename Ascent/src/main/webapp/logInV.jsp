<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log In</title>
</head>

<style>
	.contents{
		position: absolute;
		left : 50%;
		transform : translate(-50%,0%);
		padding: 50px ;
	}
	
	#warning{
		color: blue;
		font-size: 12px;
		text-align: center;
	}
</style>

<script type="text/javascript">
	let alertTxt = '<%=(String)session.getAttribute("alertTxt")%>';
	if(alertTxt!== "null"){
		alert(alertTxt);
		<%
		session.invalidate();
		%>
	}
	
	/* 아이디 유효성검사  */
	function checkid(){
		let id = document.getElementById("userID").value;
		let warning = document.getElementById("Warning");

		if(id.length < 1){
			warning.innerHTML = '<p id="warning"> 아이디를 입력해주세요 </p>';
		}
		
	}
	function checkpw() {
		let pw = document.getElementById("userPW").value;
		let warning = document.getElementById("Warning");
		
		if(pw.length < 1){
			warning.innerHTML = '<p id="warning"> 비밀번호를 입력해주세요 </p>';
		} 
	}

	function typingID(){
		let warning = document.getElementById("Warning");
		warning.innerHTML = "";
	}

	function typingPW(){
		let warning = document.getElementById("Warning");
		warning.innerHTML = "";
	}
</script>

<body bgcolor="#FFFAF6">

 <div class="contents">

	<div>
		<h1>LOG IN</h1>
	</div>  
 
 	<div >
 		<form action="logIn.do" method="get" name="loginForm">
 			<div>
				<div style="float: right;">
					<input type="text" name="userID" size="30" placeholder="아이디"
					onBlur="checkid()" onkeydown="typingID()" id="userID">
				</div>
			</div>
 			<div>
				<div style="float: right;">
					<input type="password" name="userPW" size="30" placeholder="비밀번호"
					id="userPW" onBlur="checkpw()" onkeydown="typingPW()">
				</div>
			</div>
				<div>&nbsp;</div>
				<div id="Warning"></div>
 			<div>
				<div  align="left" style="float: left;" ><button formaction="signInV.jsp">SING IN</button></div>
				<div  align="right" style="float: right;"><button type="submit">LOGIN</button></div> 
			</div>
			<input type="text" value="<%=request.getParameter("productCode") %>" name="productCode" hidden="">
 		</form>
 	</div>
 		<div style="float: right;">
 			<a href = "" target ="popup" onclick="window.open('findIDV.jsp','popup','width=600,height=600'); return false">아이디/비밀번호 찾기</a>
 		</div>
 </div>
 <%-- <script>
var userID = <%=session.getAttribute("userID")%>;
var productCode = <%=request.getParameter("productCode")%>;

function CheckUser() {
	if (userID != 'null'){
		document.loginForm.submit();
	}
	else{
		alert("로그인이 필요합니다.");
		location.href='logInV.jsp?productCode='+productCode1;
	}
}
 </script> --%>
</body>
</html>