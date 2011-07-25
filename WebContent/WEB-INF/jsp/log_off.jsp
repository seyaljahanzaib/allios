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
	font: bold 11px Tahoma; color: #ffffff; margin-left: 12px; float: left; cursor: pointer; border: none; background-color: transparent; margin-top: 7px;
 	}
 	#menubar1 #tekst3 {
	font: 11px/30px Tahoma; color: #ffffff; margin-left: 12px; float: left; cursor: pointer;
 	}
</style>

<s:if test="%{#session.customer == null}">
	<s:form action="LoginAction" theme="simple">
		<div id="menubar1">
			<div id="tlo1">
				<div id="tekst1">Zapomniałeś hasła?</div>
					<a id="tekst2" href="registerLink.action">Zarejestruj się</a>
				</div>
			<div id="logarea"><s:textfield name="login_tb" cssStyle="border:none; margin-left: 4px; margin-top: 7px; height: 14px; width: 96px;"/></div>
			<div id="tlo2"></div>
			<div id="logarea"><s:password name="password_tb" cssStyle="border:none; margin-left: 4px; margin-top: 7px; height: 14px; width: 96px;"/></div>
			<div id="tlo3">
				<s:submit id="tekst2" value="Zaloguj"/>
			</div>
		</div>
	</s:form>
</s:if>
<s:else>
	<s:form action="LogOutAction" theme="simple">
		<div id="menubar1">
			<div id="tlo1"></div>
			<div id="logarea"></div>
			<div id="tlo2"></div>
			<div id="logarea"></div>
			<div id="tlo3">
				<s:submit id="tekst2" value="Wyloguj"/>
			</div>
		</div>
	</s:form>
</s:else>










<%-- <s:if test="%{#session.customer != null}"> --%>
<!-- 	<div id="loging"> -->
<%-- 		<s:form action="LogOutAction" theme="simple"> --%>
<%-- 			<s:submit value="Wyloguj" --%>
<!-- 				cssStyle="background: none; float: right; margin-right: 10px; margin-top: 2px;" /> -->
<%-- 			<s:div --%>
<!-- 				cssStyle="float: right; margin-top: 2px; margin-right: 10px; font: bold 13px/25px Arial, sans-serif; color: white;"> -->
<%-- 				<s:label value="Witaj " name="password_tb" cssStyle="height: 15px;" /> --%>
<%-- 				<s:property value="#session.customer.login" /> --%>
<%-- 			</s:div> --%>
<%-- 		</s:form> --%>
<!-- 	</div> -->
<%-- </s:if> --%>
<%-- <s:else> --%>
<!-- 	<div id="loging"> -->
<%-- 		<s:form action="LoginAction" theme="simple"> --%>
<%-- 			<s:submit value="Zaloguj" --%>
<!-- 				cssStyle="background: none; float: right; margin-right: 10px; margin-top: 2px;" /> -->
<%-- 			<s:password value="login" name="password_tb" --%>
<!-- 				cssStyle="height: 15px; float: right; margin-top: 2px; margin-right: 10px;" /> -->
<%-- 			<s:textfield name="login_tb" --%>
<!-- 				cssStyle="height: 15px; float: right; margin-top: 2px; margin-right: 10px;" /> -->
<%-- 		</s:form> --%>
<!-- 		<a id="login_bt" href="">Zapomialem hasla</a> -->
<!-- 		<a id="login_bt" href="registerLink.action">Zarejestruj</a> -->
<!-- 	</div> -->
<%-- </s:else> --%>
