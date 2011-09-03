<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
#glowna {
	width: 760px;
}
#main_message {
	background-color: #ccccff; width: 760px; height: 50px; border-top: 1px dotted #9999cc; border-bottom: 1px dotted #9999cc; font: bold 12px/50px Tahoma; color: #160e86; text-align: center; margin-bottom: 6px; 
	}

#stopka {
clear: both;
} 		
</style>

<div id="main_message"><s:property value="#request.message"/></div>

