<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>

#logadmin {
	margin-top: 200px; margin-left: 30%;
	}	
	#logadmin #sekleft {
		background: url(../img/pa_logonl.png); width: 12px; height: 252px; float: left;
		}
	#logadmin #sekright {
		background: url(../img/pa_logonr.png); width: 12px; height: 252px; float: left;
		}
	#logadmin #sekcenter {
		background: url(../img/pa_logonc.png); width: 478px; height: 252px; float: left;
		}
	#logadmin #tekstlog {
		text-align: left; font: bold 13px/40px Tahoma; color: #ffffff; letter-spacing: 1pt;
		}
	#logadmin #tekst_u {
		width: 90px; height: 28px; text-align: right; font: bold 12px/28px Tahoma; color: #292084; margin-top: 40px; margin-left: 60px; float: left;
		}
	#logadmin #tekst_h {
		width: 90px; height: 28px; text-align: right; font: bold 12px/28px Tahoma; color: #292084; margin-top: 20px; margin-left: 60px; float: left;
		}
	#logadmin #log_areal {
		background: url(../img/pa_areal.png); width: 6px; height: 28px; float: left;  margin-top: 40px; margin-left: 10px;
		}
	#logadmin #log_areac {
		background: url(../img/pa_areac.png); width: 220px; height: 28px; float: left;  margin-top: 40px;
		}
	#logadmin #log_arear {
		background: url(../img/pa_arear.png); width: 6px; height: 28px; float: left;  margin-top: 40px;
		}
	#logadmin #log1_areal {
		background: url(../img/pa_areal.png); width: 6px; height: 28px; float: left;  margin-top: 20px; margin-left: 10px;
		}
	#logadmin #log1_areac {
		background: url(../img/pa_areac.png); width: 220px; height: 28px; float: left;  margin-top: 20px;
		}
	#logadmin #log1_arear {
		background: url(../img/pa_arear.png); width: 6px; height: 28px; float: left;  margin-top: 20px;
		}
	#logadmin #b_zaloguj {
		background: url(../img/pa_buttonlog.png); width: 102px; height: 30px; margin-top: 15px; margin-left: 290px; border: none; cursor: pointer; float: left;
		}
	#logadmin #b_zaloguj:HOVER {
		background: url(../img/pa_buttonlog1.png); width: 102px; height: 30px; margin-top: 15px; margin-left: 290px; border: none; float: left;
		}
	
	#logadmin #podpis {
		text-align: left; font: bold 12px Tahoma; color: #292084; margin-top: 26px; margin-left: 2px; float: left;
		}
		
#stopka {
	clear: both;
	}

</style>

<div id="logadmin">
	<div id="sekleft"></div>
		<div id="sekcenter">
			<s:form action="LoginAdminAction" theme="simple">
			<div id="tekstlog">Logowanie</div>
			<div id="tekst_u">Użytkownik:</div>
			<div id="log_areal"></div>
			<div id="log_areac"><s:textfield name="login" cssStyle="width:220px; height:22px; margin-top:3px; border:0px;"/></div>
			<div id="log_arear"></div>
			
			<div id="stopka"></div>
			<div id="tekst_h">Hasło:</div>
			<div id="log1_areal"></div>
			<div id="log1_areac"><s:textfield name="password" cssStyle="width:220px; height:22px; margin-top:3px; border:0px;"/></div>
			<div id="log1_arear"></div>
			
			
			<s:submit id="b_zaloguj" value=""/>
			<div id="stopka"></div>
			
			<div id="podpis">www.allios.pl</div>
			</s:form>
		</div>
	<div id="sekright"></div>
</div>