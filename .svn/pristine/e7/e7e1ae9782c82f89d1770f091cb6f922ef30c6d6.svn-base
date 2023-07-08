<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.month input{font-size: 20px; border: 1px solid gray;}

li {list-style: none;}

nav {
	background-color: #41444E; 
	width: 200px; 
	height: 100%;
	position: fixed; 
	top: 0; left: 0;
	overflow-x: hidden;
	padding-top: 20px;
    padding-left: 15px;
    line-height: 17px;
    z-index: 2;
}
nav a {
	display: block;
	color: white;
	height: 100px;
	padding: 5px;
	text-decoration: none;
    font-size: 13px;
    font-weight: 900;
    margin-left: -20px;
    margin-top: 30px;
    margin-bottom: -30px;
}
/*nav a:hover {background-color: #858898; width:100%;}*/
/*
nav h3, span {
	font-size: 13px;
	font-weight: 700;
	color: white;
}
*/
nav ul {
    padding-inline-start: 0;
    background-color: #575A67;
    margin-right: 15px;
}
nav ul li:first-child {
    border-bottom: 1px solid #41444e;
}

.ListMenu {
    background-color: #575A67;
}
.ListMenu ul li{
	margin-left: 30px;
    text-align: left;
}
.ListMenu ul li:first-child{
    border-bottom: 0;
}

.AssetSum ul li:first-child{
    border-bottom: 0;
}
.AssetSum ul li span{
    font-size: 11px;
    opacity: 0.7;
}

.FO ul li:first-child{
    border-bottom: 0;
}
.FO ul li span{
    font-size: 11px;
    opacity: 0.7;
}

.incomeSum ul li:first-child{
    border-bottom: 0;
}
.incomeSum ul li span{
    font-size: 11px;
    opacity: 0.7;
}

.expenseSum  ul li:first-child{
    border-bottom: 0;
}
.expenseSum ul li span{
    font-size: 11px;
    opacity: 0.7;
}

ul li div {
    padding: 2px;
    padding-left: 0;
    margin-left: 0;
}

.arrowButtonAsset:hover {
    cursor: pointer;
}
.arrowButtonAccount:hover {
    cursor: pointer;
}

.memberMenu button {
	-webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    background-color: white;
    border: 1px solid #c3c4c7;
    font-size: 15px;
    font-weight: 500;
}

.MonthlyAccount ul li {
	margin-left: 30px;
    text-align: left;
}
.MonthlyAsset ul li{
	margin-left: 30px;
    text-align: left;
}

.ACNT a {font-size: 50px;}

/* ========================여기 아래부터 추가한 스타일======================== */

#contentBox {
	text-align: left;
	margin-left: 0;
	padding: 50px 0px;
}
#contentBox button {all:unset; background-color: rgb(87,90,103); width: 90%;}
#textBox {
	margin-right: 15px;
	padding-bottom: 20px;
	color: white;
	font-weight: 500;
}
#btnBox {
	margin-right: 15px;
	padding-bottom: 40px;
}
#title {
	font-size: 22px;
	font-weight: 700;
	color: white;
}
#image {
	margin-bottom: -4px;
}
#zeroBox {
	margin-right: 15px;
    position: absolute;
    bottom: 50px;
    left: 75px;
}
#zeroBtn {
	border: none;
	background-color: transparent;
	color: #646464;
}


