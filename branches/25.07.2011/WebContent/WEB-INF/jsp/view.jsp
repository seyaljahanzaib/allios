<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
#glowna {
	width: 760px;
}

#zbior{
	height: 26px; margin-bottom: 10px;
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
#zbior #b_zam1 {
	background: url(img/bzam1.png); width: 114px; height:26px; float:left; margin-left: 20px;
}
#zbior #b_back_to_orders {
	background: url(img/pd_wroc.png); width: 140px; height:26px; float:right; cursor: pointer;
}
#zbior #b_back_to_orders:hover {
	background: url(img/pd_wroc1.png);
	}

#k1z {
	height: 29px;
	}
#k1z #topl {
	background: url(img/k_topl.png); width: 7px; height: 29px; float: left; 
	}
#k1z #topr {
	background: url(img/k_topr.png); width: 7px; height: 29px; float: left;
	}
#k1z #topc1 {
	background: url(img/k_topc.png); repeat-x; width: 20px; height: 29px; float: left;  text-align: left ;font: bold 11px/29px Tahoma; color: #ffffff;
	}
#k1z #topc2 {
	background: url(img/k_topc.png); repeat-x; width: 390px; height: 29px; float: left;  text-align: center ;font: bold 11px/29px Tahoma; color: #ffffff;
	}
#k1z #topc3 {
	background: url(img/k_topc.png); repeat-x; width: 72px; height: 29px; float: left;  text-align: center ;font: bold 11px/29px Tahoma; color: #ffffff;
	}
#k1z #topc4 {
	background: url(img/k_topc.png); repeat-x; width: 63px; height: 29px; float: left;  text-align: center ;font: bold 11px/29px Tahoma; color: #ffffff;
	}
#k1z #topc5 {
	background: url(img/k_topc.png); repeat-x; width: 81px; height: 29px; float: left;  text-align: center ;font: bold 11px/29px Tahoma; color: #ffffff;
	}
#k1z #topc6 {
	background: url(img/k_topc.png); repeat-x; width: 92px; height: 29px; float: left;  text-align: center ;font: bold 11px/29px Tahoma; color: #ffffff;
	}
#k1z #topc7 {
	background: url(img/k_topc.png); repeat-x; width: 36px; height: 29px; float: left;  text-align: center ;font: bold 11px/29px Tahoma; color: #ffffff;
	}
#k1z #lc {
	background: url(img/k_topcl.png); width: 2px; height: 29px; float: left;
	}
#k1z #nag {
	margin-left:3px;  float: left; text-align: left; font: bold 11px/29px Tahoma; color: #ffffff;
	}
#k1z #nag1 {
	text-align: center ;font: bold 11px/29px Tahoma; color: #ffffff;
	}
#k1z #nag2 {
	text-align: right; ;font: bold 11px/29px Tahoma; color: #ffffff; margin-right: 2px;
	}	
#k1z #rabat {
	background: url(img/k_topc.png); repeat-x; width: 50px; height: 29px; float: left;  text-align: center ;font: bold 11px/29px Tahoma; color: #ffffff;
	}
#k1z #wart {
	background: url(img/k_topc.png); repeat-x; width: 141px; height: 29px; float: left;  text-align: center ;font: bold 11px/29px Tahoma; color: #ffffff;
	}
	
	
#k3z {
	height: 40px; border-bottom: 1px solid white; border-bottom-color: #f8deac;
	}
#k3z #lp {
	width: 27px; text-align: center ;font: bold 11px/40px Tahoma; color: #160e86; float: left;
	}
#k3z #produkt {
	width: 390px; font: bold 11px/40px Tahoma; color: #160e86; float: left;
	}	
#k3z #cenab {
	width: 72px; font: bold 11px Tahoma; color: #160e86; float: left; margin-top: 6px; text-align: right;
	}
#k3z #cenan {
	width: 72px; font: 11px Tahoma; color: #160e86; float: left; margin-top: 2px; text-align: right;
	}		
