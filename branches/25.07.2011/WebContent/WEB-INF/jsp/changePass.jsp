<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
#glowna {
	width: 760px;
}

#tmenu_nag1 {
		height: 29px; float: left;
	}
	#tmenu_nag1 #topl {
		background: url(img/k_topl.png); width: 7px; height: 29px; float: left; 
		}
	#tmenu_nag1 #topr {
		background: url(img/k_topr.png); width: 7px; height: 29px; float: left;
	}
	#tmenu_nag1 #topc {
		background: url(img/k_topc.png); width: 746px; height: 29px; float: left;  text-align: left ;font: bold 11px/29px Tahoma; color: #ffffff; letter-spacing: 1px;
	}



#thaslo {
	height:140px; border: 1px solid; border-color: #f8deac; background-color: #fefdec;
	}


#tmenu_button {
	float: right; height: 34px; margin-bottom: 50px;
	}
	#tmenu_button #anuluj {
	background: url(img/konto_anuluj.png); width: 120px; height: 34px; margin-top: 30px; float: right; margin-right: 30px; cursor: pointer;
	}
	#tmenu_button #anuluj:HOVER {
	background: url(img/konto_anuluj1.png); 
	}
	#tmenu_button #zapisz {
	background: url(img/konto_zapisz.png); width: 120px; height: 34px; margin-top: 30px; float: right; margin-right: 30px;  cursor: pointer; border: none;
	}
	#tmenu_button #zapisz:HOVER {
	background: url(img/konto_zapisz1.png); 
	}
#stopka {
	clear: both;
	}


/* ---------------------------------------------- MOJE ---------------------------------------------------- */



#thaslo #registartion #header {
	height: 29px; width: 760px;
}
#thaslo #registartion #header #left{
	height: 29px;  width: 10px; background: url(img/r_etl.png); float: left;
}
#thaslo #registartion #header #middle{
	height: 29px; background: url(img/r_etc.png) repeat-x;   float: left; width: 740px;
	font: bold 13px/29px Arial, sans-serif; color: white;
}
#thaslo #registartion #header #right{
	height: 29px; width: 10px; background: url(img/r_etr.png); float: left;
}
#thaslo #registartion #fields {
	background-color: #fefaed;
}
#thaslo #field_left{
	background: url(img/r_boxl.png); height: 25px; width: 5px; float: left; margin-top: 15px;
}
#thaslo #field_middle {
	background: url(img/r_boxc.png) repeat-x; height: 25px; width: 200px; float: left; margin-top: 15px;
}
#thaslo #field_right {
	background: url(img/r_boxr.png); height: 25px; width: 5px; float: left; margin-top: 15px;
}
#thaslo #field_error_left{
	background: url(img/r_boxl1.png); height: 25px; width: 5px; float: left; margin-top: 15px;
}
#thaslo #field_error_middle {
	background: url(img/r_boxc1.png) repeat-x; height: 25px; width: 200px; float: left; margin-top: 15px;
}
#thaslo #field_error_right {
	background: url(img/r_boxr1.png); height: 25px; width: 5px; float: left; margin-top: 15px;
}
#thaslo #formLabel{
	width: 100px; font: bold 11px/25px Tahoma, sans-serif; color: #16117c; margin-left: 10px; height: 25px; margin-top: 15px; float: left;
}
#thaslo #formRow{
	
}
#thaslo #registartion #fieldsBorder {
 	border-bottom: 2px solid #f8deac; border-left: 2px solid #f8deac; border-right: 2px solid #f8deac;
/* 	background-color: #fefaed; */
	background-color: #fefdec;
	
	height: 230px;
}
#thaslo #required{
	background: url(img/r_info.png); width: 16px; height: 17px; margin-top: 18px; margin-left: 5px; float:left;
}
#thaslo #required_error {
	background: url(img/r_info1.png); width: 16px; height: 17px; margin-top: 18px; margin-left: 5px;  float:left;
}
#thaslo #register_textfield{
	margin-top: 1px; border: none; height: 22px; width: 200px; background-color: transparent;
}
#thaslo #register_textfield_nip{
	margin-top: 1px; border: none; height: 20px; width: 200px;
}

