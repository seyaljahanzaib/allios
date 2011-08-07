<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>

#product {
	width: 1150px;
}
	
	#product #maintekst {
		font: bold 12px/30px Tahoma; color: #ffffff; text-align: left; margin-left: 3px;
		}
	#product #mainleft {
		background: url(../img/pa_titlel.png); width: 6px; height: 30px; float: left;
		}
	#product #maincenter {
		background: url(../img/pa_titlec.png); width: 1138px; height: 30px; float: left;
		}
	#product #mainright {
		background: url(../img/pa_titler.png); width: 6px; height: 30px; float: left;
		}
	#product #mainback {
		width: 1150px; height: 200px; background-color: #f3f2fc; margin-top:2px; float: left;
	}
	#product #maintekst1 {
		width: 150px; font: bold 11px/25px Tahoma; color: #101192; text-align: right; margin-left: 20px; margin-top: 40px; float: left;
		}
	#product #main_graf {
		background: url(../img/pd_areac.png); height: 25px; margin-top: 40px; margin-left: 20px; float: left; 
		}
	#product #main_combo {
		background: url(../img/pd_areac.png); height: 25px; margin-top: 40px; margin-left: 20px; float: left; 
		}
	#product #main_add {
		background: url(../img/pa_button.png); width: 92px; height: 33px; float: left; cursor: pointer; 
		}
	#product #main_addtekst {
		width: 92px; font: bold 12px/30px Tahoma; color: #101192; text-align: center; float: left;
		}
 	#product #main_addtekst:HOVER {
 		width: 92px; font: bold 12px/30px Tahoma; color: #101192; text-align: center; text-decoration: underline; float: left; */
 		}
 	#product #mn_table {
 		background: url(../img/pa_mnprodc.png); height: 39px; float: left;
 		}
 	 #product #mn_table1 {
 		height: 39px; float: left; border-bottom: 1px; border-bottom-color: #d9d5fe; border-bottom-style: solid;
 		}
 	 #product #mnl_table {
 		background: url(../img/pa_mnprodlc.png); height: 39px; float: left;
 		}
 	 #product #mn_tekst {
 		font: bold 12px/39px Tahoma; color: #5a598d; float: left;
 		}
 	 #product #mn_tekst1 {
 		font: 11px/39px Tahoma; color: #101192; float: left;
 		}
 	 #product #mn_tekst2 {
 		font: 11px Tahoma; color: #101192; float: left;
 		}

#stopka {
clear: both;
}

</style>

