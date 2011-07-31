<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
#glowna {
	width: 760px;
}
#tmenu_nag {
		height: 29px;
	}
	#tmenu_nag #topl {
		background: url(img/k_topl.png); width: 7px; height: 29px; float: left; 
		}
	#tmenu_nag #topr {
		background: url(img/k_topr.png); width: 7px; height: 29px; float: left;
	}
	#tmenu_nag #topc {
		background: url(img/k_topc.png); width: 746px; height: 29px; float: left;  text-align: left ;font: bold 11px/29px Tahoma; color: #ffffff; letter-spacing: 1px;
	}

#tmenu_nag1 {
		height: 29px; margin-top: 10px;
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


#tmenu_area1 {
	height:120px; border: 1px solid; border-color: #f8deac; background-color: #fefdec;
	}
	#tmenu_area1 #info	{
		font: 11px Tahoma; color: #160e86; margin-top: 10px; margin-left: 10px;
	}
	#tmenu_area1 #kod_klienta	{
		font: 14px Tahoma; color: #160e86; margin-top: 10px; margin-left: 550px;
	}


#tmenu_area2 {
	height:220px; border: 1px solid; border-color: #f8deac; background-color: #fefdec;
	}
	#tmenu_area2 #sekleft {
		width: 95px; margin-left: 25px; float: left; font: bold 11px/25px Tahoma; color: #160e86; margin-top: 15px;
		}
	#tmenu_area2 #sekright {
		width: 70px; margin-left: 25px; float: left; font: bold 11px/25px Tahoma; color: #160e86; margin-top: 15px;
		}
	#tmenu_area2 #grafl {
		background: url(img/r_boxl.png); width: 5px; height: 25px; float: left; margin-top: 15px;
	}
	#tmenu_area2 #grafr {
		background: url(img/r_boxr.png); width: 5px; height: 25px; float: left; margin-top: 15px; 
	}
	#tmenu_area2 #grafc {
		background: url(img/r_boxc.png); width: 200px; height: 25px; float: left; margin-top: 15px;
	}
	#tmenu_area2 #grafcul {
		background: url(img/r_boxc.png); width: 40px; height: 25px; float: left; margin-top: 15px;
	}
	#tmenu_area2 #grafkod {
		background: url(img/r_boxc.png); width: 70px; height: 25px; float: left; margin-top: 15px;
	}

#tmenu_area3 {
	height:150px; border: 1px solid; border-color: #f8deac; background-color: #fefdec;
	}
	#tmenu_area3 #sekleft {
		width: 95px; margin-left: 25px; float: left; font: bold 11px/25px Tahoma; color: #160e86; margin-top: 15px;
		}
	#tmenu_area3 #sekright {
		width: 70px; margin-left: 25px; float: left; font: bold 11px/25px Tahoma; color: #160e86; margin-top: 15px;
		}
	#tmenu_area3 #grafl {
		background: url(img/r_boxl.png); width: 5px; height: 25px; float: left; margin-top: 15px;
	}
	#tmenu_area3 #grafr {
		background: url(img/r_boxr.png); width: 5px; height: 25px; float: left; margin-top: 15px; 
	}
	#tmenu_area3 #grafc {
		background: url(img/r_boxc.png); width: 200px; height: 25px; float: left; margin-top: 15px;
	}
	#tmenu_area3 #grafcul {
		background: url(img/r_boxc.png); width: 40px; height: 25px; float: left; margin-top: 15px;
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


/* ----------------------------------------    MOJE   --------------------------------------------- */



#registartion #header {
	height: 29px; width: 760px;
}
#registartion #header #left{
	height: 29px;  width: 10px; background: url(img/r_etl.png); float: left;
}
#registartion #header #middle{
	height: 29px; background: url(img/r_etc.png) repeat-x;   float: left; width: 740px;
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
	background: url(img/r_button1.png); height: 34px; width: 120px; margin-left: 320px; margin-top: 20px; border: none;
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


</style>


<div id="tmenu_nag">
	<div id="topl"></div>
	<div id="topc">Konto bankowe do przelewów</div>
	<div id="topr"></div>
</div>
<div id="tmenu_area1">
	<div id="info">Wszystkich płatności za zakupiony u nas towar prosimy dokonywać na poniższe konto bankowe:
	<br><br><b>Bank BPH o/Płock
	<br> PL 80 1234 1234 1233 1222 4329</b>
	<br><br>* w tytule przelewu prosimy umieścić indywidualny kod klienta widoczny poniżej
	<div id="kod_klienta"><b>Kod klienta: DODAJ</b></div>
	</div>
</div>

<s:form theme="simple" action="ChangeDataAction">
<div id="tmenu_nag1">
	<div id="topl"></div>
	<div id="topc">Twoje dane</div>
	<div id="topr"></div>
</div>

