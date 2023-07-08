<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap'); /* 폰트 URL */
Body {font-family: 'Nanum Gothic', sans-serif;}
#header {height: 45px; margin: 10px; padding: 10px; text-align: center;}
#content {min-height: 730px; margin-left: 11%; padding: 10px 10px 100px 10px; text-align: center; width: 89%;}
</style>
<title>acnt</title>
</head>
<body>
	<div id="header">
		<tiles:insertAttribute name="header" />
	</div>
	<div id="content">
		<tiles:insertAttribute name="content" />
	</div>
</body>
</html>