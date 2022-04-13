<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" href="css/admin.css" rel="stylesheet" >
<title>ascent ADMIN</title>
</head>
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
	 
<div class="contents">
<div> <h2> 제품 상세 </h2> </div>
	<table >	
		<form action="pModifyAdmin.do" method="post">
			<tr>
				<td>카테고리</td>
				<td><input type="text" name="category_categoryCode" size="61" value="${pDetail.category_categoryCode}" readonly="readonly"></td>
				<td rowspan="7"><img id="preview" src="${pDetail.productImages }" width="250" height="250" alt="사진 미리보기"> </td>
			</tr>			
			<tr>
				<td>제품코드</td>
				<td><input type="text" name="productCode" size="61" value="${pDetail.productCode}" readonly="readonly"></td>
			</tr>			
			<tr>
				<td>제품명</td>
				<td><input type="text" name="productName" size="61" value="${pDetail.productName}" ></td>
			</tr>			
			<tr>
				<td>가격</td>
				<td><input type="text" name="productPrice" size="61" value="${pDetail.productPrice }" ></td>
			</tr>			
			</tr>
				<td>용량</td>
				<td><input type="text" name="productSize" size="61" value="${pDetail.productSize }" ></td>
			</tr>
			</tr>
				<td>브랜드</td>
				<td><input type="text" name="productBrand" size="61" value="${pDetail.productBrand }" ></td>
			</tr>
			<tr>
				<td>제품 사진</td>
				<td><input type="file" id="upload" accept="image/*" ></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="hidden" id="imgTxt" name="productImages" value="${pDetail.productImages}">
					<br><button class="sub" type="submit">수정</button>
					<button class="sub" type="button" onclick="location='pDeleteAdmin.do?productCode=${pDetail.productCode}'">삭제</button>
				</td>
			</tr>
		</form>
	</table>
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
