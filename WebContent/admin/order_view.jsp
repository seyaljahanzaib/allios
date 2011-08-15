<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>

#orders_view {
	width: 1150px;
}
	
	#orders_view #maintekst {
		font: bold 12px/30px Tahoma; color: #ffffff; text-align: left; margin-left: 3px;
		}
	#orders_view #mainleft {
		background: url(../img/pa_titlel.png); width: 6px; height: 30px; float: left;
		}
	#orders_view #maincenter {
		background: url(../img/pa_titlec.png); width: 1138px; height: 30px; float: left;
		}
	#orders_view #mainright {
		background: url(../img/pa_titler.png); width: 6px; height: 30px; float: left;
		}
	#orders_view #mainback {
		width: 1150px; height: 240px; background-color: #f3f2fc; margin-top:2px; float: left;
	}
	#orders_view #maintekst1 {
		width: 150px; font: bold 11px/25px Tahoma; color: #101192; text-align: right; margin-left: 20px; margin-top: 40px; float: left;
		}
	#orders_view #main_graf {
		background: url(../img/pd_areac.png); height: 25px; margin-top: 40px; margin-left: 20px; float: left; 
		}
	#orders_view #main_combo {
		background: url(../img/pd_areac.png); height: 25px; margin-top: 40px; margin-left: 20px; float: left; 
		}
	#orders_view #main_add {
		background: url(../img/pa_button.png); width: 92px; height: 33px; float: left; cursor: pointer; 
		}
	#orders_view #main_addtekst {
		width: 92px; font: bold 12px/30px Tahoma; color: #101192; text-align: center; float: left;
		}
 	#orders_view #main_addtekst:HOVER {
 		width: 92px; font: bold 12px/30px Tahoma; color: #101192; text-align: center; text-decoration: underline; float: left; */
 		}
 	#orders_view #mn_table {
 		background: url(../img/pa_mnprodc.png); height: 39px; float: left;
 		}
 	 #orders_view #mn_table1 {
 		height: 60px; float: left; border-bottom: 1px; border-bottom-color: #d9d5fe; border-bottom-style: solid;
 		}
 	 #orders_view #mnl_table {
 		background: url(../img/pa_mnprodlc.png); height: 39px; float: left;
 		}
 	 #orders_view #mn_tekst {
 		font: bold 11px/39px Tahoma; color: #5a598d; float: left;
 		}
 	 #orders_view #mn_tekst1 {
 		font: 11px/60px Tahoma; color: #101192; float: left;
 		}
 	 #orders_view #mn_tekst2 {
 		font: 11px Tahoma; color: #101192; float: left;
 		}
	#orders_view #results {
 		width: 1150px; height: 39px; float: left;
		}
		#orders_view #results #tekst1{
			font: 12px/39px Tahoma; color: black; float: left;
		}
		#orders_view #results #tekst2{
			font: 12px Tahoma; color: black; float: left;
		}
		
		#orders_view #bedit {
		background: url(../img/pz_bedit.png); background-position: center; background-repeat:no-repeat; width: 16px; height: 60px; float: left; margin-left: 27px; cursor: pointer; border: none;
		}
		#orders_view #bsave {
		background: url(../img/save_button.png); background-position: center; background-repeat:no-repeat; width: 20px; height: 60px; float: left; margin-left: 12px; cursor: pointer; border: none;
		}
		#orders_view #bcancel {
		background: url(../img/pz_bdelete.png); background-position: center; background-repeat:no-repeat; width: 19px; height: 60px; float: left; margin-left: 12px; cursor: pointer; border: none;
		}
		#orders_view #binvoice {
		background: url(../img/pz_binvoice.png); background-position: center; background-repeat:no-repeat; width: 20px; height: 20px; margin-left:50px; margin-top: 20px; float: left; cursor: pointer; border: none;
		}
		#orders_view #binvoice:HOVER {
		background: url(../img/pz_binvoice1.png); background-position: center; background-repeat:no-repeat; width: 20px; height: 20px; margin-left:50px; margin-top: 20px; float: left; cursor: pointer;
		}
			
