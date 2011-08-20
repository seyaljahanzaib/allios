<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>

#add_wz {
	width: 1150px;
}
	
	#add_wz #maintekst {
		font: bold 12px/30px Tahoma; color: #ffffff; text-align: left; margin-left: 3px;
		}
	#add_wz #mainleft {
		background: url(../img/pa_titlel.png); width: 6px; height: 30px; float: left;
		}
	#add_wz #maincenter {
		background: url(../img/pa_titlec.png); width: 1138px; height: 30px; float: left;
		}
	#add_wz #mainright {
		background: url(../img/pa_titler.png); width: 6px; height: 30px; float: left;
		}
	#add_wz #mainback {
		width: 1150px; height: 260px; background-color: #f3f2fc; margin-top:2px; float: left;
		}
	#add_wz #maintekst1 {
		width: 150px; font: bold 11px/25px Tahoma; color: #101192; text-align: right; margin-left: 20px; margin-top: 40px; float: left;
		}
	#add_wz #maintekst2 {
		width: 150px; font: bold 12px/25px Tahoma; color: #101192; text-align: right; margin-left: 20px; margin-top: 40px; float: left;
		}
	#add_wz #main_graf {
		background: url(../img/pd_areac.png); height: 25px; margin-top: 40px; margin-left: 20px; float: left; 
		}
	#add_wz #main_combo {
		background: url(../img/pd_areac.png); height: 25px; margin-top: 40px; margin-left: 20px; float: left; 
		}
	#add_wz #main_add {
		background: url(../img/pa_button.png); width: 92px; height: 33px; float: left; cursor: pointer; 
		}
	#add_wz #main_addtekst {
		width: 92px; font: bold 12px/30px Tahoma; color: #101192; text-align: center; float: left;
		}
 	#add_wz #main_addtekst:HOVER {
 		width: 92px; font: bold 12px/30px Tahoma; color: #101192; text-align: center; text-decoration: underline; float: left; */
 		}
	#add_wz #mn_table {
 		background: url(../img/pa_mnprodc.png); height: 39px; float: left;
 		}
 	 #add_wz #mn_table1 {
 		height: 34px; float: left; border-bottom: 1px; border-bottom-color: #d9d5fe; border-bottom-style: solid;
 		}
 	 #add_wz #mnl_table {
 		background: url(../img/pa_mnprodlc.png); height: 39px; float: left;
 		}
 	 #add_wz #mn_tekst {
 		font: bold 11px/39px Tahoma; color: #5a598d; float: left;
 		}
 	 #add_wz #mn_tekst1 {
 		font: 11px/34px Tahoma; color: #101192; float: left;
 		}
 	 #add_wz #mn_tekst2 {
 		font: 11px Tahoma; color: #101192; float: left;
 		}
 	 #add_wz #mn_tekst3 {
 		font: 10px Tahoma; color: #101192; float: left;
 		}
 	#add_wz #bcancel {
		background: url(../img/pz_bdelete.png); background-position: center; background-repeat:no-repeat; width: 19px; height: 30px; float: left; margin-left: 12px; cursor: pointer; border: none;
		}
 		
	#add_wz #results {
 		width: 1150px; height: 39px; float: left;
		}
		#add_wz #results #tekst1{
			font: 12px/39px Tahoma; color: black; float: left;
		}
		#add_wz #results #tekst2{
			font: 14px/39px Tahoma; color: red; float: left;
		}
 		
#stopka {
clear: both;
}

</style>

