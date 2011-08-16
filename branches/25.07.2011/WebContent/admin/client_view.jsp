<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>

#user_view {
	width: 1150px;
}
	
	#user_view #maintekst {
		font: bold 12px/30px Tahoma; color: #ffffff; text-align: left; margin-left: 3px;
		}
	#user_view #mainleft {
		background: url(../img/pa_titlel.png); width: 6px; height: 30px; float: left;
		}
	#user_view #maincenter {
		background: url(../img/pa_titlec.png); width: 1138px; height: 30px; float: left;
		}
	#user_view #mainright {
		background: url(../img/pa_titler.png); width: 6px; height: 30px; float: left;
		}
	#user_view #mainback {
		width: 1150px; height: 200px; background-color: #f3f2fc; margin-top:2px; float: left;
	}
	#user_view #maintekst1 {
		width: 150px; font: bold 11px/25px Tahoma; color: #101192; text-align: right; margin-left: 20px; margin-top: 40px; float: left;
		}
	#user_view #main_graf {
		background: url(../img/pd_areac.png); height: 25px; margin-top: 40px; margin-left: 20px; float: left; 
		}
	#user_view #main_combo {
		background: url(../img/pd_areac.png); height: 25px; margin-top: 40px; margin-left: 20px; float: left; 
		}
	#user_view #main_add {
		background: url(../img/pa_button.png); width: 92px; height: 33px; float: left; cursor: pointer; 
		}
	#user_view #main_addtekst {
		width: 92px; font: bold 12px/30px Tahoma; color: #101192; text-align: center; float: left;
		}
 	#user_view #main_addtekst:HOVER {
 		width: 92px; font: bold 12px/30px Tahoma; color: #101192; text-align: center; text-decoration: underline; float: left; */
 		}
 	#user_view #mn_table {
 		background: url(../img/pa_mnprodc.png); height: 39px; float: left;
 		}
 	 #user_view #mn_table1 {
 		height: 60px; float: left; border-bottom: 1px; border-bottom-color: #d9d5fe; border-bottom-style: solid;
 		}
 	 #user_view #mnl_table {
 		background: url(../img/pa_mnprodlc.png); height: 39px; float: left;
 		}
 	 #user_view #mn_tekst {
 		font: bold 12px/39px Tahoma; color: #5a598d; float: left;
 		}
 	 #user_view #mn_tekst1 {
 		font: 11px/60px Tahoma; color: #101192; float: left;
 		}
 	 #user_view #mn_tekst2 {
 		font: 11px Tahoma; color: #101192; float: left;
 		}

#stopka {
clear: both;
}

</style>

<div id="user_view">
	
	<div id="mainleft"></div>
	<div id="maincenter">
		<div id="maintekst">Przegląd klietnów</div>
		</div>
	<div id="mainright"></div>
	<div id="stopka"></div>
	<div id="mainback">
		<div id="maintekst1" style="margin-left: 20px; margin-top: 10px; text-align: left;">Filtry</div>
		<div id="stopka"></div>
		
		<div id="maintekst1" style="margin-top: 8px;">Nazwa firmy:</div>
		<div id="main_graf" style="width:240px; margin-top: 8px;"></div>
		
		<div id="maintekst1" style="margin-top: 8px;">Osoba kontaktowa:</div>
		<div id="main_graf" style="width:240px; margin-top: 8px;"></div>
		<div id="stopka"></div>
		
		
		<div id="maintekst1" style="margin-top: 14px;">Miejscowość:</div>
		<div id="main_combo" style="width:240px; margin-top: 14px;"></div>
		
		<div id="maintekst1" style="margin-top: 14px;">Telefon:</div>
		<div id="main_graf" style="width:240px; margin-top: 14px;"></div>
		<div id="stopka"></div>
		
		
		<div id="maintekst1" style="margin-top: 14px;">Województwo:</div>
		<div id="main_combo" style="width:240px; margin-top: 14px;"></div>
		<div id="stopka"></div>
		
		<div id="main_add" style="float: right; margin-right: 80px;">
			<div id="main_addtekst">Szukaj</div>
		</div>
	</div>
	
	<div id="stopka"></div>
	<div id="main_add" style="float: right; margin-right: 80px; margin-top: 10px; margin-bottom: 10px;">
		<div id="main_addtekst">Usuń</div>
	</div>
	<div id="main_add" style="float: right; margin-right: 20px; margin-top: 10px; margin-bottom: 10px;">
		<div id="main_addtekst">Edytuj</div>
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
		
	<td width="250px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 249px;">
			<div id="mn_tekst" style="margin-left: 4px;">Nazwa i adres firmy</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="120px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 119px;">
			<div id="mn_tekst" style="width: 119px; text-align: center;">Kod klienta</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="100px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 99px;">
			<div id="mn_tekst" style="width: 99px; text-align: center;">Telefon firm.</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	
	<td width="150px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 149px;">
			<div id="mn_tekst" style="width: 149px; text-align: center;">Województwo</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	
	<td width="150px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 149px;">
			<div id="mn_tekst" style="width: 149px; text-align: center;">Osoba kontaktowa</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	

	<td width="90px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 89px;">
			<div id="mn_tekst" style="width: 89px; text-align: center;">Liczba zam.</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="120px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 119px;">
			<div id="mn_tekst" style="width: 119px; text-align: center;">Wartość zam.</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="140px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 140px;">
			<div id="mn_tekst" style="width: 140px; text-align: center;">Rejestracja/ost. zam.</div>
			</div>
	</td>
	

