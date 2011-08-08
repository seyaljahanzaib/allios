<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>

#registration {
	width: 760px;
}

#registartion #header {
	height: 29px; width: 760px;
}
#registartion #header #left{
	height: 29px;  width: 10px; background: url(img/r_etl.png); float: left;
}
#registartion #header #middle{
	height: 29px; background: url(img/r_etc.png); float: left; width: 740px;
	font: bold 13px/29px Arial, sans-serif; color: white;
}
#registartion #header #right{
	height: 29px; width: 10px; background: url(img/r_etr.png); float: left;
}
#registartion #fields {
	background-color: #fefaed;
}
#field_left{
	background: url(img/r_boxl.png); height: 25px; width: 5px; float: left;
}
#field_middle {
	background: url(img/r_boxc.png) repeat-x; height: 25px; width: 200px; float: left;
}
#field_right {
	background: url(img/r_boxr.png); height: 25px; width: 5px; float: left;
}
#field_error_left{
	background: url(img/r_boxl1.png); height: 25px; width: 5px; float: left;
}
#field_error_middle {
	background: url(img/r_boxc1.png) repeat-x; height: 25px; width: 200px; float: left;
}
#field_error_right {
	background: url(img/r_boxr1.png); height: 25px; width: 5px; float: left;
}
#formLabel{
	width: 100px; font: bold 11px/25px Tahoma, sans-serif; color: #16117c; margin-left: 10px; height: 25px; float: left;
}
#formRow{
	margin-top: 10px; 
}
#registartion #fieldsBorder {
 	border-bottom: 2px solid #f8deac; border-left: 2px solid #f8deac; border-right: 2px solid #f8deac;
/* 	background-color: #fefaed; */
	background-color: #fefdec;
	
	height: 230px;
}
#required{
	background: url(img/r_info.png); width: 16px; height: 17px; margin-top: 4px; margin-left: 5px; float:left;
}
#required_error {
	background: url(img/r_info1.png); width: 16px; height: 17px; margin-top: 4px; margin-left: 5px;  float:left;
}
#register_textfield{
	margin-top: 1px; border: none; height: 22px; width: 200px; background-color: transparent;
}
#register_textfield_nip{
	margin-top: 1px; border: none; height: 20px; width: 200px;
}

#register_button{
	background: url(img/r_button1.png); height: 34px; width: 120px; margin-left: 320px; margin-top: 20px; border: none; margin-bottom: 50px;
}
#register_button:hover{
	background: url(img/r_button2.png);
}
#statute{
	float: left; width: 720px; margin-left: 8px; text-align: justify; font: bold 13px/20px Tahoma, sans-serif; color: #16117c;
}
#statute_border{
	margin-top: 10px;
}

#stopka{
clear: both;;
}

#tmenu_p {
	margin-top: 0px;
}

</style>

