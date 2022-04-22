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
<title>ascent</title>
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
	#myform fieldset{
    display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
    border: 0; /* 필드셋 테두리 제거 */
	}
	#myform input[type=radio]{
    display: none; /* 라디오박스 감춤 */
	}
	#myform label{
    font-size: 1em; /* 이모지 크기 */
    color: transparent; /* 기존 이모지 컬러 제거 */
    text-shadow: 0 0 0 #f0f0f0; /* 새 이모지 색상 부여 */
	}	
	
	#myform label:hover{
    text-shadow: 0 0 0 #a00; /* 마우스 호버 */
	}
	#myform label:hover ~ label{
    text-shadow: 0 0 0 #a00; /* 마우스 호버 뒤에오는 이모지들 */
	}
	#myform fieldset{
    display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
    direction: rtl; /* 이모지 순서 반전 */
    border: 0; /* 필드셋 테두리 제거 */
	}
	#myform fieldset legend{
    text-align: left;
	}
	#myform input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 #a00; /* 마우스 클릭 체크 */
	}
    </style>

</head>
<body style="background-color:#FFFAF6">
<%@include file="head.jsp" %>
 <div class="contents">
	<h3>ascent 상품 후기</h3>
		<table >
		<form action="reviewWrite" method="post">
			<tr>
				<td>제목</td>
				<td><input type="text" name="reviewTitle" size="50"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="reviewContent" rows="10" cols="50" maxlength="100"></textarea></td>
			</tr>
			<tr>
				<td>첨부파일</td>
				<td><input type="file" id="upload" name="image" accept="image/*"></td>
			</tr>
			<tr>
				<td><input type="hidden" id="imgTxt" name="reviewImage" >	</td>
				<td rowspan="7"><img id="preview" src="" width="250" height="250" alt="업로드할 이미지"> </td>
			</tr>		
			<!-- 별점 기능 아직 미구현 -->		
			<!-- <tr>
				<td id="myform"><form name="myform" id="myform" method="post">
   		 <fieldset>
       		 <legend>평가</legend>
       			 <input type="radio" name="rating" value="5" id="rate1"><label for="rate1">⭐</label>
       			 <input type="radio" name="rating" value="4" id="rate2"><label for="rate2">⭐</label>
       			 <input type="radio" name="rating" value="3" id="rate3"><label for="rate3">⭐</label>
       			 <input type="radio" name="rating" value="2" id="rate4"><label for="rate4">⭐</label>
       			 <input type="radio" name="rating" value="1" id="rate5"><label for="rate5">⭐</label>
    	</fieldset>
		</form></td>
			</tr> -->			
			<tr>
				<td><a id="hyper" href="reviewList">목록보기</a></td>
				<td colspan="2" align="right"><input class="sub" type="submit" value="입력"></td>
			</tr>
		</form>
	</table>	
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"crossorigin="anonymous"></script>

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