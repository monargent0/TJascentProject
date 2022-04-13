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

<title>회원가입</title>
</head>

<script type="text/javascript">
	
	/* 이름 유효성 검사 */
	function checkNAME(){
		let name = document.getElementById("NAME").value;
		let warning = document.getElementById("NameWarning");
		var regExpNAME = /^[가-힣]*$/
		
		if(!regExpNAME.test(name)){
			warning.innerHTML = '<p id="warning"> 한글만 입력 가능합니다. </p>';
		}
		if(name.length < 2){
			warning.innerHTML = '<p id="warning"> 이름은 2글자 이상 입력해주세요 </p>';
		} 
		if(name.length > 9){
			warning.innerHTML = '<p id="warning"> 입력하신 이름 정보를 확인해주세요 </p>';
		} 
	}

	function typingNAME(){
		let warning = document.getElementById("NameWarning");
		warning.innerHTML = "";
	}
	
	/* 아이디 유효성검사  */
	function checkID(){
		let id = document.getElementById("userID").value;
		let warning = document.getElementById("IDWarning");
		var regExpID = /^[0-9a-zA-Z]*$/
		
		if(!regExpID.test(id)){
			warning.innerHTML = '<p id="warning"> 영어 대소문자와 숫자만 입력 가능합니다. </p>';
		}
		if(id.length < 3){
			warning.innerHTML = '<p id="warning"> 아이디를 3글자 이상으로 입력해주세요 </p>';
		} 
		if(id.length > 13){
			warning.innerHTML = '<p id="warning"> 아이디를 12글자 이하로 입력해주세요 </p>';
		} 
	}

	function typingID(){
		let warning = document.getElementById("IDWarning");
		warning.innerHTML = "";
	}
	
	/* 이메일 유효성 검사 */
	function checkEM(){
		let email = document.getElementById("email").value;
		let warning = document.getElementById("EMWarning");
		var regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/
		
		if(!regExpEmail.test(email)){
			warning.innerHTML = '<p id="warning"> 이메일 입력 정보를 확인해 주세요. </p>';
		}
	}

	function typingEM(){
		let warning = document.getElementById("EMWarning");
		warning.innerHTML = "";
	}
	
	/* 폰번호 유효성 검사 */
	function checkPH(){
		let phone = document.getElementById("phone").value;
		let warning = document.getElementById("PHWarning");
		var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/ 
		
		if(!regExpPhone.test(phone)){
			warning.innerHTML = '<p id="warning"> 연락처는 - 를 포함한 형식으로 입력해주세요. </p>';
		}
	}

	function typingPH(){
		let warning = document.getElementById("PHWarning");
		warning.innerHTML = "";
	}
	/* 비밀번호 유효성 검사 */
	function checkPW(){
		let pw = document.getElementById("userPW").value;
		let warning = document.getElementById("PWWarning");
		var regExpPW = /^[0-9a-zA-Z]*$/
		
		if(!regExpPW.test(pw)){
			warning.innerHTML = '<p id="warning"> 영어 대소문자와 숫자만 입력 가능합니다. </p>';
		}
		if(pw.length < 3){
			warning.innerHTML = '<p id="warning"> 비밀번호를 3자 이상 입력해주세요 </p>';
		} 
		if(pw.length > 16){
			warning.innerHTML = '<p id="warning"> 15자 이하로 입력해주세요 </p>';
		} 
	}

	function typingPW(){
		let warning = document.getElementById("PWWarning");
		warning.innerHTML = "";
	}
	
	/* 비밀번호 일치 검사 */
	function checkCFPW()	{
		let pw = document.getElementById("userPW").value;
		let cfpw = document.getElementById("cfPW").value;
		let warning = document.getElementById("CFWarning");
		
		if (pw != cfpw ) {
			warning.innerHTML = '<p id="warning"> 비밀번호가 일치하지 않습니다 </p>';
		}
		if (pw == cfpw ) {
			warning.innerHTML = '<p id="warning"> 비밀번호가 일치합니다 </p>';
		}
	}
	function typingCFPW(){
		let warning = document.getElementById("CFWarning");
		warning.innerHTML = "";
	}
	
	/* 필수 입력  */
	function check(){
		let name = document.getElementById("NAME").value;
		let id = document.getElementById("userID").value;
		let idc = document.getElementById("idcheck").value;
		let pw = document.getElementById("userPW").value;
		let cfpw = document.getElementById("cfPW").value;
		let email = document.getElementById("email").value;
		let phone = document.getElementById("phone").value;
		let birth = document.getElementById("birth").value;

		if(name == ""){
			let warning = document.getElementById("NameWarning");
			warning.innerHTML = '<p id="warning"> 이름을 입력해주세요 </p>';
			return document.signin.userName.focus();
		}
		else if(id == ""){
			let warning = document.getElementById("IDWarning");
			warning.innerHTML = '<p id="warning"> 아이디를 입력해주세요 </p>';
			return document.signin.userID.focus();
		}
		else if( idc == "uncheck"){
			let warning = document.getElementById("IDWarning");
			warning.innerHTML = '<p id="warning"> 아이디 중복확인을 해주세요 </p>';
			return document.signin.userID.focus();
		}
		else if(email == ""){
			let warning = document.getElementById("EMWarning");
			warning.innerHTML = '<p id="warning"> 이메일을 입력해주세요 </p>';
			return document.signin.userEmail.focus();
		}
		else if(phone == ""){
			let warning = document.getElementById("PHWarning");
			warning.innerHTML = '<p id="warning"> 전화번호를 입력해주세요 </p>';
			return document.signin.userPhone.focus();
		}
		else if(pw == ""){
			let warning = document.getElementById("PWWarning");
			warning.innerHTML = '<p id="warning"> 비밀번호를 입력해주세요 </p>';
			return document.signin.userPW.focus();
		}
		else if(cfpw == ""){
			let warning = document.getElementById("CFWarning");
			warning.innerHTML = '<p id="warning"> 비밀번호 확인을 입력해주세요 </p>';
			return document.signin.confirmPW.focus();
		}
		else if(birth == ""){
			let warning = document.getElementById("BDWarning");
			warning.innerHTML = '<p id="warning"> 출생일을 입력해주세요 </p>';
			return document.signin.userBirth.focus();
		}
		else{
		 document.signin.submit();			
		}
	}
	
	function doubleC(){
		let id = document.getElementById("userID").value;
 		window.open('doubleV.jsp?userID='+id ,'popup','width=600,height=300'); 
	}
	
	function noblank(obj) { // 공백사용못하게
	    var str_space = /\s/;  // 공백체크
	    if(str_space.exec(obj.value)) { //공백 체크
	        /* alert("해당 항목에는 공백을 사용할수 없습니다.\n\n공백은 자동적으로 제거 됩니다."); */
	        obj.focus();
	        obj.value = obj.value.replace(' ',''); // 공백제거
	        return false;
	    }
	 // onkeyup="noblank(this);" onchange="noSpaceForm(this);"
	}
