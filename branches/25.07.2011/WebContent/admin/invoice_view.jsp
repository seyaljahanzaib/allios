<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>

#invoice_view {
	width: 1150px;
}
	
	#invoice_view #maintekst {
		font: bold 12px/30px Tahoma; color: #ffffff; text-align: left; margin-left: 3px;
		}
	#invoice_view #mainleft {
		background: url(../img/pa_titlel.png); width: 6px; height: 30px; float: left;
		}
	#invoice_view #maincenter {
		background: url(../img/pa_titlec.png); width: 1138px; height: 30px; float: left;
		}
	#invoice_view #mainright {
		background: url(../img/pa_titler.png); width: 6px; height: 30px; float: left;
		}
	#invoice_view #mainback {
		width: 1150px; height: 180px; background-color: #f3f2fc; margin-top:2px; float: left;
	}
	#invoice_view #maintekst1 {
		width: 150px; font: bold 11px/25px Tahoma; color: #101192; text-align: right; margin-left: 20px; margin-top: 40px; float: left;
		}
	#invoice_view #main_graf {
		background: url(../img/pd_areac.png); height: 25px; margin-top: 40px; margin-left: 20px; float: left; 
		}
	#invoice_view #main_combo {
		background: url(../img/pd_areac.png); height: 25px; margin-top: 40px; margin-left: 20px; float: left; 
		}
	#invoice_view #main_add {
		background: url(../img/pa_button.png); width: 92px; height: 33px; float: left; cursor: pointer; 
		}
	#invoice_view #main_addtekst {
		width: 92px; font: bold 12px/30px Tahoma; color: #101192; text-align: center; float: left;
		}
 	#invoice_view #main_addtekst:HOVER {
 		width: 92px; font: bold 12px/30px Tahoma; color: #101192; text-align: center; text-decoration: underline; float: left; */
 		}
 	#invoice_view #mn_table {
 		background: url(../img/pa_mnprodc.png); height: 39px; float: left;
 		}
 	#invoice_view #mn_table1 {
 		height: 60px; float: left; border-bottom: 1px; border-bottom-color: #d9d5fe; border-bottom-style: solid;
 		}
 	#invoice_view #mnl_table {
 		background: url(../img/pa_mnprodlc.png); height: 39px; float: left;
 		}
 	#invoice_view #mn_tekst {
 		font: bold 11px/39px Tahoma; color: #5a598d; float: left;
 		}
 	#invoice_view #mn_tekst1 {
 		font: 11px/60px Tahoma; color: #101192; float: left;
 		}
 	#invoice_view #mn_tekst2 {
 		font: 11px Tahoma; color: #101192; float: left;
 		}
 	#invoice_view #mn_tekst3 {
 		font: 10px Tahoma; color: #101192; float: left;
 		}
	#invoice_view #bedit {
		background: url(../img/pz_bedit.png); background-position: center; background-repeat:no-repeat; width: 50px; height: 54px; margin-left: 6px; margin-top: 6px; float: left; font: bold 11px Tahoma; color: #101192; text-align: center; cursor: pointer;
		}
	#invoice_view #bsave {
		background: url(../img/save_button.png); background-position: center; background-repeat:no-repeat; width: 50px; height: 54px; margin-left: 6px; margin-top: 6px; float: left; font: bold 11px Tahoma; color: #101192; text-align: center; cursor: pointer;
		}
#stopka {
clear: both;
}

</style>