<div id="product">
	
	<div id="mainleft"></div>
	<div id="maincenter">
		<div id="maintekst">Przegląd produktów</div>
		</div>
	<div id="mainright"></div>
	<div id="stopka"></div>
	<div id="mainback">
		<div id="maintekst1" style="margin-left: 20px; margin-top: 10px; text-align: left;">Filtry</div>
		<div id="stopka"></div>
		
		<div id="maintekst1" style="margin-top: 8px;">Nazwa:</div>
		<div id="main_graf" style="width:240px; margin-top: 8px;"></div>
		
		<div id="maintekst1" style="margin-top: 8px;">Kod producenta:</div>
		<div id="main_graf" style="width:240px; margin-top: 8px;"></div>
		<div id="stopka"></div>
		
		
		<div id="maintekst1" style="margin-top: 14px;">Kategoria:</div>
		<div id="main_combo" style="width:240px; margin-top: 14px;"></div>
		
		<div id="maintekst1" style="margin-top: 14px;">Producent:</div>
		<div id="main_combo" style="width:240px; margin-top: 14px;"></div>
		<div id="stopka"></div>
		
		
		<div id="maintekst1" style="margin-top: 14px;">Podkategoria:</div>
		<div id="main_combo" style="width:240px; margin-top: 14px;"></div>
		
		<div id="maintekst1" style="margin-top: 14px;">Stan magazynowy:</div>
		<div id="main_graf" style="width:60px; margin-top: 14px;"></div>
		<div id="main_graf" style="width:60px; margin-top: 14px;"></div>
		<div id="stopka"></div>
		
		<div id="main_add" style="float: right; margin-right: 80px;">
			<div id="main_addtekst">Szukaj</div>
		</div>
	</div>
	
	<div id="stopka"></div>
	<div id="main_add" style="float: right; margin-right: 80px; margin-top: 10px; margin-bottom: 10px;">
		<div id="main_addtekst">Zapisz</div>
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
		
	<td width="300px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 299px;">
			<div id="mn_tekst" style="margin-left: 4px;">Nazwa produktu</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="96px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 95px;">
			<div id="mn_tekst" style="width: 95px; text-align: center;">Kod prod.</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	
	<td width="160px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 159px;">
			<div id="mn_tekst" style="width: 159px; text-align: center;">Kategoria</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	
	<td width="90px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 89px;">
			<div id="mn_tekst" style="width: 89px; text-align: center;">Cena</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="99px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 98px;">
			<div id="mn_tekst" style="width: 98px; text-align: center;">Producent</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="90px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 89px;">
			<div id="mn_tekst" style="width: 89px; text-align: center;">Skład</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="90px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 89px;">
			<div id="mn_tekst" style="width: 89px; text-align: center;">Stan</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="90px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 89px;">
			<div id="mn_tekst" style="width: 89px; text-align: center;">Alarm</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
		<td width="105px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 105px;">
			<div id="mn_tekst" style="width: 105px; text-align: center;">Status</div>
			</div>
	</td>
</tr>

									
									
									
									<!-- wiersz pierwszy tabeli  -->

<tr>

	<td width="30px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 30px;">
			<div id="mn_tekst1" style="text-align: center;">o</div>
			</div>
	</td>
		
	<td width="300px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 300px;">
			<div id="mn_tekst1" style="margin-left: 4px;"><b>Stzykawka Admira 128g XL typ M rozmiar S</b></div>
			</div>
	</td>
	
	<td width="96px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 96px;">
			<div id="mn_tekst1" style="width: 96px; text-align: center;">XT232222</div>
			</div>
	</td>
	
	
	<td width="160px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 160px;">
			<div id="mn_tekst2" style="width: 160px; text-align: center; margin-top: 4px;">Cementy</div>
			<div id="mn_tekst2" style="width: 160px; text-align: center; margin-top: 3px;"><b>Szybkosnący</b></div>
			</div>
	</td>
	
	
	<td width="90px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 90px;">
			<div id="mn_tekst2" style="width: 90px; text-align: right; margin-top: 5px;"><b>1 320 zł</b></div>
			<div id="mn_tekst2" style="width: 90px; text-align: right; margin-top: 3px;">1 320 zł</div>
			</div>
	</td>
	
	<td width="99px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 99px;">
			<div id="mn_tekst1" style="width: 99px; text-align: center;">3M ESPE</div>
			</div>
	</td>
	
	<td width="90px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width:90px;">
			<div id="mn_tekst1" style="width: 90px; text-align: center;"><b>S1D2</b></div>
			</div>
	</td>
	
	<td width="90px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 90px;">
			<div id="mn_tekst1" style="width: 90px; text-align: center;">2 szt.</div>
			</div>
	</td>
	
	<td width="90px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 90px;">
			<div id="mn_tekst1" style="width: 90px; text-align: center; background-color: aqua; ;"><b>2 szt.</b></div>
			</div>
	</td>
	
		<td width="105px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 105px;">
			<div id="mn_tekst1" style="width: 105px; text-align: center;">Aktywny</div>
			</div>
	</td>
</tr>




									<!-- wiersz drugi tabeli  -->

