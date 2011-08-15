<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
#glowna {
	width: 760px;
}
#main_message {
	background-color: #ccccff; width: 1150px; height: 50px; border-top: 1px dotted #9999cc; border-bottom: 1px dotted #9999cc; font: bold 12px/50px Tahoma; color: black; text-align: center; 
	}
#main_message_accepted {
	background-color: #66ff66; width: 1150px; height: 50px; border-top: 1px dotted #0b9900; border-bottom: 1px dotted #9999cc; font: bold 12px/50px Tahoma; color: black; text-align: center; 
	}
#main_message_denied {
	background-color: #fc1e1e; width: 1150px; height: 50px; border-top: 1px dotted #990000; border-bottom: 1px dotted #9999cc; font: bold 12px/50px Tahoma; color: black; text-align: center; 
	}



#stopka {
clear: both;
} 		
</style>
<div id="stopka"></div>
<div id="main_message"><s:property value="#request.message"/></div>
<div id="stopka"></div>

<div id="stopka"></div>
<div id="main_message_accepted"><s:property value="#request.message"/></div>
<div id="stopka"></div>

<div id="stopka"></div>
<div id="main_message_denied"><s:property value="#request.message"/></div>
<div id="stopka"></div>