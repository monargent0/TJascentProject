<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
</head>
<script type="text/javascript">

let resultTxt = '<%=(String)session.getAttribute("resultTxt")%>';
if(resultTxt !== "null"){
	alert(resultTxt);
	if(resultTxt == "비밀번호 변경이 완료되었습니다."){
		window.location.href = 'userDetail.do';		
	}
	<%
	session.removeAttribute("resultTxt");
	%>
}

/* 비밀번호 유효성 검사 */
function checkPW(){
	let pw = document.getElementById("newPW").value;
	let oldpw = document.getElementById("oldPW").value;
	let warning = document.getElementById("Warning");
	var regExpPW = /^[0-9a-zA-Z]*$/
	
	if(!regExpPW.test(pw)){
		warning.innerHTML = '<p id="warning"> 영어 대소문자와 숫자만 입력 가능합니다. </p>';
	}else if(pw.length < 3){
		warning.innerHTML = '<p id="warning"> 비밀번호를 3자 이상 입력해주세요 </p>';
	}else if(pw.length > 16){
		warning.innerHTML = '<p id="warning"> 15자 이하로 입력해주세요 </p>';
	}else if(pw == oldpw){
		warning.innerHTML = '<p id="warning"> 기존 비밀번호와 새로운 비밀번호가 같습니다. </p>';
	}else{
		document.pwC.submit();
	}
}

function typingPW(){
	let warning = document.getElementById("Warning");
	warning.innerHTML = "";
}

function noblank(obj) { // 공백사용못하게
    var str_space = /\s/;  // 공백체크
    if(str_space.exec(obj.value)) { //공백 체크
        /* alert("해당 항목에는 공백을 사용할수 없습니다.\n\n공백은 자동적으로 제거 됩니다."); */
        obj.focus();
        obj.value = obj.value.replace(' ',''); // 공백제거
        return false;
    }
 // onkeyup="noblank(this)" onchange="noSpaceForm(this);"
}

</script>
<style>
	.contents{
		position: absolute;
		left : 50%;
		transform : translate(-50%,0%);
		padding: 20px ;
		font-family: "나눔명조";
		color:#463D3D;
	}
	.h1{
		text-align: center; 
		font-family: "나눔명조"; 
		color: #463D3D;
	}
	#warning{
		font-size: 12px;
		text-align: center;
	}
	input{
   		margin:7px 0px;
   		width:170px;
	    height:25px;
   	}
   	
    button{
	    background-color: #FFFAF6;
	    color: #463D3D;
	    border: 1px solid #999191;
	    /* font-size: 1.0em; */
	    letter-spacing: 0px;
	    padding: 5px 0 0 0px;
	    cursor: pointer;
	    display: inline-block;
	   	margin-bottom : 10px;
	    transition: all 0.5s;    
	    width:177px;
	    height:28px;
	}
	button:hover{
	    background: #241571;
	    color: #FFFAF6;
	    transition: all 0.5s;
	}
	form{
		display:inline;
		float: center;
		}
	
</style>	
<body bgcolor="#FFFAF6">

 <div >
	<div class="h1">
		<h1>비밀번호 변경</h1>
	</div>  
 	<div class="contents">
 		<form action="pwChange.do" method="post" name="pwC">
				<div>
					<input type="password" size="30" placeholder="기존 비밀번호" name="oldPW" id="oldPW" onkeyup="noblank(this)">
				</div>
				<div>
					<input type="password" name="newPW" size="30" placeholder="새로운 비밀번호" id="newPW" onkeydown="typingPW()" onkeyup="noblank(this)">
				</div>
				<div>&nbsp;</div>
				<div><button type="button" onclick="checkPW()">변경하기</button> <br> </div> 
 		</form>
		<div id="Warning" ></div>
 	</div>
</div>

</body>
</html>