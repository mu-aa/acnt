<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>가계부</title>
<style>
	table {
		border-spacing: 0;
	}
	#header {
		display: none;
	}
	#content {
		margin-left: 10px;
		width:95%
	}
	#footer {
		display: none;
	}
    ul {
        display: flex;
        direction: row;
    }
    li {
            list-style: none;
            padding: 10px 4px;
        }
    a {
        text-decoration: none;
        color: #555;
    }
    .account_title {
        margin: 4px;
    }
    .account_title h2 {
    	text-align: left;
        margin: 4px;
    }
    .acnt_add_btn {
        padding: 4px 7px 2px;
        border-radius: 2px;
        border: 1px solid #d9d9d9;
        background-color: #fff;
        font-size: 11px;
        line-height: 16px;
    }

    .account_table {
        margin: auto;
        font-size: 13px;
        text-align: left;
    }
    input {
        border: none;
        outline: none;
        background: none;
        box-shadow: none;
        text-shadow: none;
    }
    .account_table th {
      background-color: #efefef;
      border: 1px solid #f0f0f0;
    }
    th {
    	background-color: #f0f0f1;
    	text-align: center;
    }
	td, th {
		border: 1px solid #c3c4c7;
	}
    .popup_footer {
        display: flex;
        justify-content: space-between;
        align-items: center;
        position: fixed;
        bottom: 0;
        left: 0;
        right: 0;
        padding: 10px;
        background-color: #f2f2f2;
    }
    .popup_footer span{
        font-size: 12px;
        color: #777;
        line-height: 18px;
    }
    .popup_footer button {
        padding: 0 18px;
        border: 0;      
        height: 42px;
        box-sizing: border-box;
        border-radius: 3px;
        font-weight: 900;
        font-size: 15px;
    }
    .popup_footer button:hover {
        cursor: pointer;
    }
    .myaccount_save {
        background-color: #03c75a;
        color: #fff;
    }
    .myaccount_close {
        background-color: #fff;
        color: #222;
    }

</style>

<script type="text/javascript">
function submit() {
	$("#account_table tr").each(function(i) {
		if(i==0) return;
		
		var array=["acNo","acName","acBank","acBalance","acMemo","acCard"];
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
	        url : "${pageContext.request.contextPath}/popup/myAccount",
	        traditional: true,
	        data : obj,
	        dataType : "json",
		    success : function(result){
		    	console.log(result);
		    	location.href='${pageContext.request.contextPath}/popup/myAccount';
		    },
		    error : function(xhr){
		       console.log("AJAX_ERROR = "+xhr.status);
		       location.href='${pageContext.request.contextPath}/popup/myAccount';
		    }
		});
	});
}
</script>
    
</head>
<body>
<form method="post" id="acnt_post">
    <div class="account_title">
        <h2>통장 관리하기</h2>
		<div style="margin-left: 550px;">
	        <button type="button" class="acnt_add_btn">통장항목추가</button>
	        <button type="button" class="acnt_add_btn" onclick="remove();">통장항목삭제</button>
		</div>
    </div>
    <hr>
	<table id="account_table">
		<thead>
			<tr>
				<th>
					<input type="checkbox" value="selectall" onclick="selectAll(this)"/>
				</th>
				<th>계좌명</th>
                <th>은행명</th>
				<th>잔액</th>
				<th>메모</th>
				<th></th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${accountList}" var="ac">		
			<tr>
    			<td class="checkbox"><input type="checkbox" class="checkSelect" value="${ac.acNo }"><input type="hidden" value="${ac.acNo }" class="acnt"></td>
    			<td><input type="text" value="${ac.acName}"></td>
    			<td><input type="text" value="${ac.acBank}"></td>
    			<td><input type="number" min="0" value="${ac.acBalance}"></td>
    			<td><input type="text" value="${ac.acMemo}"></td>
    			<td><input type="hidden" value="${ac.acCard}"></td>
  			</tr>
		</c:forEach>
		<c:if test="${empty accountList or accountList == null}">
			<tr>
				<td class="checkbox"><input type="checkbox" class="checkSelect" value="${ac.acNo }"><input type="hidden" value="${ac.acNo }" class="acnt"></td>
    			<td><input type="text" value="${ac.acName}"></td>
    			<td><input type="text" value="${ac.acBank}"></td>
    			<td><input type="number" min="0" value="${ac.acBalance}"></td>
    			<td><input type="text" value="${ac.acMemo}"></td>
    			<td><input type="hidden" value="${ac.acCard}"></td>
			</tr>
		</c:if>
		</tbody>
	</table>
</form>	

    <div class="popup_footer">
        <span>통장 관리 기능으로 통장 자산 뿐 아니라 다양한 나의 자산 현황을 관리할 수 있습니다. </span>
        <form method="POST">
        	<input type="hidden" name="_csrf" value="${_csrf.token}"/>
        </form>
       	<button type="submit" class="myaccount_save" onclick="submit();">저장하기</button>
    </div>
    
    
	<script>
	//전체선택 체크박스 	
	function selectAll(selectAll)  {
		const checkboxes 
		   = document.querySelectorAll('input[type="checkbox"]');
		
		checkboxes.forEach((checkbox) => {
		  checkbox.checked = selectAll.checked
		});
	}
	
	
    const addBtn = document.querySelector('.acnt_add_btn');
    const tableBody = document.querySelector('#account_table tbody');

    addBtn.addEventListener('click', function() {
            const newRow = document.createElement('tr');

            newRow.innerHTML = `
            	<td class="checkbox"><input type="checkbox" class="checkSelect" value="${ac.acNo }"><input type="hidden" value="${ac.acNo }" class="acnt"></td>
    			<td><input type="text" value="${ac.acName}"></td>
    			<td><input type="text" value="${ac.acBank}"></td>
    			<td><input type="number" min="0" value="${ac.acBalance}"></td>
    			<td><input type="text" value="${ac.acMemo}"></td>
    			<td><input type="hidden" value="${ac.acCard}"></td>
        `   ;

            tableBody.appendChild(newRow);
        });

    
   function remove() {
	   var acNoList = new Array();
		var chkbox = $(".checkSelect");
		$(".checkSelect").each(function(i) {
		    if (chkbox[i].checked == true){
		    	acNoList[i] = chkbox[i].value;
		    }
		});
		
	     //ajax 호출
	     $.ajax({
	         type : "post",
	         url : "${pageContext.request.contextPath}/removeAccount",
	         traditional: true,
	         data : {"acNoList" : acNoList},
	         dataType : "json",
	         success : function(result){
	            	 console.log(result);
	         },
			error : function(xhr){
				console.log("AJAX_ERROR = "+xhr.status);
			}
		});
	     setTimeout(function() {
    		 location.href="${pageContext.request.contextPath}/popup/myAccount";
 	     }, 200);
   }
    </script>
</body>
</html>
