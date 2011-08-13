<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>

#pz {
	width: 1150px;
}
	
	#pz #maintekst {
		font: bold 12px/30px Tahoma; color: #ffffff; text-align: left; margin-left: 3px;
		}
	#pz #mainleft {
		background: url(../img/pa_titlel.png); width: 6px; height: 30px; float: left;
		}
	#pz #maincenter {
		background: url(../img/pa_titlec.png); width: 1138px; height: 30px; float: left;
		}
	#pz #mainright {
		background: url(../img/pa_titler.png); width: 6px; height: 30px; float: left;
		}
	#pz #mainback {
		width: 1150px; height: 200px; background-color: #f3f2fc; margin-top:2px; float: left;
	}
	#pz #maintekst1 {
		width: 150px; font: bold 11px/25px Tahoma; color: #101192; text-align: right; margin-left: 20px; margin-top: 40px; float: left;
		}
	#pz #main_graf {
		background: url(../img/pd_areac.png); height: 25px; margin-top: 40px; margin-left: 20px; float: left; 
		}
	#pz #main_combo {
		background: url(../img/pd_areac.png); height: 25px; margin-top: 40px; margin-left: 20px; float: left; 
		}
	#pz #main_add {
		background: url(../img/pa_button.png); width: 92px; height: 33px; float: left; cursor: pointer; 
		}
	#pz #main_addtekst {
		width: 92px; font: bold 12px/30px Tahoma; color: #101192; text-align: center; float: left;
		}
 	#pz #main_addtekst:HOVER {
 		width: 92px; font: bold 12px/30px Tahoma; color: #101192; text-align: center; text-decoration: underline; float: left; */
 		}
 	#pz #mn_table {
 		background: url(../img/pa_mnprodc.png); height: 39px; float: left;
 		}
 	 #pz #mn_table1 {
 		height: 40px; float: left; border-bottom: 1px; border-bottom-color: #d9d5fe; border-bottom-style: solid;
 		}
 	 #pz #mnl_table {
 		background: url(../img/pa_mnprodlc.png); height: 39px; float: left;
 		}
 	 #pz #mn_tekst {
 		font: bold 11px/39px Tahoma; color: #5a598d; float: left;
 		}
 	 #pz #mn_tekst1 {
 		font: 11px/40px Tahoma; color: #101192; float: left;
 		}
 	 #pz #mn_tekst2 {
 		font: 11px Tahoma; color: #101192; float: left;
 		}
 	 #pz #mn_tekst3 {
 		font: 10px Tahoma; color: #101192; float: left;
 		}

#stopka {
clear: both;
}

</style>

<div id="pz">
	
	<div id="mainleft"></div>
	<div id="maincenter">
		<div id="maintekst">Przyjęcie zewnętrzne</div>
		</div>
	<div id="mainright"></div>
	<div id="stopka"></div>
	<div id="mainback">
		<div id="maintekst1" style="margin-left: 20px; margin-top: 10px; text-align: left;">Filtry</div>
		<div id="stopka"></div>
		
		<div id="maintekst1" style="margin-top: 8px;">Nr PZ:</div>
		<div id="main_graf" style="width:240px; margin-top: 8px;"></div>
		
		<div id="maintekst1" style="margin-top: 8px;">Producent:</div>
		<div id="main_combo" style="width:240px; margin-top: 8px;"></div>
		<div id="stopka"></div>
		
		
		<div id="maintekst1" style="margin-top: 14px;">Nr dowstawy:</div>
		<div id="main_graf" style="width:240px; margin-top: 14px;"></div>
		
		<div id="maintekst1" style="margin-top: 14px;">Nazwa produktu:</div>
		<div id="main_graf" style="width:240px; margin-top: 14px;"></div>
		<div id="stopka"></div>
		
		
		<div id="maintekst1" style="margin-top: 14px;">Data PZ:</div>
		<div id="main_graf" style="width:110px; margin-top: 14px;"></div>
		<div id="main_graf" style="width:110px; margin-left: 20px; margin-top: 14px;"></div>
		<div id="stopka"></div>
		
		<div id="main_add" style="float: right; margin-right: 80px;">
			<div id="main_addtekst">Szukaj</div>
		</div>
	</div>
	
	<div id="stopka"></div>
	<div id="main_add" style="float: right; margin-right: 80px; margin-top: 10px; margin-bottom: 10px;">
		<div id="main_addtekst">Nowy</div>
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
		
	<td width="150px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 149px;">
			<div id="mn_tekst" style="width: 150px; text-align: center;">Numer PZ</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="250px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 249px;">
			<div id="mn_tekst" style="margin-left: 4px; text-align: left;">Nazwa produktu</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	
	<td width="100px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 99px;">
			<div id="mn_tekst" style="width: 99px; text-align: center;">Producent</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	
	<td width="100px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 99px;">
			<div id="mn_tekst" style="width: 99px; text-align: center;">Akt. stan</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="90px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 89px;">
			<div id="mn_tekst" style="width: 89px; text-align: center;">Cena</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="90px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 89px;">
			<div id="mn_tekst" style="width: 89px; text-align: center;">Ilość</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="100px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 99px;">
			<div id="mn_tekst" style="width: 99px; text-align: center;">Wartość</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="120px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 119px;">
			<div id="mn_tekst" style="width: 119px; text-align: center;">Nr dostawy</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="120px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 119px;">
			<div id="mn_tekst" style="width: 119px; text-align: center;">Data PZ</div>
			</div>
	</td>