</tr>

									
									
									
<!-- 									wiersz pierwszy tabeli  -->

<tr>

	<td width="30px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 30px;">
			<div id="mn_tekst1" style="text-align: center;">o</div>
			</div>
	</td>
		
	<td width="250px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 250px;">
			<div id="mn_tekst2" style="margin-left: 4px; margin-top: 5px;"><b>Comhar Paweł Kłosiński</b></div>
			<div id="stopka"></div>
			<div id="mn_tekst2" style="margin-left: 4px; margin-top: 3px;">09-409 Warszawa</div>
			<div id="stopka"></div>
			<div id="mn_tekst2" style="margin-left: 4px; margin-top: 3px;">ul. gen. Bronisława Okulickiego</div>
			</div>
	</td>
	
	<td width="120px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 119px;">
			<div id="mn_tekst1" style="width: 119px; text-align: center;">20009</div>
			</div>
	</td>
	
	<td width="100px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 100px;">
			<div id="mn_tekst1" style="width: 100px; text-align: center;">22 2643232</div>
			</div>
	</td>
	
	
	<td width="150px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 150px;">
			<div id="mn_tekst1" style="width: 150px; text-align: center;">warmińsko-mazurskie</div>
			</div>
	</td>
	
	
	<td width="150px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 150px;">
			<div id="mn_tekst2" style="width: 150px; margin-top: 20px; text-align: center;"><b>Albert Sosnowski</b></div>
			<div id="mn_tekst2" style="width: 150px; margin-top: 4px; text-align: center;"><b>888 330 330</b></div>
			</div>
	</td>
	
	
	<td width="90px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width:90px;">
			<div id="mn_tekst1" style="width: 90px; text-align: center;"><b>21</b></div>
			</div>
	</td>
	
	<td width="120px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 120px;">
			<div id="mn_tekst2" style="width: 116px; text-align: right; margin-top: 20px; margin-right: 4px;"><b>11 230 zł</b></div>
			<div id="mn_tekst2" style="width: 116px; text-align: right; margin-top: 3px; margin-right: 4px;">10 230 zł</div>
			</div>
	</td>
	
	<td width="140px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 140px;">
			<div id="mn_tekst2" style="width: 140px; text-align: center; margin-top: 20px;"><b>27.10.2011, 10.30</b></div>
			<div id="mn_tekst2" style="width: 140px; text-align: center; margin-top: 3px;">02.11.2011, 12.30</div>
			</div>
	</td>
	
</tr>



<!-- 									wiersz drugi tabeli  -->

<tr>

	<td width="30px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 30px;">
			<div id="mn_tekst1" style="text-align: center;">o</div>
			</div>
	</td>
		
	<td width="250px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 250px;">
			<div id="mn_tekst2" style="margin-left: 4px; margin-top: 5px;"><b>Comhar Paweł Kłosiński</b></div>
			<div id="stopka"></div>
			<div id="mn_tekst2" style="margin-left: 4px; margin-top: 3px;">09-409 Warszawa</div>
			<div id="stopka"></div>
			<div id="mn_tekst2" style="margin-left: 4px; margin-top: 3px;">ul. gen. Bronisława Okulickiego</div>
			</div>
	</td>
	
	<td width="120px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 119px;">
			<div id="mn_tekst1" style="width: 119px; text-align: center;">20009</div>
			</div>
	</td>
	
	<td width="100px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 100px;">
			<div id="mn_tekst1" style="width: 100px; text-align: center;">22 2643232</div>
			</div>
	</td>
	
	
	<td width="150px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 150px;">
			<div id="mn_tekst1" style="width: 150px; text-align: center;">warmińsko-mazurskie</div>
			</div>
	</td>
	
	
	<td width="150px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 150px;">
			<div id="mn_tekst2" style="width: 150px; margin-top: 20px; text-align: center;"><b>Albert Sosnowski</b></div>
			<div id="mn_tekst2" style="width: 150px; margin-top: 4px; text-align: center;"><b>888 330 330</b></div>
			</div>
	</td>
	
	
	<td width="90px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width:90px;">
			<div id="mn_tekst1" style="width: 90px; text-align: center;"><b>21</b></div>
			</div>
	</td>
	
	<td width="120px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 120px;">
			<div id="mn_tekst2" style="width: 116px; text-align: right; margin-top: 20px; margin-right: 4px;"><b>11 230 zł</b></div>
			<div id="mn_tekst2" style="width: 116px; text-align: right; margin-top: 3px; margin-right: 4px;">10 230 zł</div>
			</div>
	</td>
	
	<td width="140px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 140px;">
			<div id="mn_tekst2" style="width: 140px; text-align: center; margin-top: 20px;"><b>27.10.2011, 10.30</b></div>
			<div id="mn_tekst2" style="width: 140px; text-align: center; margin-top: 3px;">02.11.2011, 12.30</div>
			</div>
	</td>
	
</tr>

</table>



</div>