<tr>

	<td width="30px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 30px; background-color: #f5f4ff">
			<div id="mn_tekst1" style="text-align: center;">o</div>
			</div>
	</td>
		
	<td width="300px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 300px; background-color: #f5f4ff">
			<div id="mn_tekst1" style="margin-left: 4px;"><b>Stzykawka Admira 128g XL typ M rozmiar S</b></div>
			</div>
	</td>
	
	<td width="96px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 96px; background-color: #f5f4ff">
			<div id="mn_tekst1" style="width: 96px; text-align: center;">XT232222</div>
			</div>
	</td>
	
	
	<td width="160px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 160px; background-color: #f5f4ff">
			<div id="mn_tekst2" style="width: 160px; text-align: center; margin-top: 4px;">Cementy</div>
			<div id="mn_tekst2" style="width: 160px; text-align: center; margin-top: 3px;"><b>Szybkosnący</b></div>
			</div>
	</td>
	
	
	<td width="90px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 90px; background-color: #f5f4ff">
			<div id="mn_tekst2" style="width: 90px; text-align: right; margin-top: 5px;"><b>1 320 zł</b></div>
			<div id="mn_tekst2" style="width: 90px; text-align: right; margin-top: 3px;">1 320 zł</div>
			</div>
	</td>
	
	<td width="99px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 99px; background-color: #f5f4ff">
			<div id="mn_tekst1" style="width: 99px; text-align: center;">3M ESPE</div>
			</div>
	</td>
	
	<td width="90px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width:90px; background-color: #f5f4ff">
			<div id="mn_tekst1" style="width: 90px; text-align: center;"><b>S1D2</b></div>
			</div>
	</td>
	
	<td width="90px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 90px; background-color: #f5f4ff">
			<div id="mn_tekst1" style="width: 90px; text-align: center;">2 szt.</div>
			</div>
	</td>
	
	<td width="90px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 90px; background-color: #f5f4ff">
			<div id="mn_tekst1" style="width: 90px; text-align: center; background-color: aqua;"><b>2 szt.</b></div>
			</div>
	</td>
	
		<td width="105px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 105px; background-color: #f5f4ff">
			<div id="mn_tekst1" style="width: 105px; text-align: center;">Aktywny</div>
			</div>
	</td>
</tr>


									<!-- wiersz trzeci tabeli  -->

<tr>

	<td width="30px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 30px;">
			<div id="mn_tekst1" style="text-align: center;">o</div>
			</div>
	</td>
		
	<td width="300px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 300px;">
			<div id="mn_tekst1" style="margin-left: 4px;"><b>Stzykawka Admira 128g XL typ M rozmiar S</b></div>
			</div>
	</td>
	
	<td width="96px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 96px;">
			<div id="mn_tekst1" style="width: 96px; text-align: center;">XT232222</div>
			</div>
	</td>
	
	
	<td width="160px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 160px;">
			<div id="mn_tekst2" style="width: 160px; text-align: center; margin-top: 4px;">Cementy</div>
			<div id="mn_tekst2" style="width: 160px; text-align: center; margin-top: 3px;"><b>Szybkosnący</b></div>
			</div>
	</td>
	
	
	<td width="90px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 90px;">
			<div id="mn_tekst2" style="width: 90px; text-align: right; margin-top: 5px;"><b>1 320 zł</b></div>
			<div id="mn_tekst2" style="width: 90px; text-align: right; margin-top: 3px;">1 320 zł</div>
			</div>
	</td>
	
	<td width="99px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 99px;">
			<div id="mn_tekst1" style="width: 99px; text-align: center;">3M ESPE</div>
			</div>
	</td>
	
	<td width="90px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width:90px;">
			<div id="mn_tekst1" style="width: 90px; text-align: center;"><b>S1D2</b></div>
			</div>
	</td>
	
	<td width="90px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 90px;">
			<div id="mn_tekst1" style="width: 90px; text-align: center;">2 szt.</div>
			</div>
	</td>
	
	<td width="90px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 90px;">
			<div id="mn_tekst1" style="width: 90px; text-align: center;"><b>2 szt.</b></div>
			</div>
	</td>
	
		<td width="105px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 105px;">
			<div id="mn_tekst1" style="width: 105px; text-align: center;">Aktywny</div>
			</div>
	</td>
</tr>


</table>



</div>