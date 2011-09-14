<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>

#pdmenubar {
	width: 1150px; margin-top: 10px;
}
	
	#pdmenubar #sekleft {
		background: url(../img/pa_menugl.png); width: 7px; height: 26px; float: left;
		}
	#pdmenubar #sekcenter {
		background: url(../img/pa_menugc.png); width: 1136px; height: 26px; float: left;
		}
	#pdmenubar #sekright {
		background: url(../img/pa_menugr.png); width: 7px; height: 26px; float: left;
		}
	#pdmenubar #menutitle {
		font: bold 14px/26px Tahoma; color: #ffffff; letter-spacing: 1px; float: left;
		}
	
	
#pduklad {
		margin-top: 10px; margin-right: 10px; float: left; width: 193px;
		}
#pduklad #ukladleft {
		background: url(../img/pa_menugl.png); width: 7px; height: 26px; float: left;
		}
#pduklad #ukladcenter {
		background: url(../img/pa_menugc.png); width: 178px; height: 26px; float: left; font: bold 12px/26px Tahoma; color: #ffffff; letter-spacing: 1px; text-align: center; float: left;
		}
#pduklad #ukladright {
		background: url(../img/pa_menugr.png); width: 7px; height: 26px; float: left;
		}
#pduklad #tlocenter {
		background: url(../img/pa_menucenter.png); width: 192px; height: 36px; float: left;
		}
#pduklad #tlobottom {
		background: url(../img/pa_menudown.png); width: 192px; height: 8px; float: left;
		}
#pduklad #button {
		background: url(../img/pa_mnbutton.png); width: 178px; height: 24px; float: left; margin-top: 7px; margin-left: 6px; font: bold 11px/24px Tahoma; color: #0a0a80; text-align: center; cursor: pointer; 
		}
#pduklad #button:HOVER {
		background: url(../img/pa_mnbutton1.png); width: 178px; height: 24px; float: left; margin-top: 7px; margin-left: 6px; font: bold 11px/24px Tahoma; color: #ffffff; text-align: center; cursor: pointer;
		}
		
#stopka {
	clear: both;
	}

</style>

<div id="pdmenubar">
	<div id="sekleft"></div>
	<div id="sekcenter">
		<div id="menutitle">Menu administracyjne</div>
	</div>
	<div id="sekright"></div>
	</div>
<div id="stopka"></div>

<div id="pduklad">
	<div id="ukladleft"></div>
	<div id="ukladcenter">Asortyment</div>
	<div id="ukladright"></div>
	<div id="tlocenter">
		<s:form action="AddProductAdminAction" name="nowyProdukt"><s:hidden name="init"/></s:form>
		<div id="button" onclick='javascript:void(document.forms["nowyProdukt"].submit())'>Nowy produkt</div>
	</div>
	<div id="tlocenter">
		<div id="button">Przegląd produktów</div>
	</div>
	<div id="tlobottom"></div>
</div>

<div id="pduklad">
	<div id="ukladleft"></div>
	<div id="ukladcenter">Sklep</div>
	<div id="ukladright"></div>
	<div id="tlocenter">
		<div id="button">Klienci</div>
	</div>
	<div id="tlocenter">
		<s:form action="OrderAdminAction" name="zamowienia"><s:hidden name="init"/></s:form>
		<div id="button" onclick='javascript:void(document.forms["zamowienia"].submit())'>Zamówienia</div>
	</div>
	<div id="tlobottom"></div>
</div>

<div id="pduklad">
	<div id="ukladleft"></div>
	<div id="ukladcenter">Magazyn</div>
	<div id="ukladright"></div>
	<div id="tlocenter">
		<div id="button">Przyjęcie zewnętrzne</div>
	</div>
	<div id="tlocenter">
		<s:form action="ExternalOrderAdminAction" name="wydanieZewnetrzne"><s:hidden name="init"/></s:form>
		<div id="button" onclick='javascript:void(document.forms["wydanieZewnetrzne"].submit())'>Wydanie zewnętrzne</div>
	</div>
	<div id="tlobottom"></div>
</div>

<div id="pduklad">
	<div id="ukladleft"></div>
	<div id="ukladcenter">Konfiguracja</div>
	<div id="ukladright"></div>
	<div id="tlocenter">
		<s:form action="CategoryAdminAction" name="chps"><s:hidden name="init"/></s:form>
		<div id="button" onclick='javascript:void(document.forms["chps"].submit())'>Kategorie</div>
	</div>
	<div id="tlobottom"></div>
</div>