</script>

<style>
	.contents{
		position: absolute;
		left : 50%;
		transform : translate(-50%,0%);
		padding: 50px;
		font-family: "나눔명조";
	}
	input{
		margin-bottom: 10px;	
	}
	
	#warning{
		color: blue;
		font-size: 12px;
		text-align: center;
	}
	
	
</style>

<body style="background-color:#FFFAF6">
	
	<!-- 메인홈바 -->
	<nav id="navBar" class="navbar navbar-expand-lg navbar">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					
				<!-- 상품 카테고리 한눈에 차라락 보여주기  -->
					<ul id="nav">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="main.do" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Scent </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="allList.do">All</a></li>
							<li><a class="dropdown-item" href="sFList.do">Floral</a></li>
							<li><a class="dropdown-item" href="sCList.do">Citrus</a></li>
							<li><a class="dropdown-item" href="sFRList.do">Fresh</a></li>
							<li><a class="dropdown-item" href="sFTList.do">Fruity</a></li>
							<li><a class="dropdown-item" href="sWList.do">Woody</a></li>
							<li><a class="dropdown-item" href="sOList.do">Oriental</a></li>
						</ul>
					</li> 
				<!-- 상품별로 보여주기  -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="main.do" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Perfume </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="allList.do">All</a></li>
							<li><a class="dropdown-item" href="pPList.do">Eau de perfume</a></li>
							<li><a class="dropdown-item" href="pTList.do">Eau de toilette</a></li>
							<li><a class="dropdown-item" href="pCList.do">Eau de cologne</a></li>
							<li><a class="dropdown-item" href="pBList.do">Body Spray</a></li>
						</ul>
					</li>
					<!-- 1:1문의 ,공지사항, 상품문의  -->
					<li><a class="nav-link px-2" href="#">About</a>
						<ul>
							<li><a href="noticeBoardList.do">Notice</a></li>
							<!-- <li><a href="counselList.do">Q&A</a></li> -->
							<%
							if(session.getAttribute("userID") == null){
							%>
							<li><a href="logInV.jsp">Q&A</a></li>
							<%
							}else if(session.getAttribute("userID") != null){
							%>
							<li><a href="counselList.do">Q&A</a></li>
						  <% } %>
						</ul>
					</li>
				</ul>
				</ul>
				<!--로고 -->
      			  <div class="container col-12 col-lg-auto me-lg-auto mb-2 mb-md-0">
   					 <a class="navbar-brand" href="main.do">
   					   <img src="assets/logo.png"  alt="" width="300" height="150">
  					  </a>
				  </div>
      			 <!--검색내용  -->
				<form  class="d-flex" method="post" action="searchProduct.do" >
				<div>
					<input value="${param.searchText }" type="text"  class="form-control me-2" placeholder="검색하기" name="searchText" aria-label="Search"> 
				</div>
				
					<div class="text-end">
					
					<!--  검색 -->
					<div> 
				<button type="submit" class="btn text-white">
                  <svg xmlns="http://www.w3.org/2000/svg"  width="20" height="20" fill="currentColor" class="bi bi-search-heart" viewBox="0 0 14 14 ">
				  <path d="M6.5 4.482c1.664-1.673 5.825 1.254 0 5.018-5.825-3.764-1.664-6.69 0-5.018Z"/>
 				 <path d="M13 6.5a6.471 6.471 0 0 1-1.258 3.844c.04.03.078.062.115.098l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1.007 1.007 0 0 1-.1-.115h.002A6.5 6.5 0 1 1 13 6.5ZM6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11Z"/>
				</svg>
				<span class="visually-hidden"></span>
                </button>
				 </div> 
				 </div>
				</form>
				
				<!-- 마이페이지 -->
					<% 
				 	 if(session.getAttribute("userID") == null){
					%>
					<i class="bi bi-person-fill" style="font-size:2.5rem;cursor: pointer;" onclick = "location.href='logInV.jsp'" ></i>
					<%
					}else if(session.getAttribute("userID") != null){
					%>
					<i class="bi bi-person-fill" style="font-size:2.5rem;cursor: pointer;" onclick = "location.href='myPageV.jsp'" ></i>
				  <% } %>
				  <!-- 장바구니 -->
					<j  class="bi bi-bag-heart" style="font-size:2.3rem; cursor: pointer;" onclick = "cartCheckUser()"></j>
					
				</div>
			</div>
	</nav>
	