#stopka {
clear: both;
}

</style>

<div id="orders_view">
	
	<div id="mainleft"></div>
	<div id="maincenter">
		<div id="maintekst">Przegląd zamówień</div>
		</div>
	<div id="mainright"></div>
	<div id="stopka"></div>
	
	
	<div id="mainback">
		<div id="maintekst1" style="margin-left: 20px; margin-top: 10px; text-align: left;">Filtry</div>
		<div id="stopka"></div>
		
		<div id="maintekst1" style="margin-top: 8px;">Numer zamówienia:</div>
		<div id="main_combo" style="width:240px; margin-top: 8px;"></div>
		
		<div id="maintekst1" style="margin-top: 8px;">Data utworzenia:</div>
		<div id="main_graf" style="width:120px; margin-top: 8px;"></div>
		<div id="main_graf" style="width:120px; margin-top: 8px; margin-left: 10px;"></div>
		<div id="stopka"></div>
		
		
		<div id="maintekst1" style="margin-top: 14px;">Nazwa firmy:</div>
		<div id="main_combo" style="width:240px; margin-top: 14px;"></div>
		
		<div id="maintekst1" style="margin-top: 14px;">Data dostawy:</div>
		<div id="main_graf" style="width:120px; margin-top: 14px;"></div>
		<div id="main_graf" style="width:120px; margin-top: 14px; margin-left: 10px;"></div>
		<div id="stopka"></div>
		
		
		<div id="maintekst1" style="margin-top: 14px;">Miejscowość:</div>
		<div id="main_combo" style="width:240px; margin-top: 14px;"></div>
		
		<div id="maintekst1" style="margin-top: 14px;">Wartość:</div>
		<div id="main_graf" style="width:120px; margin-top: 14px;"></div>
		<div id="main_graf" style="width:120px; margin-top: 14px; margin-left: 10px;"></div>
		<div id="stopka"></div>
		
		<div id="maintekst1" style="margin-top: 14px;">Status:</div>
		<div id="main_combo" style="width:240px; margin-top: 14px;"></div>
		<div id="stopka"></div>
		
		
		<div id="main_add" style="float: right; margin-right: 80px;">
			<div id="main_addtekst">Szukaj</div>
		</div>
	</div>
	
	<div id="results">
		<div id="tekst1" style="margin-left: 40px;"><b>Liczba zamówień:	56</b></div>
		<div id="tekst2" style="width: 453px; text-align: right; margin-top: 4px;"><b>Wartość brutto:</b></div>
		<div id="tekst2" style="width: 116px; text-align: right; margin-top: 4px;"><b>22 460,00 zł</b></div>
		<div id="tekst2" style="width: 453px; text-align: right; margin-top: 3px;">netto:</div>
		<div id="tekst2" style="width: 116px; text-align: right; margin-top: 3px;">20 460,00 zł</div>
	</div>


	<div id="stopka"></div>

							
							
							<!-- wiersz tytułowy tabeli -->


<table style="padding: 0px; border-collapse: collapse; border:0px; border-spacing:0px;">
<tr>
		
	<td width="150px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 149px;">
			<div id="mn_tekst" style="width: 149px; text-align: center;">Numer zamówienia</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="230px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 229px;">
			<div id="mn_tekst" style="width: 229px; text-align: center;">Nazwa firmy</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	
	<td width="120px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 119px;">
			<div id="mn_tekst" style="width: 119px; text-align: center;">Data utworzenia</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	
	<td width="120px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 119px;">
			<div id="mn_tekst" style="width: 119px; text-align: center;">Data dostawy</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="120px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 119px;">
			<div id="mn_tekst" style="width: 119px; text-align: center;">Wartość zam.</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="150px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 149px;">
			<div id="mn_tekst" style="width: 149px; text-align: center;">Status</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="120px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 119px;">
			<div id="mn_tekst" style="width: 119px; text-align: center;">Faktura VAT</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="140px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 140px;">
			<div id="mn_tekst" style="width: 140px; text-align: center;">Operacje</div>
			</div>
	</td>
	

</tr>

									
									
									
<!-- 									wiersz pierwszy tabeli  -->

