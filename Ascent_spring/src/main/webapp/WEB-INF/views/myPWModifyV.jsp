<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
<meta charset="UTF-8">
<title>ascent</title>
</head>
<script type="text/javascript">

let resultTxt = '<%=(String)request.getAttribute("resultTxt")%>';
if(resultTxt !== "null"){
	if(resultTxt == "기존 비밀번호를 확인해 주세요."){
		alert(resultTxt);
	}else if(resultTxt == "비밀번호 변경이 완료되었습니다."){
		window.location.href = 'myPWModifyH';		
	}
}

/* 비밀번호 유효성 검사 */
function checkPW(){
	let pw = document.getElementById("newPW").value;
	let oldpw = document.getElementById("oldPW").value;
	let cfpw = document.getElementById("cfPW").value;
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
	}else if(pw != cfpw){
		warning.innerHTML = '<p id="warning"> 새로운 비밀번호가 일치하지 않습니다 </p>';
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
	table {
        border-collapse: collapse;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        width: auto;
        height: auto;
        width: 400px;
      }
      
      table, th, td {
        padding: 5px;
       }
      
	.contents{
		position: absolute;
		left : 50%;
		transform : translate(-50%,0%);
		padding: 20px ;
		font-family: "나눔명조";
		color:#463D3D;
	}
	
	#warning{
		font-size: 12px;
		text-align: center;
	}
	input{
   		margin:7px 0px;
   		width:220px;
	    height:25px;
   	}
   	
    #button{
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
	    width:177px;
	    height:28px;
	}
	#button:hover{
	    background: #241571;
	    color: #FFFAF6;
	    transition: all 0.5s;
	}
	form{
		display:inline;
		float: center;
		}
	
</style>	
<body style="background-color:#FFFAF6">
<%@include file="head.jsp" %>	
	

 
 	<div class="contents">
 		<form action="myPWModify.do" method="post" name="pwC">
 			<table>
 			<tr><td><h2>비밀번호 변경</h2></td></tr>
				<tr><td align="center">
					<input type="password" placeholder="기존 비밀번호" name="oldPW" id="oldPW" onkeyup="noblank(this)">
				</td></tr>
				<tr><td align="center">
					<input type="password" name="newPW" placeholder="새로운 비밀번호" id="newPW" onkeydown="typingPW()" onkeyup="noblank(this)">
				</td></tr>
				<tr><td align="center">
					<input type="password" name="confirmPW" placeholder="새로운 비밀번호 확인" id="cfPW" onkeydown="typingPW()" onkeyup="noblank(this)">
				</td></tr>
				<tr><td><div id="Warning" ></div> &nbsp; </td></tr> 
 			</table>
 		</form>
 		&nbsp;<br>
		<div align="right" ><button id="button" type="button" onclick="checkPW()">변경하기</button> </div>
 	</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
	crossorigin="anonymous"></script>
</body>
</html>