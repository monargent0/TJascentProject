<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문하기</title>
<!-- jQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
</head>
<body>
	<h1>주문하기</h1>
	<h2>결제 수단</h2>
	<form action="orderComplete.jsp">
		<table>
			<tr>
				<td>
				일반 결제
				</td>
				<td>
				<input type="radio" name="카카오페이" value="kakaopay">
				<img alt="KakaoPay" src="img0404/payment_icon_yellow_small.png" height="10">
				</td>
			</tr>
		</table><br>
		<input type="button" onclick="requestPay()" value="결제하기">
	</form>
</body>
<script type="text/javascript">
var IMP = window.IMP; // 생략 가능
IMP.init("imp26081497"); // 예: imp00000000

function requestPay() {
    // IMP.request_pay(param, callback) 결제창 호출
    IMP.request_pay({ // param
        pg: "kakaopay",
        pay_method: "kakaopay",
        merchant_uid: "ORD20180131-0000011",
        name: "노르웨이 회전 의자",
        amount: 1,
        buyer_email: "gildong@gmail.com",
        buyer_name: "홍길동",
        buyer_tel: "010-4242-4242",
        buyer_addr: "서울특별시 강남구 신사동",
        buyer_postcode: "01181"
    }, function (rsp) { // callback
        if (rsp.success) {
            // 결제 성공 시 로직,
            alert('결제 성공')
        } else {
            // 결제 실패 시 로직,
            alert('결제 취소')
        }
    });
  }
</script>
</html>