<tr>

	<td width="150px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 150px;">
			<div id="mn_tekst1" style="width: 149px; text-align: center;"><b>1234/05/2011</b></div>
			</div>
	</td>
		
	<td width="230px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 230px;">
			<div id="mn_tekst2" style="margin-left: 8px; margin-top: 5px;"><b>Comhar Paweł Kłosiński</b></div>
			<div id="stopka"></div>
			<div id="mn_tekst2" style="margin-left: 8px; margin-top: 3px;">09-409 Warszawa</div>
			<div id="stopka"></div>
			<div id="mn_tekst2" style="margin-left: 8px; margin-top: 3px;">ul. gen. Bronisława Okulickiego</div>
			</div>
	</td>
	
	<td width="120px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 120px;">
			<div id="mn_tekst1" style="width: 120px; text-align: center;">24.03.2011</div>
			</div>
	</td>
	
	
	<td width="120px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 120px;">
			<div id="mn_tekst1" style="width: 120px; text-align: center;">25.03.2011</div>
			</div>
	</td>
	
	
	<td width="120px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 120px;">
			<div id="mn_tekst2" style="width: 116px; text-align: right; margin-top: 20px; margin-right: 4px;"><b>11 230 zł</b></div>
			<div id="mn_tekst2" style="width: 116px; text-align: right; margin-top: 3px; margin-right: 4px;">10 230 zł</div>
			</div>
	</td>
	
	<td width="150px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 150px;">
			<div id="mn_tekst1" style="width: 150px; text-align: center;"><b>oczekuje</b></div>
			</div>
	</td>
	
	<td width="1200px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width:120px;">
			<div id="binvoice"></div>
			</div>
	</td>
	
	<td width="140px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 140px;">
			<div id="bedit"></div>
			<div id="bsave"></div>
			<div id="bcancel"></div>
			</div>
	</td>
	
</tr>


<!-- 									wiersz drugi tabeli  -->

<tr>

	<td width="150px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 150px; background-color: #f5f4ff;">
			<div id="mn_tekst1" style="width: 149px; text-align: center;"><b>1234/05/2011</b></div>
			</div>
	</td>
		
	<td width="230px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 230px; background-color: #f5f4ff;">
			<div id="mn_tekst2" style="margin-left: 8px; margin-top: 5px;"><b>Comhar Paweł Kłosiński</b></div>
			<div id="stopka"></div>
			<div id="mn_tekst2" style="margin-left: 8px; margin-top: 3px;">09-409 Warszawa</div>
			<div id="stopka"></div>
			<div id="mn_tekst2" style="margin-left: 8px; margin-top: 3px;">ul. gen. Bronisława Okulickiego</div>
			</div>
	</td>
	
	<td width="120px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 120px; background-color: #f5f4ff;">
			<div id="mn_tekst1" style="width: 120px; text-align: center;">24.03.2011</div>
			</div>
	</td>
	
	
	<td width="120px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 120px; background-color: #f5f4ff;">
			<div id="mn_tekst1" style="width: 120px; text-align: center;">25.03.2011</div>
			</div>
	</td>
	
	
	<td width="120px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 120px; background-color: #f5f4ff;">
			<div id="mn_tekst2" style="width: 116px; text-align: right; margin-top: 20px; margin-right: 4px;"><b>11 230 zł</b></div>
			<div id="mn_tekst2" style="width: 116px; text-align: right; margin-top: 3px; margin-right: 4px;">10 230 zł</div>
			</div>
	</td>
	
	<td width="150px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 150px; background-color: #f5f4ff;">
			<div id="mn_tekst1" style="width: 150px; text-align: center;"><b>oczekuje</b></div>
			</div>
	</td>
	
	<td width="1200px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width:120px; background-color: #f5f4ff;">
			<div id="binvoice"></div>
			</div>
	</td>
	
	<td width="140px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 140px; background-color: #f5f4ff;">
			<div id="bedit"></div>
			<div id="bsave"></div>
			<div id="bcancel"></div>
			</div>
	</td>
	
</tr>

</table>



</div>