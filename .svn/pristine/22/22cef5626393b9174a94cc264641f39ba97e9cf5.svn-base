<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JoinForm</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<style type="text/css">
h3 {
	text-align: left;
	margin-bottom: 5px;
}
.wrapper {
	width: 460px;
	margin: 0 auto;
}
.container {
	text-align: center;
}
.box {
	width: 100%;
}

.wrap {
	width: 100%;
	height: 50px;
}
.int {
	height: 100%;
	width: 100%;
	margin: 0 auto;
	font-size: 18px;
	text-align: left;
	border: 1px solid black;
}
.pint {
	width: 100%;
	padding: 15px;
	font-size: 18px;
	text-align: left;
	border: 1px solid black;
}
.bir_wrap {
	width: 140px;
	height: 50px;
}
#modifyBtn {
	margin-top : 40px;
	padding : 20px;
	width: 100%;
	font-size: 20px;
	background-color: #6ED746;
	border: none;
	color: white;
}
#completeBtn {
	margin-top : 40px;
	padding : 20px;
	width: 150px;
	font-size: 20px;
	background-color: #6ED746;
	border: none;
	color: white;
}
#cancleBtn {
	margin-top : 40px;
	margin-left : 40px;
	padding : 20px;
	width: 150px;
	font-size: 20px;
	background-color: #6ED746;
	border: none;
	color: white;
}
.error {
	color: red;
	font-size: 15px;
	text-align: left;
}
#genderbox, #areabox {
	width: 468px;
	height: 56px;
	font-size: 18px;
}
</style>
</head>
<body>									  
	<form id="modify" method="post" action="<c:url value="/modify"/>?userid=${loginMember.userid}">
	<div class=wrapper>
		<div class="container">
			<h1>내정보</h1>
			
			<!-- 아이디 시작 -->
			<div class="box">
				<h3>아이디</h3>
				<div class="wrap">
					<input disabled="disabled" type="text" class="int" name="userid" value="${member.userid }">
				</div>
			</div>
			<!-- 아이디 끝 -->
			
			<!-- 비밀번호 시작 -->
			<div class="box">
				<h3>비밀번호</h3>
				<div class="wrap">
					<input type="password" class="int" id="passwd" name="passwd" placeholder="비밀번호를 변경하지 않을시 기존 비밀번호 입력해주세요.">
					<span id="passwdMsg" class="error"></span>
				</div>
			</div>
			<!-- 비밀번호 끝 -->
			
			<!-- 이름 시작 -->
			<div class="box">
				<h3>이름</h3>
				<div class="wrap">
					<input type="text" class="int" id="username" name="username" value="${member.username }">
					<span id="nameMsg" class="error"></span>
				</div>
			</div>
			<!-- 이름 끝 -->
			
			<!-- 휴대전화 시작 -->
			<div class="box">
				<h3>휴대전화</h3>
				<div class="wrap">
					<input type="text" class="int" id="phone" name="phone" value="${member.phone }">
					<span id="phoneMsg" class="error"></span>
				</div>
			</div>
			<!-- 휴대전화 끝 -->
			
			<!-- 이메일 시작 -->
			<div class="box">
				<h3>이메일</h3>
				<div class="wrap">
					<input type="text" class="int" id="email" name="email" value="${member.email }">
					<span id="emailMsgReg" class="error"></span>	
					<span id="emailMsg" class="error"></span>
				</div>
			</div>
			<!-- 이메일 끝 -->
			
			<!-- 성별 시작 -->
			<div class="box">
				<h3>성별</h3>
				<div class="wrap">
					<select id="genderbox" name="gender">
						<option value="0" ${ member.gender == 0 ? 'selected' : '' }>남자</option>
						<option value="1" ${ member.gender == 1 ? 'selected' : '' }>여자</option>
					</select>
					<span id="genderMsg" class="error"></span>
				</div>
			</div>
			<!-- 성별 끝 -->
			
			<!-- 지역 시작 -->
			<div class="box">
				<h3>성별</h3>
				<div class="wrap">
					<select id="genderbox" name="area">
						<option value="0" ${ member.area == 0 ? 'selected' : '' }>서울</option>
						<option value="1" ${ member.area == 1 ? 'selected' : '' }>경기도</option>
						<option value="2" ${ member.area == 2 ? 'selected' : '' }>강원도</option>
						<option value="3" ${ member.area == 3 ? 'selected' : '' }>충청도</option>
						<option value="4" ${ member.area == 4 ? 'selected' : '' }>경상도</option>
						<option value="5" ${ member.area == 5 ? 'selected' : '' }>전라도</option>
						<option value="6" ${ member.area == 6 ? 'selected' : '' }>제주도</option>
					</select>
					<span id="genderMsg" class="error"></span>
				</div>
			</div>
			<!-- 지역 끝 -->
			
			
			<button type="submit" id="completeBtn">완료</button>
			<button type="button" id="cancleBtn" onClick="location.href='<c:url value="/view"/>?userid=${loginMember.userid}';">취소</button>
		</div>
	</div>
	</form>

	<script type="text/javascript">
	
	$("#modify").submit(function() {
		$(".error").text("");		
		var result=true;
		
		<%-- 비밀번호 유효성 검사 시작 --%>
		var passwdReg=/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{6,16}$/g;
		if(!passwdReg.test($("#passwd").val())) {
			$("#passwdMsg").text("형식에 맞게 입력해주세요.");
			result=false;
		}	
		
		
		<%-- 이름 유효성 검사 시작 --%>
		if($("#name").val()=="") {
			$("#nameMsg").text("형식에 맞게 입력해주세요.");
			result=false;
		}
		<%-- 이름 유효성 검사 끝 --%>
		
		
		<%-- 휴대전화 유효성 검사 시작 --%>
		var phoneReg=/^[0-9]/g;
		if(!phoneReg.test($("#phone").val())) {
			$("#phoneMsg").text("형식에 맞게 입력해주세요.");
			result=false;
		}
		<%-- 휴대전화 유효성 검사 끝 --%>
		
		
		<%-- 이메일 유효성 검사 시작 --%>
		var emailReg=/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/g;
		if(!emailReg.test($("#email").val())) {
			$("#emailMsgReg").text("형식에 맞게 입력해주세요.")
			result=false;
		}
		<%-- 이메일 유효성 검사 끝 --%>
		
		
		<%-- 성별 유효성 검사 시작 --%>
		if($("#gender").val()=="") {
			$("#genderMsg").text("성별을 선택해주세요.");
			result=false;
		}
		<%-- 성별 유효성 검사 끝 --%>
		
		
		<%-- 지역 유효성 검사 시작 --%>
		if($("#area").val()=="") {
			$("#areaMsg").text("지역을 선택해주세요.");
			result=false;
		}
		<%-- 지역 유효성 검사 끝 --%>
		
		
		return result;
	});
	</script>
</body>
</html>