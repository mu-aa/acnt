<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
	<title>수입</title>
<style>
/*
    .calendar {
      display: flex;
      justify-content: center;
      align-items: center;
      margin: 10px;
    }
*/
    /*
    .fixed {
			position: fixed;
			bottom: 0;
			left: 0;
			width: 100%;
			background-color: #f1f1f1;
			padding: 20px 0;
			text-align: center;
      		display: flex;
      		justify-content: space-between;
		}
    .fixed button {
        margin-left: 300px;
    }
    */
    }
    /*
    #income-total-table td {
      font-size: 19px;
      border:0;
    }
    #income-total {
      color: #3e7aff;
    }
    */
    table {
		border-spacing: 0;
	}
	#income-table {width:100%; border:2px solid #f0f1f1; margin-top: 50px; border-collapse: collapse; font-size: 14px; font-weight: 700;}
	#income-table td, #income-table th {border:1px solid #c3c4c7; border-collapse: collapse; height:30px;}
	#income-table th {background-color: #f0f0f1; text-align: center;}
	#income-table td {}
	#income-table input {border-style: none; text-align: center; width: 93%; font-size: 14px;}
	#income-table input:focus {outline: 1px solid #03C75A; outline-offset: 8px;}
	.date {width: 5%;}
	.card {width: 15%;}
	.cash {width: 15%;}
	.memo {width: 30%}
	.date input, .checkbox input {text-align: center;}
	.cash input {text-align: right;}
	.main-category {text-align:left; margin: 0 0 5px 45px;}
	.main-category button {background-color: white; border-width: 0; font-size: 15px;}
	
	input[type="number"]::-webkit-outer-spin-button,
	input[type="number"]::-webkit-inner-spin-button {
	    -webkit-appearance: none;
	    -moz-appearance: none;
	    appearance: none;
	}
	
	.selectbox {width: 150px; border: 0; text-align: center;}
	.selectbox:focus {outline: 1px solid #03C75A; outline-offset: 8px;}
	
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
</style>

<script type="text/javascript">
function submit() {
	$("#income-table tr").each(function(i) {
		if(i==0) return;
		
		var array=["inNo","inDate","inAmount","inAcname","inCate","inMemo","inId"];
		var data=[];
		
		$(this).children("td").each(function() {
			data.push($(this).children().val());
		});
		
		var obj={};
		
		for(i=0;i<array.length;i++) {
			obj[array[i]]=data[i]
		}
		
		$.ajax({
	        type : "post",
	        url : "${pageContext.request.contextPath}/income",
	        traditional: true,
	        data : obj,
	        dataType : "text",
		    success : function(result){
		    	console.log(result);
		    	location.href="${pageContext.request.contextPath}/income";
		    },
		    error : function(xhr){
		       console.log("AJAX_ERROR = "+xhr.status);
		       location.href="${pageContext.request.contextPath}/income";
		    }
		});
	});
}
</script>
    
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


	<div class="main-category">
		<button type="button" onclick="location.href='${pageContext.request.contextPath}/';">지출</button>
		<button type="button" onclick="location.href='${pageContext.request.contextPath}/income';" style="border-bottom: 2px solid #03C75A; font-weight: 700;">수입</button>
	</div>
	
	<div id="tableZone">
		<form method="post" name="form_in">
			<table id="income-table">
				<thead>
					<tr>
						<th class="checkbox"><input type="checkbox" value="selectall" onclick="selectAll(this);"/></th>
						<th class="date">날짜</th>
						<th class="cash">금액</th>
						<th class="acname">입금통장&nbsp;&nbsp;<button type="button" class="account" onclick="account();">+</button></th>
						<th class="category">분류</th>
						<th class="memo">메모</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty incomeList or incomeList == null}">
						<tr>
							<td class="checkbox"><input type="checkbox" class="checkSelect" value="${in.inNo }"><input type="hidden" value="${in.inNo }" class="in"></td>
							<td class="date"><input type="date" name="inDate" value="${in.inDate }"></td>
			        		<td class="amount">
								<input type="number" min="0" max="999999999" name="inAmount" value="${in.inAmount }" id="inAmount_${in.inNo }">
							</td>
							<td class="acname">
								<select name="inAcname" class="selectbox" value="${in.inAcname }">
								    <option value="1" class="lang-option" <c:if test="${in.inAcname == '1'}">selected</c:if>>1</option>
								    <option value="2" class="lang-option" <c:if test="${in.inAcname == '2'}">selected</c:if>>2</option>
								    <option value="미지정" class="lang-option" <c:if test="${in.inAcname == '미지정' or empty in.inAcname}">selected</c:if>>미지정</option>
								</select>
							</td>
							<td class="category">
								<select name="inCate" class="selectbox" id="inCate_${in.inNo }">
									<option value="식비" class="lang-option" <c:if test="${in.inCate == '식비'}">selected</c:if>>식비</option>
									<option value="주거/통신" class="lang-option" <c:if test="${in.inCate == '주거/통신'}">selected</c:if>>주거/통신</option>
									<option value="생활용품" class="lang-option" <c:if test="${in.inCate == '생활용품'}">selected</c:if>>생활용품</option>
									<option value="의복/미용" class="lang-option" <c:if test="${in.inCate == '의복/미용'}">selected</c:if>>의복/미용</option>
									<option value="건강/문화" class="lang-option" <c:if test="${in.inCate == '건강/문화'}">selected</c:if>>건강/문화</option>
									<option value="교육/육아" class="lang-option" <c:if test="${in.inCate == '교육/육아'}">selected</c:if>>교육/육아</option>
									<option value="교통/차량" class="lang-option" <c:if test="${in.inCate == '교통/차량'}">selected</c:if>>교통/차량</option>
									<option value="경조사/회비" class="lang-option" <c:if test="${in.inCate == '경조사/회비'}">selected</c:if>>경조사/회비</option>
									<option value="세금/이자" class="lang-option" <c:if test="${in.inCate == '세금/이자'}">selected</c:if>>세금/이자</option>
									<option value="용돈/기타" class="lang-option" <c:if test="${in.inCate == '용돈/기타'}">selected</c:if>>용돈/기타</option>
									<option value="미분류" class="lang-option" <c:if test="${in.inCate == '미분류' or empty in.inCate}">selected</c:if>>미분류</option>
								</select>
							</td>
							<td class="memo"><input type="text" name="inMemo" value="${in.inMemo }"></td>
						</tr>
					</c:if>
					<c:forEach var="in" items="${incomeList }">
						<tr>
							<td class="checkbox"><input type="checkbox" class="checkSelect" value="${in.inNo }"><input type="hidden" value="${in.inNo }" class="in"></td>
							<td class="date"><input type="date" name="inDate" value="${in.inDate }"></td>
			        		<td class="amount">
								<input type="number" min="0" max="999999999" name="inAmount" value="${in.inAmount }" id="inAmount_${in.inNo }">
							</td>
							<td class="acname">
								<select name="inAcname" class="selectbox" value="${in.inAcname }">
								    <option value="1" class="lang-option" <c:if test="${in.inAcname == '1'}">selected</c:if>>1</option>
								    <option value="2" class="lang-option" <c:if test="${in.inAcname == '2'}">selected</c:if>>2</option>
								    <option value="미지정" class="lang-option" <c:if test="${in.inAcname == '미지정' or empty in.inAcname}">selected</c:if>>미지정</option>
								</select>
							</td>
							<td class="category">
								<select name="inCate" class="selectbox" id="inCate${in.inNo }">
									<option value="식비" class="lang-option" <c:if test="${in.inCate == '식비'}">selected</c:if>>식비</option>
									<option value="주거/통신" class="lang-option" <c:if test="${in.inCate == '주거/통신'}">selected</c:if>>주거/통신</option>
									<option value="생활용품" class="lang-option" <c:if test="${in.inCate == '생활용품'}">selected</c:if>>생활용품</option>
									<option value="의복/미용" class="lang-option" <c:if test="${in.inCate == '의복/미용'}">selected</c:if>>의복/미용</option>
									<option value="건강/문화" class="lang-option" <c:if test="${in.inCate == '건강/문화'}">selected</c:if>>건강/문화</option>
									<option value="교육/육아" class="lang-option" <c:if test="${in.inCate == '교육/육아'}">selected</c:if>>교육/육아</option>
									<option value="교통/차량" class="lang-option" <c:if test="${in.inCate == '교통/차량'}">selected</c:if>>교통/차량</option>
									<option value="경조사/회비" class="lang-option" <c:if test="${in.inCate == '경조사/회비'}">selected</c:if>>경조사/회비</option>
									<option value="세금/이자" class="lang-option" <c:if test="${in.inCate == '세금/이자'}">selected</c:if>>세금/이자</option>
									<option value="용돈/기타" class="lang-option" <c:if test="${in.inCate == '용돈/기타'}">selected</c:if>>용돈/기타</option>
									<option value="미분류" class="lang-option" <c:if test="${in.inCate == '미분류' or empty in.inCate}">selected</c:if>>미분류</option>
								</select>
							</td>
							<td class="memo"><input type="text" name="inMemo" value="${in.inMemo }"></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
	</div>
	<div id="footer">
 		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</div>
	
	<!--  
    <div class="fixed">
	<button id="delete-selected-rows-btn">선택 항목 삭제</button>

	<table id="income-total-table">
		<tfoot>
			<tr>
				<td>수입 합계: </td>
				<td id="income-total">0</td>
			</tr>
		</tfoot>
	</table>
    </div>
    -->
	<script>
	
	//전체선택 체크박스 	
	function selectAll(selectAll)  {
		const checkboxes 
		   = document.querySelectorAll('input[type="checkbox"]');
		
		checkboxes.forEach((checkbox) => {
		  checkbox.checked = selectAll.checked
		});
	}
	
