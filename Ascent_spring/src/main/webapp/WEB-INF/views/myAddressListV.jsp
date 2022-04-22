<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
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
        width: 600px;
        text-align: center;
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
    
	#hyper{				
      	font-size: 14px;
      	font-family:"나눔명조";
      	color:#463D3D;
      	TEXT-DECORATION:none;
      }
    </style>
</head>
<script type="text/javascript">
	function delAd(){
		return confirm("삭제하시겠습니까?");
	}

</script>
<body style="background-color:#FFFAF6">
<%@include file="head.jsp" %>
 <div class="contents">
	<h2>주소록</h2>

	<table >
		<tr>
			<th>배송지</th>
			<th >주소</th>
			<th >수정&삭제</th>
		</tr>
		
		<c:forEach items="${address}" var="dto" varStatus="st">
			<tr>
				<td style="width: 150px">${dto.addressType}<br>
					<%-- ${def[${st.index}]} --%>
					${dto.aDefault}
					<!-- 기본배송지칼럼 --></td>
				<td style="text-align: left;">${dto.postcode }<br>
					${dto.mainAddress} <br> 
					${dto.detailAddress} ${dto.extraAddress}</td>						
				<%-- <td>${dto.user_userID}</td> --%>
				<td ><a id="hyper" href="modifyAddress?addressCode=${dto.addressCode }" onclick="" >수정</a>
					<a id="hyper" href="deleteAddress?addressCode=${dto.addressCode }" onclick="return delAd();" >삭제</a></td>
			</tr>
		</c:forEach>
		<tr>
			<td align="right" colspan="5"><a id="hyper" href="addressWrite">주소 추가</a></td>
		</tr>
	</table>	
	
		<!-- <br><a id="hyper" href="mainV.jsp">main</a> &nbsp; <a id="hyper" href="logOutH.jsp">로그아웃</a> -->
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"crossorigin="anonymous"></script>
</body>
</html>