<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>


#menubar1 {
	height: 30px; 
	} 
	#menubar1 #tlo1 {
	background: url(img/menubar1.png); height: 30px; width: 670px; float: left;
	}
	#menubar1 #tlo2 {
	background: url(img/menubar1.png); height: 30px; width: 10px; float: left;
	}
	#menubar1 #tlo3 {
	background: url(img/menubar1.png); height: 30px; width: 112px; float: left;
	}
	#menubar1 #logarea {
	background: url(img/menuuser.png); height: 30px; width: 104px; float: left;
	}
	#menubar1 #tekst1 {
	font: 11px/30px Tahoma; color: #ffffff; margin-left: 460px; float: left; cursor: pointer;
 	}
 	#menubar1 #tekst2 {
	font: bold 11px Tahoma; color: #ffffff; margin-left: 12px; float: left; cursor: pointer; border: none; background-color: transparent; margin-top: 8px;
 	}
 	#menubar1 #tekst3 {
	font: 11px/30px Tahoma; color: #ffffff; margin-left: 12px; float: left; cursor: pointer;
 	}
 	
 #menubar2 {
	height: 30px; 
	} 
	#menubar2 #tlo1 {
	background: url(img/menubar1.png); height: 30px; width: 1000px; float: left;
	}
	#menubar2 #tekst1 {
	font: 11px/30px Tahoma; color: #ffffff; margin-left: 680px; float: left;
 	}
 	#menubar2 #tekst2 {
	font: bold 11px Tahoma; color: #ffffff; margin-left: 20px; float: left; cursor: pointer; border: none; background-color: transparent; margin-top: 8px;
 	}
 	
</style>


<s:if test="%{#session.customer == null}">
	
		<div id="menubar1">
			<s:form action="LoginAction" theme="simple">
			<div id="tlo1">
				<div id="tekst1">Zapomniałeś hasła?</div>
					<a id="tekst2" href="registerLink.action">Zarejestruj się!</a>
				</div>
			<div id="logarea"><s:textfield name="login_tb" cssStyle="border:0px; height:14px; width:97px; margin-left:3px; margin-top:7px;"/></div>
			<div id="tlo2"></div>
			<div id="logarea"><s:password name="password_tb" cssStyle="border:0px; height:14px; width:97px; margin-left:3px; margin-top:7px; "/></div>
			<div id="tlo3">
				<s:submit id="tekst2" value="Zaloguj"/>
			</div>
			</s:form>
		</div>
</s:if>

<s:else>
		<div id="menubar2">
			<s:form action="LogOutAction" theme="simple">
				<div id="tlo1">
					<div id="tekst1">Witaj, zalogowałeś się do sklepu allios.pl</div>
				<s:submit id="tekst2" value="Wyloguj"/>
				</div>
			</s:form>
		</div>
</s:else>