<div id="tmenu_area2">
<div id="formRow">
			<div id="formLabel">Numer NIP</div>
			<s:if test='getFieldErrors().containsKey("nip")'>
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle"><s:textfield name="customer.nip" id="register_textfield_nip" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_error_right"></div></div><div id="required_error"></div>
			</s:if>
			<s:else>
				<div id="field"><div id="field_left"></div><div id="field_middle"><s:textfield name="customer.nip" id="register_textfield_nip" cssStyle="border:0px; margin-top:2px; height:18px;"/></div><div id="field_right"></div></div><div id="required"></div>
			</s:else>
		</div>
		<div style="clear: both;"></div>
		<div id="formRow">
			<div id="formLabel">Nazwa Firmy</div>
			<s:if test='getFieldErrors().containsKey("companyName")'>
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle"><s:textfield name="customer.companyName" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;" /></div><div id="field_error_right"></div></div><div id="required_error"></div>
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
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle" style="width: 50px;"><s:textfield name="customer.houseNumber" cssStyle="margin-top:3px; border:0px; height:18px; width:50px;"/></div><div id="field_error_right"></div></div><div id="required_error"></div>
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
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle"><s:textfield name="customer.city" id="register_textfield" cssStyle="border:0px; margin-top:3px; height:18px;"/></div><div id="field_error_right"></div></div><div id="required_error"></div>
			</s:if>
			<s:else>
				<div id="field"><div id="field_left"></div><div id="field_middle"><s:textfield name="customer.city" id="register_textfield"/></div><div id="field_right" cssStyle="border:0px; margin-top:3px; height:18px;"></div></div><div id="required"></div>
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
				<div id="field"><div id="field_error_left"></div><div id="field_error_middle"><s:textfield name="customer.province" id="register_textfield"/></div><div id="field_error_right" cssStyle="border:0px; margin-top:3px; height:18px;"></div></div><div id="required_error"></div>
			</s:if>
			<s:else>
				<div id="field"><div id="field_left"></div><div id="field_middle"><s:textfield name="customer.province" id="register_textfield"/></div><div id="field_right" cssStyle="border:0px; margin-top:3px; height:18px;"></div></div><div id="required"></div>
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

<!-- 	<div id="sekleft">Numer NIP</div> -->
<!-- 	<div id="grafl"></div> -->
<!-- 	<div id="grafc"></div> -->
<!-- 	<div id="grafr"></div> -->
<!-- 	<div id="stopka"></div> -->
	
<!-- 	<div id="sekleft">Nazwa firmy</div> -->
<!-- 	<div id="grafl"></div> -->
<!-- 	<div id="grafc"></div> -->
<!-- 	<div id="grafr"></div> -->
<!-- 	<div id="stopka"></div> -->
	
<!-- 	<div id="sekleft">Ulica</div> -->
<!-- 	<div id="grafl"></div> -->
<!-- 	<div id="grafc"></div> -->
<!-- 	<div id="grafr"></div> -->
	
<!-- 	<div id="sekright">Nr. domu</div> -->
<!-- 	<div id="grafl"></div> -->
<!-- 	<div id="grafcul"></div> -->
<!-- 	<div id="grafr"></div> -->
	
<!-- 	<div id="sekleft">Nr. mieszkania</div> -->
<!-- 	<div id="grafl"></div> -->
<!-- 	<div id="grafcul"></div> -->
<!-- 	<div id="grafr"></div> -->
<!-- 	<div id="stopka"></div> -->
	
<!-- 	<div id="sekleft">Miejscowość</div> -->
<!-- 	<div id="grafl"></div> -->
<!-- 	<div id="grafc"></div> -->
<!-- 	<div id="grafr"></div> -->
	
<!-- 	<div id="sekleft">Kod pocztowy</div> -->
<!-- 	<div id="grafl"></div> -->
<!-- 	<div id="grafkod"></div> -->
<!-- 	<div id="grafr"></div> -->
<!-- 	<div id="stopka"></div> -->
	
<!-- 	<div id="sekleft">Województwo</div> -->
<!-- 	<div id="grafl"></div> -->
<!-- 	<div id="grafc"></div> -->
<!-- 	<div id="grafr"></div> -->
<!-- 	<div id="stopka"></div> -->
	
<!-- 	<div id="sekleft">Telefon</div> -->
<!-- 	<div id="grafl"></div> -->
<!-- 	<div id="grafc"></div> -->
<!-- 	<div id="grafr"></div> -->
<!-- 	<div id="stopka"></div> -->
</div>


<div id="tmenu_nag1">
	<div id="topl"></div>
	<div id="topc">Osoba kontaktowa</div>
	<div id="topr"></div>
</div>	
<div id="tmenu_area3">
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

<!-- 	<div id="sekleft">Imię</div> -->
<!-- 	<div id="grafl"></div> -->
<!-- 	<div id="grafc"></div> -->
<!-- 	<div id="grafr"></div> -->
<!-- 	<div id="stopka"></div> -->
	
<!-- 	<div id="sekleft">Nazwisko</div> -->
<!-- 	<div id="grafl"></div> -->
<!-- 	<div id="grafc"></div> -->
<!-- 	<div id="grafr"></div> -->
<!-- 	<div id="stopka"></div> -->
	
<!-- 	<div id="sekleft">Telefon</div> -->
<!-- 	<div id="grafl"></div> -->
<!-- 	<div id="grafc"></div> -->
<!-- 	<div id="grafr"></div> -->
	
<!-- 	<div id="sekright">E-mail</div> -->
<!-- 	<div id="grafl"></div> -->
<!-- 	<div id="grafc"></div> -->
<!-- 	<div id="grafr"></div> -->
</div>

<div id="stopka"></div>
<div id="tmenu_button">
	<s:submit id="zapisz" value=""/>
<!-- 	<div id="anuluj"></div> -->
</div>

</s:form>		







