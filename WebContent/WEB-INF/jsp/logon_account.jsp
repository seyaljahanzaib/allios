<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
#glowna {
	width: 760px;
}

#log {
	margin-left: 120px; margin-top: 80px;
	}	
	#log #sekleft {
		background: url(img/log_l.png); width: 11px; height: 252px; float: left;
		}
	#log #sekright {
		background: url(img/log_r.png); width: 11px; height: 252px; float: left;
		}
	#log #sekcenter {
		background: url(img/log_c.png); width: 500px; height: 252px; float: left;
		}
	#log #tekstlog {
		text-align: left; font: bold 13px Tahoma; color: #ffffff; margin-top: 8px; letter-spacing: 1pt;
		}
	#log #tekst_u {
		width: 90px; height: 28px; text-align: right; font: bold 12px/28px Tahoma; color: #160e86; margin-top: 40px; margin-left: 90px; float: left;
		}
	#log #tekst_h {
		width: 90px; height: 28px; text-align: right; font: bold 12px/28px Tahoma; color: #160e86; margin-top: 20px; margin-left: 90px; float: left;
		}
	#log #log_areal {
		background: url(img/logareal.png); width: 6px; height: 28px; float: left;  margin-top: 40px; margin-left: 10px;
		}
	#log #log_areac {
		background: url(img/logareac.png); width: 220px; height: 28px; float: left;  margin-top: 40px;
		}
	#log #log_arear {
		background: url(img/logarear.png); width: 6px; height: 28px; float: left;  margin-top: 40px;
		}
	#log #log1_areal {
		background: url(img/logareal.png); width: 6px; height: 28px; float: left;  margin-top: 20px; margin-left: 10px;
		}
	#log #log1_areac {
		background: url(img/logareac.png); width: 220px; height: 28px; float: left;  margin-top: 20px;
		}
	#log #log1_arear {
		background: url(img/logarear.png); width: 6px; height: 28px; float: left;  margin-top: 20px;
		}
	#log #b_zaloguj {
		background: url(img/logbutl.png); width: 102px; height: 30px; float: left;  margin-top: 15px; margin-left: 320px; cursor: pointer; border: none;
		}
	#log #b_zaloguj:HOVER {
		background: url(img/logbutl1.png); 
		}
	#log #tekst_r {
		width: 350px; height: 30px; text-align: right; font: bold 12px/30px Tahoma; color: #ffffff; margin-top: 22px; float: left; letter-spacing: 1px;
		}
	#log #b_rejestr {
		background: url(img/logbutz.png); width: 126px; height: 30px; float: left;  margin-top: 24px; margin-left: 10px; cursor: pointer; border: none;
		}
	#log #b_rejestr:HOVER {
		background: url(img/logbutz1.png); width: 126px; height: 30px; background-repeat: no-repeat; background-position: top;
		}

#logon_textfield{
	border: none; width: 220px; height: 22px; margin-top: 2px;
}

#stopka {
	clear: both;
	}

</style>

<div id="log">
	<div id="sekleft"></div>
	<div id="sekcenter">
		<s:form action="LoginAction" theme="simple">
			<div id="tekstlog">Logowanie</div>
			<div id="tekst_u">Użytkownik:</div>
			<div id="log_areal"></div>
			<div id="log_areac"><s:textfield id="logon_textfield" name="login_tb" cssStyle="border:0px; margin-top:4px; height:19px;"/></div>
			<div id="log_arear"></div>
			
			<div id="stopka"></div>
			<div id="tekst_h">Hasło:</div>
			<div id="log1_areal"></div>
			<div id="log1_areac"><s:password id="logon_textfield" value="login" name="password_tb" cssStyle="border:0px; margin-top:4px; height:19px;"/></div>
			<div id="log1_arear"></div>
			
			<div id="stopka"></div>
			<s:submit id="b_zaloguj" name="inaccount" value=""/>
		</s:form>
		
		<s:form action="registerLink.action" theme="simple">	
			<div id="tekst_r">Nie zarejestrowałeś się jeszcze w naszym sklepie?</div>
			<s:submit id="b_rejestr" value=""/>
		</s:form>
		
		</div>
	<div id="sekright"></div>
</div>