<div id="invoice_view">
	
	<div id="mainleft"></div>
	<div id="maincenter">
		<div id="maintekst">Faktury VAT</div>
		</div>
	<div id="mainright"></div>
	<div id="stopka"></div>
	<div id="mainback">
		<div id="maintekst1" style="margin-left: 20px; margin-top: 10px; text-align: left;">Filtry</div>
		<div id="stopka"></div>
		
		<div id="maintekst1" style="margin-top: 8px;">Nr Faktury:</div>
		<div id="main_graf" style="width:240px; margin-top: 8px;"></div>
		
		<div id="maintekst1" style="margin-top: 8px;">Status:</div>
		<div id="main_combo" style="width:240px; margin-top: 8px;"></div>
		<div id="stopka"></div>
		
		<div id="maintekst1" style="margin-top: 8px;">Nr zamówienia:</div>
		<div id="main_graf" style="width:240px; margin-top: 8px;"></div>
		
		<div id="maintekst1" style="margin-top: 8px;">Nazwa klienta:</div>
		<div id="main_graf" style="width:240px; margin-top: 8px;"></div>
		<div id="stopka"></div>
		
		<div id="maintekst1" style="margin-top: 8px;">Data Faktury:</div>
		<div id="main_graf" style="width:110px; margin-top: 8px;"></div>
		<div id="main_graf" style="width:110px; margin-top: 8px; margin-left: 20px;"></div>
		<div id="stopka"></div>

		
		<div id="main_add" style="float: right; margin-right: 80px;">
			<div id="main_addtekst">Szukaj</div>
		</div>
	</div>
	
	<div id="stopka"></div>
	<div id="main_add" style="float: right; margin-right: 80px; margin-top: 10px; margin-bottom: 10px;">
		<div id="main_addtekst">Nowa</div>
	</div>
	<div id="main_add" style="float: right; margin-right: 20px; margin-top: 10px; margin-bottom: 10px;">
		<div id="main_addtekst">Korekta</div>
	</div>

	<div id="stopka"></div>

							
							
							<!-- wiersz tytułowy tabeli -->


<table style="padding: 0px; border-collapse: collapse; border:0px; border-spacing:0px;">
<tr>

	<td width="30px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 29px;">
			<div id="mn_tekst"></div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
		
	<td width="140px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 139px;">
			<div id="mn_tekst" style="width: 139px; text-align: center;">Numer Faktury</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="140px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 139px;">
			<div id="mn_tekst" style="width: 139px; text-align: center;">Numer zamówienia</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	
	<td width="210px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 209px;">
			<div id="mn_tekst" style="width: 209px; text-align: center;">Nazwa Klienta</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	
	<td width="110px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 109px;">
			<div id="mn_tekst" style="width: 109px; text-align: center;">Data wystawienia</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="140px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 139px;">
			<div id="mn_tekst" style="width: 139px; text-align: center;">Wartość</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="150px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 149px;">
			<div id="mn_tekst" style="width: 149px; text-align: center;">Status</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="230px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 230px;">
			<div id="mn_tekst" style="width: 230px; text-align: center;">Operacje</div>
			</div>
	</td>
	
	

</tr>

<!-- 									wiersz pierwszy tabeli  -->


<tr>

	<td width="30px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 30px;">
			<div id="mn_tekst1">o</div>
			</div>
	</td>
		
	<td width="140px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 140px;">
			<div id="mn_tekst1" style="width: 140px; text-align: center;"><b>123/07/2011</b></div>
			</div>
	</td>
	
	<td width="140px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 140px;">
			<div id="mn_tekst1" style="width:140px; text-align: center;">231/05/2011</div>
			</div>
	</td>
	
	
	<td width="210px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 210px;">
			<div id="mn_tekst2" style="width: 204px; margin-left:6px; text-align: left; margin-top: 5px;"><b>Comhar Paweł Kłosiński</b></div>
			<div id="stopka"></div>
			<div id="mn_tekst2" style="width: 204px; margin-left:6px; text-align: left; margin-top: 3px;">09-409 Warszawa</div>
			<div id="stopka"></div>
			<div id="mn_tekst2" style="width: 204px; margin-left:6px; text-align: left; margin-top: 3px;">ul. gen. Bronisława Okulickiego</div>
			</div>
	</td>
	
	
	<td width="110px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 110px;">
			<div id="mn_tekst1" style="width: 110px; text-align: center;"><b>28.05.2011</b></div>
			</div>
	</td>
	
	<td width="140px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 140px;">
			<div id="mn_tekst2" style="width: 136px; text-align: right; margin-top: 20px; margin-right: 4px;"><b>1 234 zł</b></div>   
				<div id="mn_tekst2" style="width: 136px; text-align: right; margin-top: 3px; margin-right: 4px;">1 123 zł</div>
			</div>
	</td>
	
	<td width="150px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 150px;">
			<div id="mn_tekst1" style="width: 150px; text-align: center;"><b>nie zapłacona</b></div>
			</div>
	</td>
	
	<td width="230px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 230px;">
			<div id="bedit">Oryginał</div>
			<div id="bedit">Kopia</div>
			<div id="bedit">Korekta</div>
				<div id="bsave">Zapisz</div>
			</div>
	</td>
	


</tr>		
</table>



</div>