</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<%-- <link rel=stylesheet href="<c:url value="/resources/css/header.css"/>" type="text/css"> --%>
<title>Left Navigation Bar</title>
</head>
<body>
	 
	<nav>
     	<div style="text-align: center" class="ACNT">
			<a href="${pageContext.request.contextPath }/">ACNT</a>
        </div>
        
        <div id="textBox">
        	<c:if test="${loginMember.userstatus == null || loginMember.userstatus == 0 }">
				<span>로그인이 필요합니다.</span>
			</c:if>
			<c:if test="${loginMember.userstatus == 1 }">
				<span>[${loginMember.username }]님, 환영합니다!!</span>
			</c:if>
        </div>
        		
		<div id="btnBox">
			<c:if test="${loginMember.userstatus == null || loginMember.userstatus == 0 }">
				<button type="button" onClick="location.href='<c:url value="/login"/>';">로그인</button>&nbsp;&nbsp;&nbsp;&nbsp;
				<button type="button" onClick="location.href='<c:url value="/join"/>';">회원가입</button>
			</c:if>
			<c:if test="${loginMember.userstatus == 1 }">
				<button type="button" onClick="location.href='<c:url value="/view"/>?userid=${loginMember.userid}';">내정보</button>&nbsp;&nbsp;&nbsp;&nbsp;
				<button type="button" onClick="location.href='<c:url value="/logout"/>';">로그아웃</button>
			</c:if>
		</div>
		
        <div id="contentBox">
        	<button type="button" onclick="location.href='${pageContext.request.contextPath}/';">
			    <span id="title"><img id="image" src="https://cdn-icons-png.flaticon.com/128/858/858699.png" width="22px" height="22px">
			    	지출
			    </span>
		    </button>
		</div>
		<div id="contentBox">
			<button type="button" onclick="location.href='${pageContext.request.contextPath}/income';">
			    <span id="title"><img src="https://cdn-icons-png.flaticon.com/128/2257/2257295.png" width="22px" height="22px">
			   		수입
			    </span>
			</button>
		</div>
		<div id="contentBox">
			<button type="button" onclick="location.href='${pageContext.request.contextPath}/calendar';">
			    <span id="title"><img src="https://cdn-icons-png.flaticon.com/128/1037/1037308.png" width="22px" height="22px">
			    	달력
			    </span>
		    </button>
		</div>
		<div id="contentBox">
			<button type="button" onclick="location.href='${pageContext.request.contextPath}/budget';">
			    <span id="title"><img src="https://cdn-icons-png.flaticon.com/128/1357/1357625.png" width="22px" height="22px">
			    	예산쓰기
			    </span>
		    </button>
		</div>
		
        <div id="zeroBox">
	        <c:if test="${loginMember.userstatus == 1 }">
	        	<input id="zeroBtn" type="button" value="탈퇴하기" onClick="userZero('${member.userid}');">
	        </c:if>
	    </div>
        
        
        
        
        <%-- 
        <div class="ListMenu">
            <ul>
		        <li><a onclick="location.href='${pageContext.request.contextPath}/';"><img src="https://cdn-icons-png.flaticon.com/128/1357/1357625.png" width="16px" height="16px"> 쓰기</a></li>
		        <li><a onclick="#"></a><img src="https://cdn-icons-png.flaticon.com/128/1037/1037308.png" width="16px" height="16px"> 보고서</a></li>
		        <li><a onclick="location.href='${pageContext.request.contextPath}/budget';"><img src="https://cdn-icons-png.flaticon.com/128/2257/2257295.png" width="16px" height="16px"> 예산쓰기</a></li>
                <li><a href="#"><img src="https://cdn-icons-png.flaticon.com/128/858/858699.png" width="16px" height="16px"> 희망목표/이야기</a></li>
            </ul>
        </div>
		--%>
		<%-- 
        <div class="MonthlyAsset">
            <h3>
              <button type="button" class="arrowButtonAsset" style="border:none; background:none; padding:0;">
                <img src="https://cdn-icons-png.flaticon.com/128/8287/8287014.png" width="16px" height="16px" alt="button">
              </button>
              이달의 자산 현황
            </h3>

            <ul class="NetAsset">
                <li>
                    <div>
                        <span>= 순자산</span>
                    </div>
                </li>
                <li>
                    <div class="AssetSum">
                        <span style="color: #89d7ff;">+ 자산</span>
                        <ul>
                            <li><a href="#"><span>└ 현금잔액</span></a></li>
                            <li><a href="#"><span>└ 투자자산</span></a></li>
                            <li><a href="#"><span>└ 기타자산</span></a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="FO">
                        <span style="color: #09e76c;">- 부채</span>
                        <ul>
                            <li><a href="#"><span style="margin-right: 20px;">└ 대출</span></a></li>
                            <li><a href="#"><span>└ 기타부채</span></a></li>
                        </ul>
                    </div>
                </li>    
            </ul>
        </div>
		--%>
		<%-- 
        <div class="MonthlyAccount">
            <h3>
              <button type="button" class="arrowButtonAccount" style="border:none; background:none; padding:0;">
                <img src="https://cdn-icons-png.flaticon.com/128/8287/8287014.png" width="16px" height="16px" alt="button">
              </button>
              이달의 가계
            </h3>
            <ul>
                <li>
                    <div>
                        <span>= 수입 - 지출</span>
                    </div>
                </li>
                <li>
                    <div class="incomeSum">
                        <span style="color: #89d7ff;">+ 수입</span>
                        <ul>
                            <li><a href="#"><span>└ 이달의 수입</span></a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="expenseSum">
                        <span style="color: #09e76c;">- 지출</span>
                        <ul>
                            <li><a href="#"><span>└ 현금지출</span></a></li>
                            <li><a href="#"><span>└ 카드지출</span></a></li>
                        </ul>
                    </div>    
                </li>    
            </ul>
        </div>
	    --%>
	    
	    
	</nav>
	
	
	
	
	
	
	
	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
    $(document).ready(function() {
        // 이달의 자산 현황 버튼을 클릭했을 때
        $(".arrowButtonAsset").click(function() {
        // AssetSum의 li와 FO의 li를 토글(toggle)합니다.
        $(".AssetSum li, .FO li").toggle();
        // 이미지 변경
        var img = $(".arrowButtonAsset img");
        if (img.attr("src") === "https://cdn-icons-png.flaticon.com/128/2722/2722987.png") {
        img.attr("src", "https://cdn-icons-png.flaticon.com/128/8287/8287014.png");
        } else {
        img.attr("src", "https://cdn-icons-png.flaticon.com/128/2722/2722987.png");
        }
    });
  
     // 이달의 가계 버튼을 클릭했을 때
    $(".arrowButtonAccount").click(function() {
    // incomeSum의 li와 expenseSum의 li를 토글(toggle)합니다.
    $(".incomeSum li, .expenseSum li").toggle();
    // 이미지 변경
	    var img = $(".arrowButtonAccount img");
	    if (img.attr("src") === "https://cdn-icons-png.flaticon.com/128/2722/2722987.png") {
	      img.attr("src", "https://cdn-icons-png.flaticon.com/128/8287/8287014.png");
	    } else {
	      img.attr("src", "https://cdn-icons-png.flaticon.com/128/2722/2722987.png");
	    }
	    });
	});
    
    function userZero(userid) {
    	if (confirm("정말로 탈퇴 하시겠습니까?") ) {
    		location.href='<c:url value="/zero"/>?userid=${loginMember.userid}';

    	}
    }   
</script>


</body>
</html>