<div class="contents">

	<div>
		<h1>SIGN IN</h1>
	</div>
	
	<div>
		<form action="signIn.do" method="post" name="signin">
			<div>
				<div>
					<label>Name</label>
				</div>
				<div>
					<input type="text" name="userName" placeholder="이름을 입력해 주세요." 
					id="NAME" onBlur="checkNAME()" onkeydown="typingNAME()" size="50" onkeyup="noblank(this)" >
				</div>
				<div id="NameWarning"></div>
			</div>
		
			<div>
				<div>
					<label>ID</label>
				</div>
				<div>
					<input type="text" name="userID" placeholder="아이디를 입력해 주세요."
					onBlur="checkID()" onkeydown="typingID()" id="userID" size="50" onkeyup="noblank(this)">
					<button type="button" onclick="doubleC() " >아이디 중복 확인</button>
				</div>
				<div style="">
					<input type="hidden" id="idcheck" name="idcheck" value="uncheck">
				</div>
				<div id="IDWarning"></div>
			</div>
		
			<div>
				<div>
					<label>Email</label>
				</div>
				<div>
					<input type="text" name="userEmail" placeholder="이메일을 입력해 주세요." size="50"
					id="email" onBlur="checkEM()" onkeydown="typingEM()" onkeyup="noblank(this)">
				</div>
				<div id="EMWarning"></div>
			</div>
		
			<div>
				<div>
					<label>Phone</label>
				</div>
				<div>
					<input type="text"  name="userPhone" placeholder="핸드폰 번호를 입력해 주세요." size="50"
					id="phone" onBlur="checkPH()" onkeydown="typingPH()" onkeyup="noblank(this)">
				</div>
				<div id="PHWarning"></div>
			</div>
			
			<div>
				<div>
					<label>PW</label>
				</div>
				<div>
					<input type="password" name="userPW" placeholder="비밀번호를 입력해 주세요." size="50"
					id="userPW" onBlur="checkPW()" onkeydown="typingPW()" onkeyup="noblank(this)">
				</div>
				<div id="PWWarning"></div>
			</div>
			
			<div>
				<div>
					<label>PW Confirm</label>
				</div>
				<div>
					<input type="password" name="confirmPW" placeholder="비밀번호를 다시 입력해 주세요." size="50"
					id="cfPW" onBlur="checkCFPW()" onkeydown="typingCFPW()" onkeyup="noblank(this)">
				</div>
				<div id="CFWarning"></div>
			</div>
			
			<div>
				<div>
					<label>Birth Date</label>
				</div>
				<div>
					<input type="date" name="userBirth" id="birth">
				</div>
				<div id="BDWarning"></div>
			</div>
			
			<div>
				<div>
					<label>Gender</label>
				</div>
				<div>
					<input id="gender" type="radio" name="userGender" value="female" checked="checked"> Female
					<input id="gender" type="radio" name="userGender" value="male" > Male
				</div>
			</div>
			
			
			<div>
				<button type="button" onclick="check()">회원가입</button>
			</div>
			
		</form>
	</div>

</div>


	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
	crossorigin="anonymous"></script>
</body>
</html>