<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" href="css/admin.css" rel="stylesheet" >
<title>ascent ADMIN</title>
</head>
<style>
input{
   		margin:7px 0px;
   		width:350px;
	    height:28px;
   	}
</style>
<body style="background-color:#FFFAF6">

	 <header>
	   <div >
	    <a href="main.do"><img src="assets/logo.png"  width="130" height="70"  /></a>
		 <button onclick="location='adminV.jsp'" class="hd-btn">관리자홈</button> 
	     <button onclick="location='memberList.do'" class="hd-btn">회원관리</button>
	     <button onclick="location='productAdmin.do'" class="hd-btn">상품관리</button>
		 <button onclick="location='noticeLAdmin.do'" class="hd-btn" >공지사항관리</button> 
		 <button onclick="location='counselAdmin.do'" class="hd-btn" >개인문의관리</button> 
		 <button onclick="location='logOutH.jsp'"  class="hd-btn">로그아웃</button> 
	    </div>
	 </header>   
<!-- productCode productName productPrice productSize productImages productBrand category_categoryCode -->
<div class="contents">
<div> <h2> 제품 등록 </h2> </div>
	<div style="float: left;">
		<table style="width:800px;">
	<form action="productAddAdmin.do" method="post">
		<tr>
		<td>카테고리</td>
		<td><input type="text" name="category_categoryCode" size="50px" placeholder="category" ></td>
		<td rowspan="7"><img id="preview" src="" width="250" height="250" alt="사진 미리보기"> </td>
		</tr>
		<tr>
		<td>제품코드</td>
		<td><input type="text" name="productCode" size="50px" placeholder="productCode" ></td>
		</tr>
		<tr>
		<td>제품명</td>
		<td><input type="text" name="productName" size="50px" placeholder="productName" ></td>
		</tr>
		<tr>
		<td>가격</td>
		<td><input type="text" name="productPrice" size="50px" placeholder="가격 숫자로만 입력" ></td>
		</tr>
		<tr>
		<td>제품용량</td>
		<td><input type="text" name="productSize" size="50px" placeholder="용량 숫자로만 입력" ></td>
		</tr>
		<tr>
		<td>브랜드</td>
		<td><input type="text" name="productBrand" size="50px" placeholder="브랜드 한글로 입력" ></td>
		</tr>
		<tr>
		<td>제품 사진</td>
		<td><input type="file" id="upload" accept="image/*" ></td>
		</tr>
		<tr>
		<td><input type="hidden" id="imgTxt" name="productImages" >	</td>
		<td><br><button class="sub" type="submit" >상품 등록</button>	</td>
		</tr>	
	</form>
		</table>
	</div>
</div>

<script type="text/javascript">
	
	function readFile() {
	  
	  if (this.files && this.files[0]) {
	    
	    var FR = new FileReader();
	    
	    FR.onload = function(e) {
	    	//console.log(e.target.result);
	      document.getElementById("imgTxt").value = e.target.result;
	     // alert(document.getElementById("imgTxt").value)
	      document.getElementById("preview").src = e.target.result;
	    }; 
	    
	    FR.readAsDataURL( this.files[0] );
	  }
	  
	}
	
	document.getElementById("upload").addEventListener("change", readFile);
	
</script>

</body>
</html>