</tr>

<!-- 									wiersz pierwszy tabeli  -->


<tr>

	<td width="30px" height="40px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 30px;">
			<div id="mn_tekst1">o</div>
			</div>
	</td>
		
	<td width="150px" height="40px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 150px;">
			<div id="mn_tekst1" style="width: 150px; text-align: center;"><b>123/07/2011</b></div>
			</div>
	</td>
	
	<td width="250px" height="40px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 250px;">
			<div id="mn_tekst1" style="margin-left: 4px; text-align: left;">Admira strzykawaka 4g 320bulk</div>
			</div>
	</td>
	
	
	<td width="100px" height="40px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 100px;">
			<div id="mn_tekst1" style="width: 100px; text-align: center;">3M ESPE</div>
			</div>
	</td>
	
	
	<td width="100px" height="40px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 100px;">
			<div id="mn_tekst1" style="width: 100px; text-align: center;">32 szt.</div>
			</div>
	</td>
	
	<td width="90px" height="40px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 90px;">
			<div id="mn_tekst2" style="width: 86px; text-align: right; margin-right: 4px; margin-top: 6px;"><b>1 320,00 zł</b></div>
			<div id="mn_tekst2" style="width: 86px; text-align: right; margin-right: 4px; margin-top: 3px;">920,00 zł</div>
			</div>
	</td>
	
	<td width="90px" height="40px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 90px;">
			<div id="mn_tekst1" style="width: 90px; text-align: center;">32 szt.</div>
			</div>
	</td>
	
	<td width="100px" height="40px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 100px;">
			<div id="mn_tekst2" style="width: 96px; text-align: right; margin-right: 4px; margin-top: 6px;"><b>12 320,00 zł</b></div>
			<div id="mn_tekst2" style="width: 96px; text-align: right; margin-right: 4px; margin-top: 3px;">11 920,00 zł</div>
			</div>
	</td>
	
	<td width="120px" height="40px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 120px;">
			<div id="mn_tekst1" style="width: 120px; text-align: center;">1200/2011</div>
			</div>
	</td>
	
	<td width="120px" height="40px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 120px;">
			<div id="mn_tekst2" style="width: 120px; text-align: center; margin-top: 7px;"><b>28.11.2011, 12.30</b></div>
			<div id="mn_tekst2" style="width: 120px; text-align: center; margin-top: 3px;">28.11.2011, 12.30</div>
			</div>
	</td>

</tr>							
									
<!-- 									wiersz drugi tabeli  -->


<tr>

	<td width="30px" height="40px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 30px; background-color: #f5f4ff;">
			<div id="mn_tekst1">o</div>
			</div>
	</td>
		
	<td width="150px" height="40px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 150px; background-color: #f5f4ff;">
			<div id="mn_tekst1" style="width: 150px; text-align: center;"><b>123/07/2011</b></div>
			</div>
	</td>
	
	<td width="250px" height="40px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 250px; background-color: #f5f4ff;">
			<div id="mn_tekst1" style="margin-left: 4px; text-align: left;">Admira strzykawaka 4g 320bulk</div>
			</div>
	</td>
	
	
	<td width="100px" height="40px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 100px; background-color: #f5f4ff;">
			<div id="mn_tekst1" style="width: 100px; text-align: center;">3M ESPE</div>
			</div>
	</td>
	
	
	<td width="100px" height="40px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 100px; background-color: #f5f4ff;">
			<div id="mn_tekst1" style="width: 100px; text-align: center;">32 szt.</div>
			</div>
	</td>
	
	<td width="90px" height="40px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 90px; background-color: #f5f4ff;">
			<div id="mn_tekst2" style="width: 86px; text-align: right; margin-right: 4px; margin-top: 6px;"><b>1 320,00 zł</b></div>
			<div id="mn_tekst2" style="width: 86px; text-align: right; margin-right: 4px; margin-top: 3px;">920,00 zł</div>
			</div>
	</td>
	
	<td width="90px" height="40px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 90px; background-color: #f5f4ff;">
			<div id="mn_tekst1" style="width: 90px; text-align: center;">32 szt.</div>
			</div>
	</td>
	
	<td width="100px" height="40px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 100px; background-color: #f5f4ff;">
			<div id="mn_tekst2" style="width: 96px; text-align: right; margin-right: 4px; margin-top: 6px;"><b>12 320,00 zł</b></div>
			<div id="mn_tekst2" style="width: 96px; text-align: right; margin-right: 4px; margin-top: 3px;">11 920,00 zł</div>
			</div>
	</td>
	
	<td width="120px" height="40px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 120px; background-color: #f5f4ff;">
			<div id="mn_tekst1" style="width: 120px; text-align: center;">1200/2011</div>
			</div>
	</td>
	
	<td width="120px" height="40px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 120px; background-color: #f5f4ff;">
			<div id="mn_tekst2" style="width: 120px; text-align: center; margin-top: 7px;"><b>28.11.2011, 12.30</b></div>
			<div id="mn_tekst2" style="width: 120px; text-align: center; margin-top: 3px;">28.11.2011, 12.30</div>
			</div>
	</td>

</tr>	
						

</table>



</div>