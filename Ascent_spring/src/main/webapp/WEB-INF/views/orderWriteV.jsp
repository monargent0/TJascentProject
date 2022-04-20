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

<title>Order Write</title>
<!-- jQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
</head>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
  table {
        border-collapse: collapse;
        width: auto;
        height: auto;
      }
      
      table, th, td {
        padding: 5px;
       }
       th{
       border-top : 1px solid black;
       border-bottom: 1px solid black;
       }
       
      .list{
      	position: absolute;
      	top : 50%;
      	left : 50%;
      	transform : translate(-50%,-50%);
      }
</style>
<script>
	
	var width = 500; //팝업의 너비
	var height = 600; //팝업의 높이
    
function sample6_execDaumPostcode() {
	
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
	    
    }).open();
}
</script>
<body>
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
						class="nav-link dropdown-toggle" id="navbarDropdown"
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
						class="nav-link dropdown-toggle" id="navbarDropdown"
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

<div class="list">
	<h2>주문 하기</h2>
	<form name="orderForm" method="post" action="orderWrite.do">
		<table>
			<tr>
				<td>
				<h3>주문 상품</h3>
				</td>
			<tr>
				<th hidden="">userID</th>
				<th hidden="">cartCode</th>
				<th hidden="">productCode</th>
				<th>이미지</th>
				<th>이름</th>
				<th>용량</th>
				<th>가격</th>
				<th>수량</th>
				<th>합계</th>
			</tr>
			<c:set var="orderSum" value="0" />
			<c:set var="orderAmount" value="0" />
			<c:forEach items="${cartList }" var="dto" varStatus="status">
				<tr>
					<td hidden="">
					<input type="text" value="<%=session.getAttribute("userID") %>" name="userID" readonly="readonly" >
					</td>
					<td hidden="">
					<input type="text" value="${dto.cartCode }" name="cartCode" readonly="readonly" >
					</td>
					<td hidden="">
					<input type="text" value="${dto.productCode }" name="productCode" readonly="readonly">
					</td>
					<td align="center">
					<img class="img" src="${dto.productImages }" width="150px" name="productImages">
					</td>
					<td align="left">
					${dto.productName }
					</td>
					<td align="center">
					${dto.productSize } ml
					</td>
					<td align="center">
					${dto.productPrice } 원
					</td>
					<td align="center">
					${dto.cartAmount } 개
					</td>
					<td align="center">
					${dto.cartSum } 원
					</td>
				</tr>
				<c:set var= "orderSum" value="${orderSum + dto.cartSum}"/>
				<c:set var= "orderAmount" value="${orderAmount + dto.cartAmount}"/>
			</c:forEach>
		</table><br>
		<table>
			<tr>
				<td>
				<h3>결제 정보</h3>
				</td>
			</tr>
			<tr>
				<td>
				주문 총량
				</td>
				<td>
				<input type="number" value="${orderAmount }" name="orderAmount" readonly="readonly" hidden="">
				 ${orderAmount } 개
				</td>
			</tr>
			<tr>
				<td>
				주문 총액
				</td>
				<td>
				<input type="number" value="${orderSum }" name="orderSum" readonly="readonly" hidden="">
				${orderSum } 원
				</td>
			</tr>
			<tr>
			</tr>
		</table><br>
		<table>
			<tr>
				<td><h3>배송 정보</h3></td>
			</tr>
			<tr>
				<td align="right">받는 사람</td>
				<td><input type="text" name="orderReceiver" size="10"></td>
			</tr>
			<!-- <tr>
				<td align="right">배송지 이름</td>
				<td><input type="text" name="addressType" size="10"></td>
			</tr> -->
			<tr>	
				<td align="right">우편 번호</td>
				<td>
				<input type="text" name="orderPostcode" id="sample6_postcode" placeholder="우편번호" size="20">
				<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
				</td>
			</tr>
			<tr>	
				<td align="right">주소</td>
				<td><input type="text" name="orderMainAddress" id="sample6_address" placeholder="주소" size="30"></td>
			</tr>
			<tr>	
				<td align="right">참고항목</td>
				<td><input type="text" name="orderDetailAddress" id="sample6_extraAddress" placeholder="참고항목" size="30"></td>
			</tr>
			<tr>	
				<td align="right">상세주소</td>
				<td><input type="text" name="orderExtraAddress" id="sample6_detailAddress" placeholder="상세주소"></td>
			</tr>
			<tr>
				<td colspan="2">
				</td>
			</tr>
		</table><br>
		<!-- <table>
			<tr>
				<td>
				일반 결제
				</td>
				<td>
				<input type="radio" name="카카오페이" value="kakaopay">
				<img alt="KakaoPay" src="img/payment_icon_yellow_small.png" height="13">
				</td>
			</tr>
		</table><br> -->
		<input type="submit" value="결제하기" onclick="requestPay()">
	</form>
</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
	crossorigin="anonymous"></script>
</body>
<script>
var orderForm1 = document.orderForm;
var IMP = window.IMP; // 생략 가능
IMP.init("imp26081497"); // 예: imp00000000

function requestPay() {
    // IMP.request_pay(param, callback) 결제창 호출
    IMP.request_pay({ // param
        pg: "kakaopay",
        pay_method: "kakaopay",
        merchant_uid: "ORD20180131-0000011",
        name: "테스트",
        amount: 1,
        buyer_name: document.orderForm.orderReceiver.value,
        buyer_addr: document.orderForm.orderMainAddress.value,
        buyer_postcode: document.orderForm.orderPostcode.value;
    }, function (rsp) { // callback
        if (rsp.success) {
            // 결제 성공 시 로직,
            alert('결제 성공');
   	 orderForm1.submit();
        } else {
            // 결제 실패 시 로직,
   	 orderForm1.submit();
            alert('결제 취소');
        }
    });
  }
  
var userID = '<%=session.getAttribute("userID")%>';
function cartListCheckUser() {
	if (userID != 'null'){
		location.href='cartList.do?userID='+userID;
	}
	else{
		alert("로그인이 필요합니다.");
		location.href='logInV';
	}
}
</script>
</html>