#k3z #ilosc {
	width: 63px; font: 11px/40px Tahoma; color: #160e86; float: left; text-align: center;
	}	
#k3z #rabat {
	width: 50px; font: 11px/40px Tahoma; color: #160e86; float: left; text-align: center;
	}
#k3z #wartoscb {
	width: 146px; font: bold 11px Tahoma; color: #160e86; float: left; margin-top: 6px; text-align: right;
	}
#k3z #wartoscn {
	width: 146px; font: 11px Tahoma; color: #160e86; float: left; margin-top: 2px; text-align: right;
	}
		
#stopka {
	clear: both;
	}
	
#sumowanie_zam {
	float: right;
	}
#sumowanie_zam #sekleft {
	width: 150px; font: bold 12px Tahoma; color: #160e86; margin-top: 5px; text-align: right; float: left;
	}
#sumowanie_zam #sekright {
	width: 90px; font: bold 12px Tahoma; color: #160e86; margin-top: 5px; text-align: right; float: left;
	}
#sumowanie_zam #sekleftn {
	width: 150px; font: 12px Tahoma; color: #160e86; margin-top: 5px; text-align: right; float: left;
	}
#sumowanie_zam #sekrightn {
	width: 90px; font: 12px Tahoma; color: #160e86; margin-top: 5px; text-align: right; float: left;
	}
	
#sumowanie_zam1 {
	float: right; border-top: 2px solid white; border-top-color: #f8deac; margin-top: 16px;
	}
#sumowanie_zam1 #sekleft {
	width: 90px; font: bold 14px Tahoma; color: #674703; margin-top: 4px; text-align: left; float: left; margin-bottom: 20px;
	}
#sumowanie_zam1 #sekright {
	width: 150px; font: bold 14px Tahoma; color: #674703; margin-top: 4px; text-align: left; float: left; margin-bottom: 20px;
	}


#sumowanie_info {
	width: 760px; float: left; border-bottom: 1px solid white; border-bottom-color: #f8deac; margin-top: 30px; font: bold 12px Tahoma; color: #160e86;
	}
#sumowanie_info1 {
	float: left; margin-top: 5px; font: 11px Tahoma; color: #160e86;
	}
#sumowanie_data {
	float: left; margin-top: 20px;
	}
#sumowanie_data #tekst {
	width: 150px; text-align: right; font: 11px/25px Tahoma; color: #160e86; float: left; margin-left: 150px;
	}
#sumowanie_data #data_dostawy {
	width: 60px; text-align: left; font: 11px/25px Tahoma; color: #160e86; float: left; margin-left: 10px;
	}
#sumowanie_data #grafl {
	background: url(img/b_datal.png); width: 4px; height: 25px; margin-left: 10px; float: left;
	}
#sumowanie_data #grafr {
	background: url(img/b_datar.png); width: 4px; height: 25px; float: left;
	}
#sumowanie_data #grafc {
	background: url(img/b_datac.png); width: 140px; height: 25px; float: left;
	}
	

#nawigacja1 {
	height: 24px; float: right;
	}
#nawigacja1 #zamawiam { 
	width: 102px; height: 34px; background: url(img/b_zam1.png); float: right; margin-top: 20px; margin-right: 60px; cursor: pointer; border: none;
	}
#nawigacja1 #zamawiam:HOVER {
	background: url(img/b_zam2.png)
}
#nawigacja1 #wroc { 
	width: 102px; height: 34px; background: url(img/b_wroc1.png); float: right; margin-top: 20px; margin-right:20px; cursor: pointer; border: none;
	}
#nawigacja1 #wroc:HOVER {
	background: url(img/b_wroc2.png)
}

</style>

<div id="zbior">
	<div id="b_back_to_orders" onclick="location.href='OrderReviewAction.action'"></div>
</div>

