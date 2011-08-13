<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>

#add_pz {
	width: 1150px;
}
	
	#add_pz #maintekst {
		font: bold 12px/30px Tahoma; color: #ffffff; text-align: left; margin-left: 3px;
		}
	#add_pz #mainleft {
		background: url(../img/pa_titlel.png); width: 6px; height: 30px; float: left;
		}
	#add_pz #maincenter {
		background: url(../img/pa_titlec.png); width: 1138px; height: 30px; float: left;
		}
	#add_pz #mainright {
		background: url(../img/pa_titler.png); width: 6px; height: 30px; float: left;
		}
	#add_pz #mainback {
		width: 1150px; height: 240px; background-color: #f3f2fc; margin-top:2px; float: left;
		}
	#add_pz #maintekst1 {
		width: 150px; font: bold 11px/25px Tahoma; color: #101192; text-align: right; margin-left: 20px; margin-top: 40px; float: left;
		}
	#add_pz #maintekst2 {
		width: 150px; font: bold 12px/25px Tahoma; color: #101192; text-align: right; margin-left: 20px; margin-top: 40px; float: left;
		}
	#add_pz #main_graf {
		background: url(../img/pd_areac.png); height: 25px; margin-top: 40px; margin-left: 20px; float: left; 
		}
	#add_pz #main_combo {
		background: url(../img/pd_areac.png); height: 25px; margin-top: 40px; margin-left: 20px; float: left; 
		}
	#add_pz #main_add {
		background: url(../img/pa_button.png); width: 92px; height: 33px; float: left; cursor: pointer; 
		}
	#add_pz #main_addtekst {
		width: 92px; font: bold 12px/30px Tahoma; color: #101192; text-align: center; float: left;
		}
 	#add_pz #main_addtekst:HOVER {
 		width: 92px; font: bold 12px/30px Tahoma; color: #101192; text-align: center; text-decoration: underline; float: left; */
 		}

#stopka {
clear: both;
}

</style>

<div id="add_pz">
	
	<div id="mainleft"></div>
	<div id="maincenter">
		<div id="maintekst">Przyjęcie zewnętrzne</div>
		</div>
	<div id="mainright"></div>
	<div id="stopka"></div>
	<div id="mainback">
		<div id="maintekst2" style="margin-left: 20px; margin-top: 10px; text-align: left;">Przyjmij towar na stan:</div>
		<div id="stopka"></div>
		
		<div id="maintekst1" style="margin-top: 16px;">Producent:</div>
		<div id="main_combo" style="width:240px; margin-top: 16px;"></div>
		
		<div id="maintekst1" style="margin-top: 16px;">Data przyjęcia:</div>
		<div id="main_combo" style="width:100px; margin-top: 16px;"></div>
		
		<div id="maintekst1" style="margin-left:50px; margin-top: 16px;">Aktualny stan:</div>
		<div id="main_graf" style="width:80px; margin-top: 16px;"></div>
		<div id="stopka"></div>
		
		
		<div id="maintekst1" style="margin-top: 14px;">Nazwa produktu:</div>
		<div id="main_combo" style="width:240px; margin-top: 14px;"></div>
		
		<div id="maintekst1" style="margin-top: 14px;">Nr dostawy:</div>
		<div id="main_graf" style="width:100px; margin-top: 14px;"></div>
		<div id="stopka"></div>
		
		
		<div id="maintekst1" style="margin-top: 14px;">Cena netto:</div>
		<div id="main_graf" style="width:80px; margin-top: 14px;"></div>
		<div id="stopka"></div>
		
		<div id="maintekst1" style="margin-top: 14px;">Ilość:</div>
		<div id="main_graf" style="width:80px; margin-top: 14px;"></div>
		<div id="stopka"></div>
		
		<div id="main_add" style="float: right; margin-right: 80px;">
			<div id="main_addtekst">Wprowadź</div>
		</div>
	</div>
	

</div>