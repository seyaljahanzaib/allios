<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
#glowna {
	width: 760px;
}

#infokosz {
	height: 252px; margin-left: 120px; margin-top: 80px; float: left;
	}
	#infokosz #sekleft {
		background: url(img/k_infol.png); width: 10px; height: 252px; float: left;
		}
	#infokosz #sekcenter {
		background: url(img/k_infoc.png); width: 482px; height: 252px; float: left;
		}
	#infokosz #sekright {
		background: url(img/k_infor.png); width: 10px; height: 252px; float: left;
		}
	#infokosz #tekst1 {
		width: 462px; float: left; margin-left: 10px; margin-top: 15px; font: 11px Tahoma; color: #160e86; text-align: justify;
		}
	#infokosz #tekst2 {
		width: 462px; float: left; margin-top: 14px; margin-left: 10px; font: bold 14px Tahoma; color: #160e86; text-align: center;
		}
	#infokosz #tekst3 {
		float: left; margin-left: 290px; margin-top: 50px; font: bold 11px Tahoma; color: #160e86; cursor: pointer;
		}
/* 	#infokosz #tekst3:HOVER { */
/* 		float: left; margin-left: 290px; margin-top: 50px; font: bold 11px Tahoma; color: #160e86; text-decoration: underline; */
/* 		} */
	#infokosz #linia {
		background-color: #fba015; height: 1px; width: 462px; float: left; margin-top: 14px; margin-left: 10px;
		}
	

#stopka {
	clear: both;
	}

</style>

<div id="infokosz">
	<div id="sekleft"></div>
	<div id="sekcenter">
		<div id="tekst1"><b>Dziękujemy za dokonanie zakupu w allios.pl!</b>
		<br><br>Twoje zamówienie zostało wysłane do systemu i otrzymało numer:
		</div>
		<div id="tekst2">1233/07/2011</div>
		<div id="linia"></div>
		<div id="tekst1">Aby uzyskać informacje na temat aktualnego statusu zamówienia oraz faktury VAT przjedź do sekcji przegląd zamówień w menu użytkownika.</div>
		<a id="tekst3" href="OrderReviewAction.action">Przejdź do przeglądu zamówień</a>
<!-- 		<div id="tekst3"></div> -->
		
		</div>
	<div id="sekright"></div>

</div>