<table cellpadding="0" cellspacing="0">
<tr>
	<td width="29">
		<div id="k1z">
		<div id="topl"></div>
		<div id="topc1">L.p</div>
		<div id="lc"></div></div></td>
	<td width="392">
		<div id="k1z">
		<div id="topc2"><div id="nag">Nazwa produktu/usługi</div></div>
		<div id="lc"></div></div></td>
	<td width="74">
		<div id="k1z">
		<div id="topc3"><div id="nag1">Cena</div></div>
		<div id="lc"></div></div></td>
	<td width="65">
		<div id="k1z">
		<div id="topc4"><div id="nag1">Ilość</div></div>
		<div id="lc"></div></div></td>
	<td width="52">
		<div id="k1z">
		<div id="rabat"><div id="nag1">Rabat</div></div>
		<div id="lc"></div></div></td>
	<td width="148">
		<div id="k1z">
		<div id="wart"><div id="nag1">Wartość</div></div>
		<div id="topr"></div></div></td>
		</tr>

<s:iterator value="#request.order.listOfProducts" status="item">

<tr>
	<td width="29" height="40">
		<div id="k3z">
		<div id="lp"><s:property value="#item.index + 1" /></div>
		</div></td>
	<td width="392" height="40">
		<div id="k3z">
		<div id="produkt"><s:property value="product.name"/></div>
		</div></td>
	<td width="74" height="40">
		<div id="k3z">
		<div id="cenab"><s:property value="priceBruttoString"/> zł</div>
		<div id="cenan"><s:property value="priceNettoString"/> zł</div>
		</div></td>
	<td width="65" height="40">
		<div id="k3z">
		<div id="ilosc"><s:property value="numberOfItem"/> szt.</div>
		</div></td>
	<td width="52" height="40">
		<div id="k3z">
		<div id="rabat">0%</div>
		</div></td>
	<td width="148" height="40">
		<div id="k3z">
		<div id="wartoscb"><s:property value="totalPriceBruttoString"/> zł</div>
		<div id="wartoscn"><s:property value="totalPriceNettoString"/> zł</div>
		</div></td>
</tr>

</s:iterator>
<tr>
	<td width="29" height="40">
				<div id="k3z">
					<div id="lp">${fn:length(order.listOfProducts) + 1}</div>
				</div>
			</td>
			<td width="392" height="40">
				<div id="k3z">
					<div id="produkt">
						Usługa transportu
					</div>
				</div>
			</td>
			<td width="74" height="40">
				<div id="k3z">
					<div id="cenab">
						20,00 zł
					<div id="cenan">
						16,26 zł
				</div>
			</td>
			<td width="65" height="40">
				<div id="k3z">
					<div id="ilosc">
						1 szt.
					</div>
				</div>
			</td>
			<td width="52" height="40">
				<div id="k3z">
				</div>
			</td>
			<td width="148" height="40">
				<div id="k3z">
					<div id="wartoscb">
						20,00 zł
					</div>
					<div id="wartoscn">
						16,26 zł
					</div>
				</div>
			</td>
</tr>

</table>

<div id="sumowanie_zam">
	<div id="sekleft">Razem brutto:</div><div id="sekright"><s:property value="#request.order.totalCostBrutto"/> zł</div>
	<div id="stopka"></div>
	<div id="sekleftn">netto:</div><div id="sekrightn"><s:property value="#request.order.totalCostNetto"/> zł</div>
	<div id="stopka"></div>
	<div id="sekleftn"><br>Forma płatności:</div><div id="sekright"><br><s:property value="#request.order.paymentMethod"/></div>
<!-- 	<div id="stopka"></div> -->
<!-- 	<div id="sekleftn">Termin płatności:</div><div id="sekright">14 dni</div> -->
	<div id="stopka"></div>
	<div id="sekleftn">Data dostawy:</div><div id="sekright"><fmt:formatDate pattern="dd-MM-yyyy" value="${request.order.deliveryDate}" /></div>
	<div id="stopka"></div>
	</div><div id="stopka"></div>
	
<div id="sumowanie_zam1">
	<div id="sekleft">Do zapłaty:</div><div id="sekright"><s:property value="#request.order.totalCostBrutto"/> zł</div>
	</div><div id="stopka"></div>
	
