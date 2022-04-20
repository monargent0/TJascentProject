<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>ascent</title>
</head>
<script type="text/javascript">
	
	function apply(){
		var txt = "check" ;
		var id =  "<%=request.getParameter("userID")%>" ;
		window.opener.document.signin.userID.value = id;
		window.opener.document.signin.idcheck.value = txt ;
		window.close();
	}

</script>
<style>
	.contents{
		position: absolute;
		left : 50%;
		transform : translate(-50%,0%);
		padding: 20px ;
		font-family: "나눔명조";
		color:#463D3D;
	}
	
   	
    #bt{
	    background-color: #FFFAF6;
	    color: #463D3D;
	    border: 1px solid #999191;
	    /* font-size: 1.0em; */
	    letter-spacing: 0px;
	    padding: 5px 0 0 0px;
	    cursor: pointer;
	    display: inline-block;
	   	margin-bottom : 10px;
	    transition: all 0.5s;    
	    width:110px;
	    height:28px;
	}
	#bt:hover{
	    background: #241571;
	    color: #FFFAF6;
	    transition: all 0.5s;
	}
	
</style>	
<body bgcolor="#FFFAF6">

<div class="contents">
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("userID");
 	String txt = "";
 	if(session.getAttribute("idtxt") == "Nodouble"){
 		txt = "사용 가능한 아이디 입니다.";
		session.invalidate();
		
 	}else if(session.getAttribute("idtxt") == "Double"){
 		txt = "사용이 불가능한 아이디 입니다.";
 		session.invalidate();
 	}
 
 %>
		<div>
			<h2>아이디 중복 체크 결과	</h2>
		</div>
		<div style="text-align: center;">
			[ <%=  id %> ] 은/는 <br>
			<%= txt %> <br>
			<br>
			<div style="float: center;">
				<% if( txt == "사용이 불가능한 아이디 입니다."){ %>
				<button id=bt type="button" onclick= "javascript:history.back()" >돌아가기</button>
				<% }else if( txt == "사용 가능한 아이디 입니다."){ 	%>
				<button id=bt type="button" onclick= "apply()" >사용하기</button>			
	  		    <% } %>
			</div>	
			
		</div>
		


</div>



</body>
</html>