<div id="add_wz">
	
	<div id="mainleft"></div>
	<div id="maincenter">
		<div id="maintekst">Faktura VAT</div>
		</div>
	<div id="mainright"></div>
	<div id="stopka"></div>
	<div id="mainback">
		<div id="maintekst2" style="margin-left: 20px; margin-top: 10px; text-align: left;">Tworzenie faktury:</div>
		<div id="stopka"></div>
		
		<div id="maintekst1" style="margin-top: 16px;">Numer WZ:</div>
		<div id="main_combo" style="width:240px; margin-top: 16px;"></div>
		
		<div id="maintekst1" style="margin-top: 16px;">Nazwa odbiorcy:</div>
		<div id="main_combo" style="width:300px; margin-top: 16px;"></div>
		<div id="stopka"></div>
		
		<div id="maintekst1" style="margin-top: 16px;">Data sprzedaży:</div>
		<div id="main_graf" style="width:100px; margin-top: 16px;"></div>
		
		<div id="maintekst1" style="margin-left:160px; margin-top: 16px;">Ulica:</div>
		<div id="main_graf" style="width:300px; margin-top: 16px;"></div>
		<div id="stopka"></div>
		
		<div id="maintekst1" style="margin-top: 16px;">Data wystawienia:</div>
		<div id="main_graf" style="width:100px; margin-top: 16px;"></div>
		
		<div id="maintekst1" style="margin-left:160px; margin-top: 16px;">Kod pocztowy:</div>
		<div id="main_graf" style="width:100px; margin-top: 16px;"></div>
		
		<div id="maintekst1" style="margin-top: 16px;">Miejscowość:</div>
		<div id="main_graf" style="width:150px; margin-top: 16px;"></div>
		<div id="stopka"></div>
		
		<div id="maintekst1" style="margin-left:450px; margin-top: 16px;">NIP:</div>
		<div id="main_graf" style="width:160px; margin-top: 16px;"></div>
		<div id="stopka"></div>
		
		<div id="main_add" style="float: right; margin-right: 40px; margin-top: 10px;">
			<div id="main_addtekst">Utwórz FV</div>
		</div>
		<div id="main_add" style="float: right; margin-right: 20px; margin-top: 10px;">
				<div id="main_addtekst">Dodaj</div>
		</div>
		<div id="stopka"></div>
	</div>
		
		<div id="results">
			<div id="tekst1" style="margin-left: 40px;"><b>Liczba produktów:	56</b></div>
			<div id="tekst2" style="width: 850px; text-align: right;"><b>Do zapłaty:</b></div>
			<div id="tekst2" style="width: 122px; text-align: right;"><b>22 460,00 zł</b></div>
		</div>


<div id="stopka"></div>
<table style="padding: 0px; border-collapse: collapse; border:0px; border-spacing:0px;">

<!-- 						wiersz tytułowy tabeli							 -->
<tr>

	<td width="30px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 29px;">
			<div id="mn_tekst" style="width: 30px; text-align: center;">L.p</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
		
	<td width="390px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 389px;">
			<div id="mn_tekst" style="margin-left: 4px; text-align: left;">Nazwa produktu</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="70px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 69px;">
			<div id="mn_tekst" style="width: 69px; text-align: center;">Ilość</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	
	<td width="70px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 69px;">
			<div id="mn_tekst" style="width: 69px; text-align: center;">J.m.</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	
	<td width="110px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 109px;">
			<div id="mn_tekst" style="width: 109px; text-align: center;">Cena netto</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="70px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 69px;">
			<div id="mn_tekst" style="width: 69px; text-align: center;">Rabat</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="120px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 119px;">
			<div id="mn_tekst" style="width: 119px; text-align: center;">Wartośc netto</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="70px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 69px;">
			<div id="mn_tekst" style="width: 69px; text-align: center;">VAT</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="90px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 89px;">
			<div id="mn_tekst" style="width: 89px; text-align: center;">Kwota VAT</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="130px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 129px;">
			<div id="mn_tekst" style="width: 129px; text-align: center;">Wartość brutto</div>
			</div>
	</td>
</tr>

<!-- 										wiersz pierwszy tabeli							 -->
	
<tr>

	<td width="30px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 30px;">
			<div id="mn_tekst1" style="width: 30px; text-align: center;">1</div>
			</div>
	</td>
		
	<td width="390px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 390px;">
			<div id="mn_tekst1" style="margin-left: 4px; text-align: left;">Cwiek papierowy ręczny stalowy, rozmiar 21mm</div>
			</div>
	</td>
	
	<td width="70px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 70px;">
			<div id="mn_tekst1" style="width: 70px; text-align: center;">23</div>
			</div>
	</td>
	
	
	<td width="70px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 70px;">
			<div id="mn_tekst1" style="width: 70px; text-align: center;">szt.</div>
			</div>
	</td>
	
	
	<td width="110px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 110px;">
			<div id="mn_tekst2" style="width: 106px; text-align: right; margin-right: 4px; margin-top: 12px;">920,00 zł</div>
			</div>
	</td>
	
	<td width="70px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 70px;">
			<div id="mn_tekst1" style="width: 70px; text-align: center;">5%</div>
			</div>
	</td>
	
	<td width="120px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 120px;">
			<div id="mn_tekst2" style="width: 116px; text-align: right; margin-right: 4px; margin-top: 12px;">12 920,00 zł</div>
			</div>
	</td>
	
	<td width="70px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 70px;">
			<div id="mn_tekst1" style="width: 70px; text-align: center;">8%</div>
			</div>
			
	<td width="90px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 90px;">
			<div id="mn_tekst2" style="width: 86px; text-align: right; margin-right: 4px; margin-top: 12px;">22,22 zł</div>
			</div>
	
	<td width="130px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 130px;">
			<div id="mn_tekst2" style="width: 126px; text-align: right; margin-right: 4px; margin-top: 12px;">23 222,22 zł</div>
			</div>
	</td>


</tr>
</table>
		
</div>
