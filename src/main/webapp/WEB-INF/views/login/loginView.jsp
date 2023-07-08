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
	<form id="modify" method="post" action="<c:url value="/modify"/>">
	<div class=wrapper>
		<div class="container">
			<h1>내정보</h1>
			
			<!-- 아이디 시작 -->
			<div class="box">
				<h3>아이디</h3>
				<div class="wrap">
					<input type="text" disabled="disabled" class="int" value="${member.userid }">
				</div>
			</div>
			<!-- 아이디 끝 -->
			
			<!-- 비밀번호 시작 -->
			<div class="box">
				<h3>비밀번호</h3>
				<div class="wrap">
					<input type="password" disabled="disabled" class="int" id="passwd" name="passwd">
				</div>
			</div>
			<!-- 비밀번호 끝 -->
			
			<!-- 이름 시작 -->
			<div class="box">
				<h3>이름</h3>
				<div class="wrap">
					<input type="text" disabled="disabled" class="int" id="username" name="username" value="${member.username }">
				</div>
			</div>
			<!-- 이름 끝 -->
			
			<!-- 휴대전화 시작 -->
			<div class="box">
				<h3>휴대전화</h3>
				<div class="wrap">
					<input type="text" disabled="disabled" class="int" id="phone" name="phone" value="${member.phone }">
				</div>
			</div>
			<!-- 휴대전화 끝 -->
			
			<!-- 이메일 시작 -->
			<div class="box">
				<h3>이메일</h3>
				<div class="wrap">
					<input type="text" disabled="disabled" class="int" id="email" name="email" value="${member.email }">
				</div>
			</div>
			<!-- 이메일 끝 -->
			
			<!-- 성별 시작 -->
			<div class="box">
				<h3>성별</h3>
				<div class="wrap">
					<select disabled="disabled" id="genderbox" name="gender">
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
					<select disabled="disabled" id="genderbox" name="area">
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
			
			<button type="button" id="modifyBtn" onClick="location.href='<c:url value="/modify"/>?userid=${loginMember.userid}';">수정하기</button>
		</div>
	</div>
	</form>
</body>
</html>