<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GOAL_WRITE</title>
<style type="text/css">

.wrapper {
	width: 650px;
	height: 400px;
}
.content {
	border: 1px solid black;
	margin: 0;
	border-collapse: collapse;
}
.title {
	border: 1px solid black;
	width: 80px;
	height: 30px;
	text-align: center;
}
.detail {
	border: 1px solid black;
	width: 563px;
}
.Btnbox {
	margin: auto;
	text-align: center;
}
#g_content {
	height: 150px;
}
#uploadBtn {
	width: 100px;
	height: 40px;
	color: white;
	background-color: #6ED746;
	border: none;
	margin-top: 5px;
}
#cancleBtn {
	width: 60px;
	height: 40px;
	color: black;
	background-color: #f0f0f1;
	border: none;
}
#g_content {
	width: 560px;
	border: none;
	display: 
}
</style>
</head>
<body>
	<div class="wrapper">
	<h3>내 희망목표쓰기</h3>
		<table class="content">
			<tr>
				<td class="title">목적</td>
				<td class="detail">
					재테크 목적은<input type="textarea" name="g_goal" maxlength="12">입니다.
				</td>
			</tr>
			<tr>
				<td class="title">목표</td>
				<td class="detail">
					<input type="number" name="g_money">원 만들기가 목표입니다.
				</td>
			</tr>
			<tr>
				<td class="title">기간</td>
				<td class="detail">
					<input type="date" name="g_start"> 부터 <input type="date" name="g_end"> 까지 실천할 예정입니다.
				</td>
			</tr>
			<tr>
				<td class="title" id="g_content" style="vertical-align: top">나의다짐</td>
				<td class="detail"><input type="text" id="g_content" name="g_content" style="vertical-align: top"></td>
			</tr>
		</table>
		<div class="Btnbox">
			<button id="uploadBtn" type="button">등록하기</button>&nbsp;&nbsp;<button id="cancleBtn" type="button">취소</button>
		</div>
	</div>
</body>
</html>