/* // 수입 합계 계산 함수
function calculateIncomeTotal() {
  let incomeTotal = 0;
  let incomeCells = document.querySelectorAll("#income-table tbody td:nth-child(3)");
  for (let i = 0; i < incomeCells.length; i++) {
    incomeTotal += parseInt(incomeCells[i].querySelector("input").value);
  }
  document.getElementById("income-total").textContent = incomeTotal;
}

// 수입 입력 시 합계 계산
let incomeTable = document.getElementById("income-table");
incomeTable.addEventListener("input", function(event) {
  let target = event.target;
  if (target.tagName.toLowerCase() === "input" && target.type === "number") {
    calculateIncomeTotal();
  }
}); */

/* incomeTable.addEventListener("keydown", function(event) {
  let target = event.target;
  if (target.tagName.toLowerCase() === "input" && target.type === "number" && event.keyCode === 13) {
    event.preventDefault();
    target.blur();
    let newRow = document.createElement("tr");
    newRow.innerHTML = `
    	<td class="checkbox"><input type="checkbox" class="checkSelect" value="${in.inNo }"><input type="hidden" value="${in.inNo }" class="in"></td>
		<td class="date"><input type="date" name="inDate" value="${in.inDate }"></td>
		<td class="amount">
			<input type="number" min="0" max="999999999" name="inAmount" value="${in.inAmount }" id="inAmount_${in.inNo }">
		</td>
		<td class="acname">
			<select name="inAcname" class="selectbox" value="${in.inAcname }">
			    <option value="1" class="lang-option" <c:if test="${in.inAcname == '1'}">selected</c:if>>1</option>
			    <option value="2" class="lang-option" <c:if test="${in.inAcname == '2'}">selected</c:if>>2</option>
			    <option value="미지정" class="lang-option" <c:if test="${in.inAcname == '미지정' or empty in.inAcname}">selected</c:if>>미지정</option>
			</select>
		</td>
		<td class="category">
			<select name="inCate" class="selectbox" id="inCate_${in.inNo }">
				<option value="식비" class="lang-option" <c:if test="${in.inCate == '식비'}">selected</c:if>>식비</option>
				<option value="주거/통신" class="lang-option" <c:if test="${in.inCate == '주거/통신'}">selected</c:if>>주거/통신</option>
				<option value="생활용품" class="lang-option" <c:if test="${in.inCate == '생활용품'}">selected</c:if>>생활용품</option>
				<option value="의복/미용" class="lang-option" <c:if test="${in.inCate == '의복/미용'}">selected</c:if>>의복/미용</option>
				<option value="건강/문화" class="lang-option" <c:if test="${in.inCate == '건강/문화'}">selected</c:if>>건강/문화</option>
				<option value="교육/육아" class="lang-option" <c:if test="${in.inCate == '교육/육아'}">selected</c:if>>교육/육아</option>
				<option value="교통/차량" class="lang-option" <c:if test="${in.inCate == '교통/차량'}">selected</c:if>>교통/차량</option>
				<option value="경조사/회비" class="lang-option" <c:if test="${in.inCate == '경조사/회비'}">selected</c:if>>경조사/회비</option>
				<option value="세금/이자" class="lang-option" <c:if test="${in.inCate == '세금/이자'}">selected</c:if>>세금/이자</option>
				<option value="용돈/기타" class="lang-option" <c:if test="${in.inCate == '용돈/기타'}">selected</c:if>>용돈/기타</option>
				<option value="미분류" class="lang-option" <c:if test="${in.inCate == '미분류' or empty in.inCate}">selected</c:if>>미분류</option>
			</select>
		</td>
		<td class="memo"><input type="text" name="inMemo" value="${in.inMemo }"></td>
    `;
    let lastRow = incomeTable.rows[incomeTable.rows.length - 1];
    incomeTable.querySelector("tbody").insertBefore(newRow, lastRow.nextSibling);
    newRow.querySelector("input[type=number]").focus();

    // 새로운 행에 이벤트 리스너 추가
    let newInputs = newRow.querySelectorAll("input");
    for (let i = 0; i < newInputs.length; i++) {
      newInputs[i].addEventListener("input", calculateIncomeTotal);
      newInputs[i].addEventListener("keydown", function(event) {
        if (event.keyCode === 13) {
          event.preventDefault();
          event.target.blur();
          let lastRow = incomeTable.rows[incomeTable.rows.length - 1];
          let lastInputs = lastRow.querySelectorAll("input");
          for (let j = 0; j < lastInputs.length; j++) {
            lastInputs[j].addEventListener("input", calculateIncomeTotal);
            lastInputs[j].addEventListener("keydown", function(event) {
              if (event.keyCode === 13) {
                event.preventDefault();
                event.target.blur();
                let newRow = document.createElement("tr");
                newRow.innerHTML = `
                	<td class="checkbox"><input type="checkbox" class="checkSelect" value="${in.inNo }"><input type="hidden" value="${in.inNo }" class="in"></td>
					<td class="date"><input type="date" name="inDate" value="${in.inDate }"></td>
	        		<td class="amount">
						<input type="number" min="0" max="999999999" name="inAmount" value="${in.inAmount }" id="inAmount_${in.inNo }">
					</td>
					<td class="acname">
						<select name="inAcname" class="selectbox" value="${in.inAcname }">
						    <option value="1" class="lang-option" <c:if test="${in.inAcname == '1'}">selected</c:if>>1</option>
						    <option value="2" class="lang-option" <c:if test="${in.inAcname == '2'}">selected</c:if>>2</option>
						    <option value="미지정" class="lang-option" <c:if test="${in.inAcname == '미지정' or empty in.inAcname}">selected</c:if>>미지정</option>
						</select>
					</td>
					<td class="category">
						<select name="inCate" class="selectbox" id="inCate_${in.inNo }">
							<option value="식비" class="lang-option" <c:if test="${in.inCate == '식비'}">selected</c:if>>식비</option>
							<option value="주거/통신" class="lang-option" <c:if test="${in.inCate == '주거/통신'}">selected</c:if>>주거/통신</option>
							<option value="생활용품" class="lang-option" <c:if test="${in.inCate == '생활용품'}">selected</c:if>>생활용품</option>
							<option value="의복/미용" class="lang-option" <c:if test="${in.inCate == '의복/미용'}">selected</c:if>>의복/미용</option>
							<option value="건강/문화" class="lang-option" <c:if test="${in.inCate == '건강/문화'}">selected</c:if>>건강/문화</option>
							<option value="교육/육아" class="lang-option" <c:if test="${in.inCate == '교육/육아'}">selected</c:if>>교육/육아</option>
							<option value="교통/차량" class="lang-option" <c:if test="${in.inCate == '교통/차량'}">selected</c:if>>교통/차량</option>
							<option value="경조사/회비" class="lang-option" <c:if test="${in.inCate == '경조사/회비'}">selected</c:if>>경조사/회비</option>
							<option value="세금/이자" class="lang-option" <c:if test="${in.inCate == '세금/이자'}">selected</c:if>>세금/이자</option>
							<option value="용돈/기타" class="lang-option" <c:if test="${in.inCate == '용돈/기타'}">selected</c:if>>용돈/기타</option>
							<option value="미분류" class="lang-option" <c:if test="${in.inCate == '미분류' or empty in.inCate}">selected</c:if>>미분류</option>
						</select>
					</td>
					<td class="memo"><input type="text" name="inMemo" value="${in.inMemo }"></td>
                `;
                incomeTable.querySelector("tbody").insertBefore(newRow, lastRow.nextSibling);
                newRow.querySelector("input[type=date]").focus();
                let newInputs = newRow.querySelectorAll("input");
                for (let k = 0; k < newInputs.length; k++) {
                  newInputs[k].addEventListener("input", calculateIncomeTotal);
                  newInputs[k].addEventListener("keydown", function(event) {
                    if (event.keyCode === 13) {
                      event.preventDefault();
                      event.target.blur();
                    }
                  });
                }
              }
            });
          }
        }
      });
    }
  }
}); */



//입금통장 팝업창 열기
function account() {
    const addAccountBtn = document.querySelector('.account');
	const url = 'popup/myAccount';
	const windowName = 'myAccount';
	const windowFeatures = 'width=840,height=600,left=' + (screen.width / 3 - 250) + ',top=' + (screen.height / 3 - 150);
	window.open(url, windowName, windowFeatures);
}
	</script>
</body>
</html>
