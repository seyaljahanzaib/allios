<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title><tiles:insertAttribute name="title" ignore="true" /></title>
	<link href="css.css" rel="stylesheet" type="text/css">

</head>
	<body>
		<div>

		</div>
		<div>
			<tiles:insertAttribute name="secondHeader"/>
		</div>
		<div>
			<tiles:insertAttribute name="message"/>
		</div>
		<div>
			<tiles:insertAttribute name="body"/>
		</div>
	</body>
</html>