<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
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
		<div id="button">Nowy produkt</div>
	</div>
	
	<div id="tlocenter">
		<div id="button">Nowy klient</div>
	</div>
	
	<div id="tlocenter">
		<div id="button">Nowy dostawca</div>
	</div>
	
	
	<div id="tlobottom"></div>
	
	
	
	</div>
	
	
	
	
	