#thaslo #register_button{
	background: url(img/r_button1.png); height: 34px; width: 120px; margin-left: 320px; margin-top: 20px; border: none;
}
#thaslo #register_button:hover{
	background: url(img/r_button2.png);
}
#thaslo #statute{
	float: left; width: 720px; margin-left: 8px; text-align: justify; font: bold 13px/20px Tahoma, sans-serif; color: #16117c;
}
#thaslo #statute_border{
	margin-top: 10px;
}


</style>



<div id="tmenu_nag1">
	<div id="topl"></div>
	<div id="topc">Zmiana hasła</div>
	<div id="topr"></div></div>
<div id="stopka"></div>


<div id="thaslo">
	<s:form theme="simple" action="ChangePassAction">
		
			<div id="formLabel">Stare hasło</div>
			<s:if test='getFieldErrors().containsKey("oldPassword")'>
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle"><s:textfield name="oldPassword" id="register_textfield"/></div><div id="field_error_right"></div></div><div id="required_error"></div><s:if test="%{#request.messageLogin != null}"><div style="float:left; margin-left:20px; color:red; font:bold 12px/25px Arial, sans-serif;"><s:property value="messageLogin"/></div></s:if>
			</s:if>
			<s:else>
				<div id="field"><div id="field_left"></div><div id="field_middle"><s:textfield name="oldPassword" id="register_textfield"/></div><div id="field_right"></div></div><div id="required"></div>
			</s:else>
	
		<div style="clear:both;"></div>
		
			<div id="formLabel">Hasło</div>
			<s:if test='getFieldErrors().containsKey("password")'>
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle"><s:password name="password" id="register_textfield"/></div><div id="field_error_right"></div></div><div id="required_error"></div><s:if test="%{#request.messagePassword != null}"><div style="float:left; margin-left:20px;  color:red; font:bold 12px/25px Arial, sans-serif;"><s:property value="messagePassword"/></div></s:if>
			</s:if>
			<s:else>
				<div id="field"><div id="field_left"></div><div id="field_middle"><s:password name="password" id="register_textfield"/></div><div id="field_right"></div></div><div id="required"></div>
			</s:else>
		
		<div style="clear:both;"></div>
		
			<div id="formLabel">Potwierdź hasło</div>
			<s:if test='getFieldErrors().containsKey("confirmPassword")'>
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle"><s:password name="confirmPassword" id="register_textfield"/></div><div id="field_error_right"></div></div><div id="required_error"></div>
			</s:if>
			<s:else>
				<div id="field"><div id="field_left"></div><div id="field_middle"><s:password name="confirmPassword" id="register_textfield"/></div><div id="field_right"></div></div><div id="required"></div>
			</s:else>
		
<!-- 	<div id="sekleft">Stare hasło</div> -->
<!-- 	<div id="grafl"></div> -->
<!-- 	<div id="grafc"></div> -->
<!-- 	<div id="grafr"></div> -->
<!-- 	<div id="stopka"></div> -->
	
<!-- 	<div id="sekleft">Nowe hasło</div> -->
<!-- 	<div id="grafl"></div> -->
<!-- 	<div id="grafc"></div> -->
<!-- 	<div id="grafr"></div> -->
<!-- 	<div id="stopka"></div> -->
		
<!-- 	<div id="sekleft">Potwierdź hasło</div> -->
<!-- 	<div id="grafl"></div> -->
<!-- 	<div id="grafc"></div> -->
<!-- 	<div id="grafr"></div> -->
<!-- 	<div id="blad">* Błędne hasła</div> -->



<div id="stopka"></div>
<div id="tmenu_button">
	<s:submit id="zapisz" value="" />
<!-- 	<div id="anuluj"></div> -->
</div>
</s:form>
</div>