<div id="registartion">
<s:form theme="simple" action="RegisterAction" acceptcharset="UTF-8">
	<div id="header">
		<div id="left"></div>
		<div id="middle">Dane firmy</div>
		<div id="right"></div>
	</div>

	
	<div id="fieldsBorder"><div style="height: 1px;"></div>
		<div id="formRow">
			<div id="formLabel">Numer NIP</div>
			<s:if test='getFieldErrors().containsKey("nip")'>
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle"><s:textfield name="customer.nip" id="register_textfield_nip" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_error_right"></div></div><div id="required_error"></div>
			</s:if>
			<s:else>
				<div id="field"><div id="field_left"></div><div id="field_middle"><s:textfield name="customer.nip" id="register_textfield_nip" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_right"></div></div><div id="required"></div>
			</s:else>
		</div>
		<div style="clear: both;"></div>
		<div id="formRow">
			<div id="formLabel">Nazwa Firmy</div>
			<s:if test='getFieldErrors().containsKey("companyName")'>
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle"><s:textfield name="customer.companyName" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_error_right"></div></div><div id="required_error"></div>
			</s:if>
			<s:else>
				<div id="field"><div id="field_left"></div><div id="field_middle"><s:textfield name="customer.companyName" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_right"></div></div><div id="required"></div>
			</s:else>
		</div>
		<div style="clear: both;"></div>
		<div id="formRow">
			<div id="formLabel">Ulica</div>
			<s:if test='getFieldErrors().containsKey("street")'>
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle"><s:textfield name="customer.street" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_error_right"></div></div><div id="required_error"></div>
			</s:if>
			<s:else>
				<div id="field"><div id="field_left"></div><div id="field_middle"><s:textfield name="customer.street" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_right"></div></div><div id="required"></div>
			</s:else>
		
			<div id="formLabel" style="margin-left: 40px; width: 90px;">Nr. domu</div>
			<s:if test='getFieldErrors().containsKey("houseNumber")'>
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle" style="width: 50px;"><s:textfield name="customer.houseNumber" cssStyle="margin-top: 3px; border:0px; height:18px; width: 50px;"/></div><div id="field_error_right"></div></div><div id="required_error"></div>
			</s:if>
			<s:else>
				<div id="field"><div id="field_left"></div><div id="field_middle" style="width: 50px;"><s:textfield name="customer.houseNumber" cssStyle="margin-top:3px; border:0px; height:18px; width:50px; text-align:center;"/></div><div id="field_right"></div></div><div id="required"></div>
			</s:else>
			<div id="formLabel" style="margin-left: 40px; width: 105px;">Nr. mieszkania</div>
			<s:if test='getFieldErrors().containsKey("flatNumber")'>
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle" style="width: 35px;"><s:textfield name="customer.flatNumber" cssStyle="margin-top:3px; border:0px; height:18px; width:35px;"/></div><div id="field_error_right"></div></div>
			</s:if>
			<s:else>
				<div id="field"><div id="field_left"></div><div id="field_middle" style="width: 35px;"><s:textfield name="customer.flatNumber" cssStyle="margin-top:3px; border:0px; height:18px; width:35px; text-align:center;"/></div><div id="field_right"></div></div>
			</s:else>
		</div>
		<div style="clear: both;"></div>
		<div id="formRow">
			<div id="formLabel">Miejscowość</div>
			<s:if test='getFieldErrors().containsKey("city")'>
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle"><s:textfield name="customer.city" id="register_textfield"/></div><div id="field_error_right" cssStyle="border:0px; margin-top:3px; height:18px;"></div></div><div id="required_error"></div>
			</s:if>
			<s:else>
				<div id="field"><div id="field_left"></div><div id="field_middle"><s:textfield name="customer.city" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_right"></div></div><div id="required"></div>
			</s:else>
			<div id="formLabel" style="margin-left: 40px; width: 90px;">Kod pocztowy</div>
			<s:if test='getFieldErrors().containsKey("zipCode")'>
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle" style="width: 50px;"><s:textfield name="customer.zipCode" id="register_textfield_zipCode" cssStyle="margin-top:3px; border:0px; height:18px; width:50px; text-align:center;"/></div><div id="field_error_right"></div></div><div id="required_error"></div>
			</s:if>
			<s:else>
				<div id="field"><div id="field_left"></div><div id="field_middle" style="width: 50px;"><s:textfield name="customer.zipCode" id="register_textfield_zipCode" cssStyle="margin-top:3px; border:0px; height:18px; width:50px; text-align:center;"/></div><div id="field_right"></div></div><div id="required"></div>
			</s:else>
		</div>
		<div style="clear: both;"></div>
		<div id="formRow">
			<div id="formLabel">Województwo</div>
			<s:if test='getFieldErrors().containsKey("province")'>
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle"><s:textfield name="customer.province" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_error_right"></div></div><div id="required_error"></div>
			</s:if>
			<s:else>
				<div id="field"><div id="field_left"></div><div id="field_middle"><s:textfield name="customer.province" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_right"></div></div><div id="required"></div>
			</s:else>
		</div>
		<div style="clear: both;"></div>
		<div id="formRow">
			<div id="formLabel">Telefon</div>
			<s:if test='getFieldErrors().containsKey("phone")'>
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle"><s:textfield name="customer.phone" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_error_right"></div></div><div id="required_error"></div>
			</s:if>
			<s:else>
				<div id="field"><div id="field_left"></div><div id="field_middle"><s:textfield name="customer.phone" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_right"></div></div><div id="required"></div>
			</s:else>
		</div>
	</div>	
	
	<div id="header" style="margin-top: 10px;">
		<div id="left"></div>
		<div id="middle">Osoba kontaktowa</div>
		<div id="right"></div>
	</div>
	<div id="fieldsBorder" style="height: 160px;"><div style="height: 1px;"></div>
		<div id="formRow">
			<div id="formLabel">Imię</div>
			<s:if test='getFieldErrors().containsKey("person_name")'>
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle"><s:textfield name="customer.person_name" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_error_right"></div></div><div id="required_error"></div>
			</s:if>
			<s:else>
				<div id="field"><div id="field_left"></div><div id="field_middle"><s:textfield name="customer.person_name" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_right"></div></div><div id="required"></div>
			</s:else>
		</div>
		<div style="clear: both;"></div>
		<div id="formRow">
			<div id="formLabel">Nazwisko</div>
			<s:if test='getFieldErrors().containsKey("person_surname")'>
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle"><s:textfield name="customer.person_surname" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_error_right"></div></div><div id="required_error"></div>
			</s:if>
			<s:else>
				<div id="field"><div id="field_left"></div><div id="field_middle"><s:textfield name="customer.person_surname" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_right"></div></div><div id="required"></div>
			</s:else>
		</div>
		<div style="clear: both;"></div>
		<div id="formRow">
			<div id="formLabel">Telefon</div>
			<s:if test='getFieldErrors().containsKey("person_phone")'>
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle"><s:textfield name="customer.person_phone" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_error_right"></div></div><div id="required_error"></div>
			</s:if>
			<s:else>
				<div id="field"><div id="field_left"></div><div id="field_middle"><s:textfield name="customer.person_phone" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_right"></div></div><div id="required"></div>
			</s:else>
		</div>
		<div style="clear: both;"></div>
		<div id="formRow">
			<div id="formLabel">E-mail</div>
			<s:if test='getFieldErrors().containsKey("person_email")'>
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle"><s:textfield name="customer.person_email" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_error_right"></div></div><div id="required_error"></div>
			</s:if>
			<s:else>
				<div id="field"><div id="field_left"></div><div id="field_middle"><s:textfield name="customer.person_email" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_right"></div></div><div id="required"></div>
			</s:else>
		</div>
	</div>
	
	
	<div id="header" style="margin-top: 10px;">
		<div id="left"></div>
		<div id="middle">Dane konta</div>
		<div id="right"></div>
	</div>
	<div id="fieldsBorder" style="height: 120px;"><div style="height: 1px;"></div>
		<div id="formRow">
			<div id="formLabel">Login lub e-mail</div>
			<s:if test='getFieldErrors().containsKey("login")'>
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle"><s:textfield name="customer.login" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_error_right"></div></div><div id="required_error"></div><s:if test="%{#request.messageLogin != null}"><div style="float:left; margin-left: 20px; color: red; font: bold 12px/25px Arial, sans-serif;"><s:property value="messageLogin"/></div></s:if>
			</s:if>
			<s:else>
				<div id="field"><div id="field_left"></div><div id="field_middle"><s:textfield name="customer.login" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_right"></div></div><div id="required"></div>
			</s:else>
		</div>
		<div style="clear: both;"></div>
		<div id="formRow">
			<div id="formLabel">Hasło</div>
			<s:if test='getFieldErrors().containsKey("password")'>
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle"><s:password name="customer.password" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_error_right"></div></div><div id="required_error"></div><s:if test="%{#request.messagePassword != null}"><div style="float:left; margin-left: 20px;  color: red; font: bold 12px/25px Arial, sans-serif;"><s:property value="messagePassword"/></div></s:if>
			</s:if>
			<s:else>
				<div id="field"><div id="field_left"></div><div id="field_middle"><s:password name="customer.password" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_right"></div></div><div id="required"></div>
			</s:else>
		</div>
		<div style="clear: both;"></div>
		<div id="formRow">
			<div id="formLabel">Potwierdź hasło</div>
			<s:if test='getFieldErrors().containsKey("confirmPassword")'>
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle"><s:password name="customer.confirmPassword" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_error_right"></div></div><div id="required_error"></div>
			</s:if>
			<s:else>
				<div id="field"><div id="field_left"></div><div id="field_middle"><s:password name="customer.confirmPassword" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_right"></div></div><div id="required"></div>
			</s:else>
		</div>
	</div>
	
	<div style="margin-top: 10px;">
		<s:if test="%{#request.acceptance == 'false'}">
		<div style="float: left; background: url(img/check.png); height: 22px; width: 24px;"><s:checkbox cssStyle="float: left; height: 16px; width :17px;" name="acceptance"/></div>
		</s:if>
		<s:else>
				<div style="float: left;"><s:checkbox cssStyle="float: left;" name="acceptance"/></div>
				</s:else>
		<div id="statute">Wyrażam zgodę na przetwarzanie swoich danych osobowych przez firmę ALLIOS Jolanta Matacz zgodnie z art. 23 ustawy z dnia 29 sierpnia 1997 r. o ochronie danych osobowych (Dz. U. Nr 133 z 1997 r. poz 883 z późn. zm.)  Dane te będą wykorzystywane w celu realizacji złożonych zamówień. </div>
	</div>
	
	<div style="margin-top: 80px;">
		<s:if test="%{#request.acceptanceTwo == 'false'}">
		<div style="float: left; background: url(img/check.png); height: 22px; width: 24px;"><s:checkbox cssStyle="float: left; height: 16px; width :17px;" name="acceptanceTwo"/></div>
		</s:if>
		<s:else>
				<div style="float: left;"><s:checkbox cssStyle="float: left;" name="acceptanceTwo"/></div>
				</s:else>
		<div id="statute">Zapoznałem się z regulaminem sklepu allios.pl i akceptuję jego warunki. Treść regulaminu znajdziesz <a href="statuteLink.action">tutaj</a>.</div>
	</div>
	
	<s:submit id="register_button" value=""/>
	
	</s:form>
</div>
