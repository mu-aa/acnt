<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />

<style type="text/css">
#budget-table {width:100%; border:2px solid #f0f1f1; margin-top: 100px; border-collapse: collapse; font-size: 14px; font-weight: 700;}
#budget-table td, #budget-table th {border:1px solid #c3c4c7; border-collapse: collapse; height:30px;}
#budget-table th {background-color: #f0f0f1; text-align: center;}
#budget-table input {text-align: right; border: none; width: 93%; font-size: 14px;}
#budget-table input:focus {outline: 1px solid #03C75A; outline-offset: 8px;}
#bugget-table .budget {text-align: center;}
.category {width:15%;}
input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
}
#footer-table {width: 0; height: 0;}

.calendar {
	display: flex;
	justify-content: center;
	align-items: center;
}
.calendar input {
	border: 1px solid #dcdcde;
	width: 162px;
	height: 40px;
	text-align: center;
	font-size: 18px;
	font-weight: 900;
	font-family: 'Kanit', sans-serif;
	padding-right: 15px;
}

#footer-table {
	display: flex;
	position: fixed;
	width: 95%; height: 60px;
	margin-left: 10%;
	bottom: 0; left: 0;
	background-color: white;
	flex-direction: row;
	box-shadow: -1px -1px 4px #AAAFB5;
	z-index: 1;
}
#footer-table td {
	width: 150px; height: 10px;
	border: none;
	font-size: 15px;
}

#footer-table button { 
	-webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    background-color: white;
    border:none;
    border-style: none;
}
#add-selected-rows-btn { 
	border-radius: 2px;
    border: 1px solid #d9d9d9;
    background-color: #fff;
    font-size: 11px;
    font-weight: 900;
    line-height: 16px;
}
button:hover {
	cursor: pointer;
}
.total input {font-weight: 700;}
</style>
</head>
<body>

<!-- 날짜 지정 -->
<!-- ㄴ 최소값 최대값 지정 필요 -->
<div class="calendar">
  	<div>
		<input type="date" id="start-date-input" value="2023-03-01">&nbsp;&nbsp;&nbsp;&nbsp;─&nbsp;&nbsp;&nbsp;&nbsp;
	</div>
	<div>
		<input type="date" id="end-date-input" value="2023-03-31">
	</div>
</div>

<h2>예산 입력</h2>
<div id="tableZone" class="budget">
	<form method="post" name="form_b">
	<table id="budget-table" style="table-layout:fixed;">
		<thead>
			<tr>
				<th style="width:5%; text-align: center;">행번호</th>
				<th class="category">분류</th>
				<th>예산</th>
				<th>지출</th>
				<th>잔액</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${empty budgetList or budgetList == null}">
				<p>ERROR</p>
			</c:if>
			<c:forEach items="${budgetList}" var="budget" varStatus="status">
			<tr>
				<td class="budget-td"><input type="number" class="bno" value="${budget.bno}" readonly></td>
			  	<td class="budget-td"><input type="text" value="${budget.bcate}" id="bcate_${budget.bno }" readonly/></td>
			    <td class="budget-td"><input type="number" min="0" max="999999" value="${budget.bwon}"></td>
			    <td><input type="number" value="" id="total_${budget.bno }"readonly></td>
			    <td><input type="number" value="${budget.bwon-ex.exCard+ex.exCash }" readonly></td>
		   </tr>
			</c:forEach>
		    <tr style="border-top: 2px solid #c3c4c7;">
		    	<td class="category">합계</td>
		    	<td></td>
			    <td class="total"><input type="number" value="${budgetSumAll }" readonly></td>
			    <td class="total" id="expenses-total"><input type="number" value="${expensesSumAll }" readonly></td>
			    <td class="total" id="remaining-total"><input type="number" value="${budgetSumAll-expensesSumAll }" readonly></td>
		   </tr>
		</tbody>
	</table>
	</form>
</div>

<p><input type="hidden" value="${cate1}" id="cate1"></p>
<p><input type="hidden" value="${cate2}" id="cate2"></p>
<p><input type="hidden" value="${cate3}" id="cate3"></p>
<p><input type="hidden" value="${cate4}" id="cate4"></p>
<p><input type="hidden" value="${cate5}" id="cate5"></p>
<p><input type="hidden" value="${cate6}" id="cate6"></p>
<p><input type="hidden" value="${cate7}" id="cate7"></p>
<p><input type="hidden" value="${cate8}" id="cate8"></p>
<p><input type="hidden" value="${cate9}" id="cate9"></p>
<p><input type="hidden" value="${cate10}" id="cate10"></p>
<p><input type="hidden" value="${cate11}" id="cate11"></p>

<table id="footer-table">
	<tfoot>
		<tr>
			<!-- 저장하기 버튼 -->
			<td><button type="submit" onclick="save();"><img src="resources/images/save.png"></button></td>
		</tr>
	</tfoot>
</table>

<script type="text/javascript">
function save() {
	$("#budget-table tr").each(function(i) {
		if(i<1 || i>11) return;
		
		var array=["bno","bcate","bwon"];
		var data=[];
		
		$(this).children(".budget-td").each(function() {
			data.push($(this).children().val());
		});
		
		var obj={};
		
		for(i=0;i<array.length;i++) {
			obj[array[i]]=data[i]
		}
		$.ajax({
	        type : "post",
	        url : "${pageContext.request.contextPath}/budget",
	        traditional: true,
	        data : obj,
	        dataType : "text",
		    success : function(result){
		    	console.log(result);
		    	location.href="${pageContext.request.contextPath}/budget";
		    },
		    error : function(xhr){
		       console.log("AJAX_ERROR = "+xhr.status);
		       location.href="${pageContext.request.contextPath}/budget";
		    }
		});
	});
}

$(function() {
	//hidden으로 지출 카테고리별 합계 전달
	$("#total_1").val($("#cate1").val());
	$("#total_2").val($("#cate2").val());
	$("#total_3").val($("#cate3").val());
	$("#total_4").val($("#cate4").val());
	$("#total_5").val($("#cate5").val());
	$("#total_6").val($("#cate6").val());
	$("#total_7").val($("#cate7").val());
	$("#total_8").val($("#cate8").val());
	$("#total_9").val($("#cate9").val());
	$("#total_10").val($("#cate10").val());
	$("#total_11").val($("#cate11").val());
});
</script>
</body>
</html>