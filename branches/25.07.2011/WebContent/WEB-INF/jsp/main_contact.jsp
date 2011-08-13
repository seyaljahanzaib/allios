
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>

#glowna {
	width: 760px;
}

#title_l {
	background: url(img/k_topl.png); width: 7px; height: 29px; float: left; 
}
#title_c {
	background: url(img/k_topc.png); width: 746px; height: 29px; font: bold 12px/29px Tahoma; color: #ffffff; letter-spacing: 1px; float: left;
}
#title_r {
	background: url(img/k_topr.png); width: 7px; height: 29px; float: left; 
}

#naglowek{
	font: bold 13px Tahoma; color: #16117c; float: left;
}

#contact_area{
	width: 760px; height: 520px; margin-top:3px;
}

#contact_area #tekst{
	width: 140px; font: 11px/24px Tahoma; color: #16117c; margin-top: 20px; text-align: right; float: left;
}
#contact_area #tekst1{
	width: 140px; font: 11px/24px Tahoma; color: #16117c; margin-top: 16px; text-align: right; float: left;
}
#contact_area #sekleft{
	background: url(img/con_bl.png); width: 5px; height: 24px; margin-left: 10px; float: left;
}
#contact_area #sekcenter{
	background: url(img/con_bc.png); width: 400px; height: 24px; float: left;
}
#contact_area #sekright{
	background: url(img/con_br.png); width: 5px; height: 24px; float: left;
}

#contact_area #sekleft1{
	background: url(img/con_al.png); width: 5px; height: 193px; margin-left: 10px; float: left;
}
#contact_area #sekcenter1{
	background: url(img/con_ac.png); width: 400px; height: 193px; float: left;
}
#contact_area #sekright1{
	background: url(img/con_ar.png); width: 5px; height: 193px; float: left;
}
#contact_area #sent{
	font: bold 13px Tahoma; color: #16117c; float: left; cursor: pointer;
}
#contact_area #sent:HOVER{
	font: bold 13px Tahoma; color: #16117c; text-decoration: underline; float: left;
}


#stopka {
clear: both;
}

</style>

<div id="glowna">

<div id="title_l"></div>
<div id="title_c">Formularz kontaktowy</div>
<div id="title_r"></div>
<div id="stopka"></div>

<div id="contact_area">

	<div id="tekst">Nazwa firmy *:</div>
	<div id="sekleft" style="margin-top: 20px;"></div>
	<div id="sekcenter" style="margin-top: 20px;"></div>
	<div id="sekright" style="margin-top: 20px;"></div>
	
	
	<div id="stopka"></div>
	<div id="tekst1">E-mail *:</div>
	<div id="sekleft" style="margin-top: 16px;"></div>
	<div id="sekcenter" style="margin-top: 16px;"></div>
	<div id="sekright" style="margin-top: 16px;"></div>
	
	<div id="stopka"></div>
	<div id="tekst">Telefon:</div>
	<div id="sekleft" style="margin-top: 20px;"></div>
	<div id="sekcenter" style="margin-top: 20px;"></div>
	<div id="sekright" style="margin-top: 20px;"></div>
	
	
	<div id="stopka"></div>
	<div id="tekst1">Temat:</div>
	<div id="sekleft" style="margin-top: 16px;"></div>
	<div id="sekcenter" style="margin-top: 16px;"></div>
	<div id="sekright" style="margin-top: 16px;"></div>
	
	
	<div id="stopka"></div>
	<div id="tekst1" style="margin-top: 50px;">Treść:</div>
	<div id="sekleft1" style="margin-top: 50px;"></div>
	<div id="sekcenter1" style="margin-top: 50px;"></div>
	<div id="sekright1" style="margin-top: 50px;"></div>
	
	<div id="tekst1" style="margin-left: 140px; margin-top: 20px; text-align: left;">* Pola wymagane</div>
	
	<div id="stopka"></div>
	<div id="sent" style="margin-left: 520px; margin-top: 16px;">Wyślij</div>


</div>

</div>