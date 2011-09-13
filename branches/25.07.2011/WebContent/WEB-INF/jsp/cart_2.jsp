<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<style>
#glowna {
	width: 760px;
}

#zbior{
	height: 26px;
	}
#zbior #b_kosz {
	background: url(img/bkoszyk.png); width: 114px; height:26px; float:left; margin-left: 20px;
	}
#zbior #b_dane {
	background: url(img/bdane.png); width: 114px; height:26px; float:left; margin-left: 20px;
}
#zbior #b_dane1 {
	background: url(img/bdane1.png); width: 114px; height:26px; float:left; margin-left: 20px;
}
#zbior #b_zam {
	background: url(img/bzam.png); width: 114px; height:26px; float:left; margin-left: 20px;
}
#zbior #b_back {
	background: url(img/bback.png); width: 140px; height:26px; float:right; cursor: pointer; border: none;
}
#zbior #b_back:hover {
	background: url(img/bback1.png);
	}

#title_kosz {
	height: 29px; margin-top: 10px;
	}
	#title_kosz #topl {
		background: url(img/k_topl.png); width: 7px; height: 29px; float: left; 
		}
	#title_kosz #topr {
		background: url(img/k_topr.png); width: 7px; height: 29px; float: left;
		}
	#title_kosz #topc {
		background: url(img/k_topc.png); repeat-x; width: 746px; height: 29px; float: left;  text-align: left ;font: bold 12px/29px Tahoma; letter-spacing: 1px; color: #ffffff;
		}

#dane {
	height: 150px;  border-left: 1px solid white; border-left-color: #f8deac; border-right: 1px solid white; border-right-color: #f8deac; border-bottom: 1px solid white; border-bottom-color: #f8deac; background-color: #fefdec; 
	}
	#dane #tekst {
		width: 70px; text-align: right ;font: 12px Tahoma; color: #160e86; float: left; margin-top: 10px; margin-left: 15px;
	}
	#dane #tekst1 {
		text-align: left ;font: bold 12px Tahoma; color: #160e86; float: left; margin-top: 10px; margin-left: 6px;
	}
	#dane #adres {
		width: 70px; text-align: right ;font: 12px Tahoma; color: #160e86; float: left; margin-top: 20px; margin-left: 15px;
	}
	#dane #adres1 {
		text-align: left ;font: bold 12px Tahoma; color: #160e86; float: left; margin-top: 2px; margin-left: 91px;
	}
	#dane #kontakt {
		text-align: right ;font: 12px Tahoma; color: #160e86; float: left; margin-top: 20px; margin-left: 15px;
	}
	#dane #kontakt1 {
		text-align: left ;font: bold 12px Tahoma; color: #160e86; float: left; margin-top: 20px; margin-left: 6px;
	}
	#dane #radio {
		width: 90px; float: left; text-align: right;
		}
	#dane #radio_adres {
		width: 200px; text-align: left; font: bold 12px Tahoma; color: #160e86; float: left; margin-left: 16px; margin-top: 40px;
		}
	#dane #radio_adres1 {
		width: 200px; text-align: left; font: bold 12px Tahoma; color: #160e86; float: left; margin-left: 96px; margin-top: 2px;
		}
	#dane #platnosc {
		width: 85px; margin-top: 40px; float: left; text-align: right;
		}
	#dane #platnosc1 {
		width: 160px; margin-top: 40px; float: left; font: bold 12px Tahoma; color: #160e86; text-align: left; margin-left: 6px;
		}
	#dane #platnosc2
		{
		width: 760px; text-align: center; font: bold 11px Tahoma; color: #160e86;
		}
#stopka {
	clear: both;
	}
	

	
#nawigacja {
	height: 34px; float: right; margin-top: 20px;
	}
#nawigacja #dalej { 
	width: 102px; height: 34px; background: url(img/b_dalej1.png); float: right; margin-right: 200px; cursor: pointer; border: none;
	}
#nawigacja #dalej:HOVER {
	background: url(img/b_dalej2.png)
}
#nawigacja #wroc { 
	width: 102px; height: 34px; background: url(img/b_wroc1.png); float: right; margin-right:20px; cursor: pointer; border: none;
	}
#nawigacja #wroc:HOVER {
	background: url(img/b_wroc2.png)
}

