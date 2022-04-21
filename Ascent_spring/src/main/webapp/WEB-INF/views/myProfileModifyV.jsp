<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
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
<title>My Profile Modify</title>
</head>
<style>
	table {
        border-collapse: collapse;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        width: auto;
        height: auto;
        width: 550px;
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
	    width:130px;
	    height:25px;
	    font-family: "나눔명조";
		color:#463D3D;
	    
	}
	.sub:hover{
	    background: #241571;
	    color: #FFFAF6;
	    transition: all 0.5s;
	}
	#warning{
		color: blue;
		font-size: 12px;
		text-align: center;
	}
</style>

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
					
				<!-- 상품 센트별로 보여주기  -->
					<ul id="nav">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Scent </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="allList">All</a></li>
							<li><a class="dropdown-item" href="productscentfloralList">Floral</a></li>
							<li><a class="dropdown-item" href="productscentcitruslist">Citrus</a></li>
							<li><a class="dropdown-item" href="productscentfreshlist">Fresh</a></li>
							<li><a class="dropdown-item" href="productscentfruitylist">Fruity</a></li>
							<li><a class="dropdown-item" href="productscentwoodylist">Woody</a></li>
							<li><a class="dropdown-item" href="productscentoritentallist">Oriental</a></li>
						</ul>
					</li> 
				<!-- 부향로 보여주기  -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Perfume </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="allList">All</a></li>
							<li><a class="dropdown-item" href="productperfumelist">Eau de perfume</a></li>
							<li><a class="dropdown-item" href="producttotilettelist">Eau de toilette</a></li>
							<li><a class="dropdown-item" href="productcolongelist">Eau de cologne</a></li>
							<li><a class="dropdown-item" href="productbodyspraylist">Body Spray</a></li>
						</ul>
					</li>
				<!-- 1:1문의 ,공지사항, 상품문의  -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							About </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="noticeBoardList.do">Notice</a></li>
							<%
							if(session.getAttribute("userID") == null){
							%>
							<li><a class="dropdown-item" href="logInV">Q&A</a></li>
							<%
							}else if(session.getAttribute("userID") != null){
							%>
							<li><a class="dropdown-item" href="counselList.do">Q&A</a></li>
						  <% } %>
						</ul>
					</li>
				</ul>
				</ul>
				<!--로고 -->
      			  <div class="container col-12 col-lg-auto me-lg-auto mb-2 mb-md-0">
   					 <a class="navbar-brand" href="main">
   					   <img src="assets/logo.png"  alt="" width="300" height="150">
  					  </a>
				  </div>
      			 <!--검색내용  -->
				<form  class="d-flex" method="post" action="productsearch" >
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
					<i class="bi bi-person-fill" style="font-size:2.5rem;cursor: pointer;" onclick = "location.href='logInV'" ></i>
					<%
					}else if(session.getAttribute("userID") != null){
					%>
					<i class="bi bi-person-fill" style="font-size:2.5rem;cursor: pointer;" onclick = "location.href='myPageV'" ></i>
				  <% } %>
				  <!-- 장바구니 -->
					<j  class="bi bi-bag-heart" style="font-size:2.3rem; cursor: pointer;" onclick = "cartListCheckUser()"></j>
					
				</div>
			</div>
	</nav>
	

<div class="contents">

<h2>My Profile Modify</h2>
	
				<form action="profileModify.do" method="post">
<table>
				<!-- <tr> <td><h3>정보 수정</h3></td></tr> -->
				<tr>
					<td> 이름 </td> 
					<td align="right"> <input name="userName" value="${userinfo.userName}" size="30"
					id="NAME" onBlur="checkNAME()" onkeydown="typingNAME()" onkeyup="noblank(this)"> </td>
				</tr>
				<tr><td id="NameWarning"></td></tr>
				<tr>
					<td> 이메일 </td> 
					<td align="right"> <input name="userEmail" value="${userinfo.userEmail }" size="30"
					id="email" onBlur="checkEM()" onkeydown="typingEM()" onkeyup="noblank(this)"> </td>
				</tr>
				<tr><td id="EMWarning"></td></tr>
				<tr>
					<td> 전화번호 </td> 
					<td align="right"> <input name="userPhone" value="${userinfo.userPhone }" size="30"
					id="phone" onBlur="checkPH()" onkeydown="typingPH()" onkeyup="noblank(this)"> </td>
				</tr>
				<tr><td id="PHWarning"></td></tr>
			<tr>
				<td colspan="2" align="right"> <button class="sub" type="submit">수정하기</button> </td>
			</tr>

</table>
				</form>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
	crossorigin="anonymous"></script>
</body>
</html>