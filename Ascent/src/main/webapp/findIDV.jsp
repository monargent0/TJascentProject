<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 비밀번호 찾기</title>
</head>

<style>
	.contents{
		position: absolute;
		left : 50%;
		transform : translate(-50%,0%);
		padding: 50px ;
	}
</style>
<script type="text/javascript">
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

<body bgcolor="#FFFAF6">
<div class="contents">

	<div>
		<h1>아이디 찾기</h1>
	</div>

	<div>
		<form action="findID.do" method="post" >
			<div>
				<div>
					<input type="text" name="userName" placeholder="이름을 입력해 주세요" required="required" size="50" onkeyup="noblank(this)">
				</div>
				<div>
					<input type="text" name="userEmail" placeholder="이메일을 입력해 주세요" required="required" size="50" onkeyup="noblank(this)">
				</div>
			</div>
			<div>
				<div style="float: left;">
					<button onclick="location.href='findPWV.jsp'" >비밀번호 찾기</button>
						<br>
					<button onclick="window.close()">닫기</button>
				</div>	
				<div style="float: right;">
					<button type="submit" >아이디 찾기</button>
				</div>
			</div>
		</form>
	</div>
	
</div>






</body>
</html>