<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>ALLIOS</title>
	<link rel="SHORTCUT ICON" href="img/icon/favicon.ico"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title><tiles:insertAttribute name="title" ignore="true" /></title>
	<link href="css.css" rel="stylesheet" type="text/css">
	<script src="jquery-1.6.2.js" type="text/javascript"></script>
	<script src='jquery.maskedinput-1.3.js' type='text/javascript'></script>
	<script type='text/javascript'>
	jQuery(function($){
		   $("#register_textfield_nip").mask("999-999-99-99");
		   $("#register_textfield_zipCode").mask("99-999");
		   $("#data_dostawy").mask("99-99-9999");
		});
	</script>
</head>
	<body>
		<div style="margin:0px auto; padding:0px; text-align:left; width:1000px">
			<tiles:insertAttribute name="logOFF"/>
			<tiles:insertAttribute name="header" />
			<div style="margin-top: 10px;">
				<div style="float: left; width: 240px;"><tiles:insertAttribute name="menu"/></div>
				<div style="float: left; width: 760px; margin-top: 10px;">
				<tiles:insertAttribute name="infoMessage"/>
				<tiles:insertAttribute name="body"/>
				</div>
			</div>
			<tiles:insertAttribute name="footer" />
		</div>
	</body>
</html>