#tmenu_p1 {
	width: 760px;
}

</style>
	<div id="tmenu_p1">

<div id="zbior">
	<div id="b_kosz"></div>
	<div id="b_dane1"></div>
	<div id="b_zam"></div>
	<s:form action="ConfirmDetailsAction" theme="simple">
		<s:submit id="b_back" name="backtoshop" value=""/>
	</s:form>
<!-- 	<div id="b_back"></div> -->
</div>
	<s:form theme="simple" action="ConfirmDetailsAction">
	<div id="title_kosz">
	<div id="topl"></div>
	<div id="topc">Dane zamawiającego</div>
	<div id="topr"></div>
	</div>
	<div id="dane">
	<div id="tekst">Nazwa firmy:</div>
	<div id="tekst1"><s:property value="#session.customer.companyName"/></div>
	<div id="stopka"></div>
	<div id="adres">Adres firmy:</div>
	<div id="stopka"></div>
	<div id="adres1">ul. <s:property value="#session.customer.street"/> <s:property value="#session.customer.houseNumber"/>
						 <s:if test="%{#session.customer.flatNumber != null}"> m. <s:property value="#session.customer.flatNumber"/></s:if>
		<br><s:property value="#session.customer.zipCode"/> <s:property value="#session.customer.city"/>,
		woj. <s:property value="#session.customer.province"/>
		<br>Polska</div>
	<div id="stopka"></div>
	<div id="kontakt">Osoba kontaktowa:</div>
	<div id="kontakt1"><s:property value="#session.customer.person_name"/> <s:property value="#session.customer.person_surname"/></div>
	<div id="kontakt">Telefon:</div>
	<div id="kontakt1"><s:property value="#session.customer.person_phone"/></div>
	<div id="kontakt">E-mail:</div>
	<div id="kontakt1"><s:property value="#session.customer.person_email"/></div>
	</div><div id="stopka"></div>
		

		<div id="title_kosz">
		<div id="topl"></div>
		<div id="topc">Adres dostawy</div>
		<div id="topr"></div>
		</div>
	
	
			<div id="dane">
			<div id="radio">
				<s:radio cssStyle="margin-top: 65px;" name="adressChosse" list="#{'1':''}" value="1" />
			</div>
			<div id="radio_adres"><s:property value="#session.customer.companyName"/>
				<br><br>ul. <s:property value="#session.customer.street"/> <s:property value="#session.customer.houseNumber"/><s:if test="%{#session.customer.flatNumber != null}"> m. <s:property value="#session.customer.flatNumber"/></s:if>
			<br><s:property value="#session.customer.zipCode"/> <s:property value="#session.customer.city"/>,woj. <s:property value="#session.customer.province"/>
				<br>Polska</div>
			<div id="radio">
				<s:radio cssStyle="margin-top: 65px;" name="adressChosse" list="#{'2':''}" value="0" disabled="true"/>
			</div>
			<div id="radio_adres">[Brak drugiego adresu]</div>
			
			</div><div id="stopka"></div>
		
		
			<div id="title_kosz">
			<div id="topl"></div>
			<div id="topc">Warunki płatności</div>
			<div id="topr"></div>
			</div>
			<div id="dane">
			<div id="platnosc">
				<s:radio name="payment" list="#{'1':''}" value="1" />
			</div>
			<div id="platnosc1">płatność przy odbiorze</div>
			<div id="platnosc">
				<s:radio name="payment" list="#{'2':''}" value="0"  />
			</div>
			<div id="platnosc1">przedpłata na konto</div>
			<div id="platnosc">
				<s:radio name="payment" list="#{'3':''}" value="0"  disabled="true"/>
			</div>
			<div id="platnosc1">przelew 14 dni</div>
			<div id="stopka"></div>
			<div id="platnosc2"><br><br>Dokonując wyboru opcji przedpłata na konto, pamiętaj że towar wysyłamy dopiero po zaksięgowaniu wpłaty na naszym koncie bankowym.</div>
			</div>
		
			<div id="stopka"></div>
			
			<div id="nawigacja">
				<s:submit id="dalej" name="next" value=""/>
				<s:submit id="wroc"  name="back" value=""/>
			</div>
		</s:form>
</div>


