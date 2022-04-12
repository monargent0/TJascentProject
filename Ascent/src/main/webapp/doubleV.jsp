<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복확인</title>
</head>
<script type="text/javascript">

function checkID(){
	let id = document.getElementById("userID").value;
	let warning = document.getElementById("IDWarning");
	var regExpID = /^[0-9a-zA-Z]*$/
	
	if(!regExpID.test(id)){
		warning.innerHTML = '<p id="warning"> 영어 대소문자와 숫자만 입력 가능합니다. </p>';
		return document.db.userID.focus();
	}else if(id.length < 2){
		warning.innerHTML = '<p id="warning"> 아이디를 2글자 이상으로 입력해주세요 </p>';
		return document.db.userID.focus();
	}else if(id.length > 13){
		warning.innerHTML = '<p id="warning"> 아이디를 12글자 이하로 입력해주세요 </p>';
		return document.db.userID.focus();
	}else{
		document.db.submit();
	}
}

function typingID(){
	let warning = document.getElementById("IDWarning");
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
	    width:110px;
	    height:28px;
	}
	button:hover{
	    background: #241571;
	    color: #FFFAF6;
	    transition: all 0.5s;
	}
	
</style>	
<body bgcolor="#FFFAF6">


	<div class="h1">
		<h1>아이디 중복확인</h1>
	</div>
	
<div class="contents">


	<div align="center">
		<form action="idDB.do" method="post" name=db >
			<div>
				<div>
					<input type="text" name="userID" value="<%= request.getParameter("userID" )%>" 
					 size="50" id=userID onkeydown="typingID()" onkeyup="noblank(this)" >
				</div>
				<div>
					<button type="button" onclick="checkID()" >중복 확인</button>
				</div>
				<div id="IDWarning"></div>
			</div>
		</form>
	</div>
	
</div>



</body>
</html>