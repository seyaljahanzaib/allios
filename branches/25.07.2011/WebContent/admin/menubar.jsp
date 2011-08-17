<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>

#adminbar {
	width: 1150px; height: 56px; margin-top: 10px; margin-bottom:10px; float: left;
}
	
	#adminbar #panelgraf {
		background: url(../img/pa_menubc.png); width: 1150px; height: 56px; float: left;
		}
	#adminbar #opis1 {
		width: 200px; margin-left: 6px; font: bold 14px/45px Tahoma; color: #43319c; text-align: left; letter-spacing: 1px; float: left;
		}
	#adminbar #opis2 {
		margin-left: 560px; margin-top:3px; font: bold 10px Tahoma; color: #43319c; text-align: left; float: left;
		}
	#adminbar #opis3 {
		margin-left: 560px; margin-top:6px; font: bold 10px Tahoma; color: #43319c; text-align: left; float: left;
		}
	#adminbar #menu {
		background: url(../img/pa_buttonmenu.png); width: 55px; height: 16px; float: left; margin-left: 4px; margin-top: 3px;
		}
	#adminbar #menu:HOVER {
		background: url(../img/pa_buttonmenu1.png); width: 55px; height: 16px;  float: left;
		}
	#adminbar #wylog {
		background: url(../img/pa_buttonwylog.png); width: 80px; height: 16px;  float: left; margin-left: 6px; margin-top: 3px;
		}
	#adminbar #wylog:HOVER {
		background: url(../img/pa_buttonwylog1.png); width: 80px; height: 16px;  float: left;
		}

#stopka{
clear: both;
}

</style>

<div id="adminbar">
	<div id="panelgraf">
		<div id="opis1">Panel administracyjny</div>
		<div id="opis2">Witaj, Paweł Kłosiński, ostatnie logowanie: 27-07-2011, godz: 15.00</div>
		<div id="opis3">Dziś mamy: piątek 27-06-2011 godz. 15.02</div>
		<div id="menu"></div>
		<div id="wylog"></div>
	</div>
</div>
<div id="stopka"></div>