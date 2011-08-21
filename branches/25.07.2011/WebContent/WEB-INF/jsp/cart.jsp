<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
#zbior #b_zam {
	background: url(img/bzam.png); width: 114px; height:26px; float:left; margin-left: 20px;
}
#zbior #b_back {
	background: url(img/bback.png); width: 140px; height:26px; float:right; cursor: pointer; border: none;
}
#zbior #b_back:hover {
	background: url(img/bback1.png);
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
	background: url(img/k_topc.png); repeat-x; width: 350px; height: 29px; float: left;  text-align: center ;font: bold 11px/29px Tahoma; color: #ffffff;
	}
#k1z #topc3 {
	background: url(img/k_topc.png); repeat-x; width: 92px; height: 29px; float: left;  text-align: center ;font: bold 11px/29px Tahoma; color: #ffffff;
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
#k2z {
	height: 100px; border-bottom: 1px solid white; border-bottom-color: #f8deac;
	}
#k2z #lp {
	width: 27px; height: 1px; text-align: center ;font: 12px/90px Tahoma; color: #160e86; float: left;
	}
#k2z #photo {
	width: 80px; height: 80px; float: left; margin-top: 8px;
	}
#k2z #prodt {
	width: 230px; height: 11px; font: bold 11px Tahoma; color: #160e86; margin-left: 10px; margin-top: 4px; float: left;
	}
#k2z #prodo {
	width: 230px; height: 20px; font: 11px Tahoma; color: #160e86; margin-left: 10px; margin-top: 11px; float: left;
	}
#k2z #cenab {
	width: 88px; font: bold 12px Tahoma; color: #160e86; float: left; margin-top: 20px; text-align: right;
	}
#k2z #cenan {
	width: 88px; font: 12px Tahoma; color: #160e86; float: left; margin-top: 2px; text-align: right;
	}
#k2z #ilosc {
	width: 59px; font: 12px Tahoma; color: #160e86; float: left; margin-top: 25px; text-align: right;
	}
#k2z #dostepnosc {
	width: 77px; font: 12px Tahoma; color: #160e86; float: left; margin-top: 70px; text-align: center;
	}
#k2z #dostepnoscgraf0 {
	width: 77px; height:100px; background: url(img/bat_0.png); background-repeat: no-repeat; background-position: center; float: left;
	}
#k2z #dostepnoscgraf1 {
	width: 77px; height:100px; background: url(img/bat_1.png); background-repeat: no-repeat; background-position: center; float: left;
	}
#k2z #dostepnoscgraf2 {
	width: 77px; height:100px; background: url(img/bat_2.png); background-repeat: no-repeat; background-position: center; float: left;
	}
#k2z #dostepnoscgraf3 {
	width: 77px; height:100px; background: url(img/bat_3.png); background-repeat: no-repeat; background-position: center; float: left;
	}
#k2z #dostepnoscgraf4 {
	width: 77px; height:100px; background: url(img/bat_4.png); background-repeat: no-repeat; background-position: center; float: left;
	}
#k2z #dostepnoscgraf5 {
	width: 77px; height:100px; background: url(img/bat_5.png); background-repeat: no-repeat; background-position: center; float: left;
	}	
	
	
	
	
	
#k2z #wartoscb {
	width: 88px; font: bold 12px Tahoma; color: #160e86; float: left; margin-top: 20px; text-align: right;
	}
#k2z #wartoscn {
	width: 88px; font: 12px Tahoma; color: #160e86; float: left; margin-top: 2px; text-align: right;
	}
#k2z #usun {
	width: 23px; height: 23px; background: url(img/kb_del1.png); background-repeat: no-repeat; background-position: center; float: left; margin-top: 38px; margin-left: 10px; cursor: pointer; border: none;
	}
#k2z #usun:HOVER {
	background: url(img/kb_del2.png); background-repeat: no-repeat; background-position: center;
	}
#stopka {
	clear: both;
	}
#podsumowanie {
	float: right; margin-top: 20px;
	}
#podsumowanie #sekleft {
	width: 135px; font: bold 12px Tahoma; color: black; margin-top: 4px; text-align: right; float: left;
	}
#podsumowanie #sekright {
	width: 95px; font: bold 12px Tahoma; color: black; margin-top: 4px; text-align: right; float: left;
	}
#przelicz_graf {
	background: url(img/bprzelicz.png); width: 60px; height: 20px; margin-top: 4px; margin-left: 480px; cursor: pointer; border: none;
	}
#przelicz_graf:HOVER {
	background: url(img/bprzelicz1.png);
	}
#podsumowanie2 {
	float: right; border-top: 1px solid; border-top-color: #f8deac; margin-top: 4px;
	}
#podsumowanie2 #sekleft {
	width: 94px; font: bold 12px Tahoma; color: black; margin-top: 4px; text-align: right; float: left;
	}
#podsumowanie2 #sekright {
	width: 95px; font: bold 12px Tahoma; color: black; margin-top: 4px; text-align: right; float: left;
	}
#dozaplaty {
	float: right; border-top: 1px solid; border-top-color: #f8deac; margin-top: 4px;
	}
#dozaplaty #sekleft {
	width: 128px; font: bold 13px Tahoma; color: #160e86; margin-top: 4px; text-align: right; float: left;
	}
#dozaplaty #sekright {
	width: 95px; font: bold 13px Tahoma; color: #160e86; margin-top: 4px; text-align: right; float: left;
	}
#nawigacja {
	height: 24px; float: right;
	}
#nawigacja #dalej { 
	width: 102px; height: 34px; background: url(img/b_dalej1.png); float: right; margin-top: 50px; margin-right: 200px; cursor: pointer; border: none;
	}
#nawigacja #dalej:HOVER {
	background: url(img/b_dalej2.png)
}
#nawigacja #wroc { 
	width: 102px; height: 34px; background: url(img/b_wroc1.png); float: right; margin-top: 50px; margin-right:20px; cursor: pointer;
	}
#nawigacja #wroc:HOVER {
	background: url(img/b_wroc2.png)
}

</style>

<script type='text/javascript'>
function deleteProduct(productId) {
	   var form = document.forms['mainForm'];
	   var el = document.createElement("input");
	   el.type = "hidden";
	   el.name = "productToDelete";
	   el.value = productId;
	   var el2 = document.createElement("input");
	   el2.type = "hidden";
	   el2.name = "deleteBt";
	   el2.value = true;
	   form.appendChild(el);
	   form.appendChild(el2);
	   form.submit();
}
	
</script>

<div id="zbior">
	<div id="b_kosz"></div>
	<div id="b_dane"></div>
	<div id="b_zam"></div>
	<s:form action="ConfirmOrderAction" theme="simple">
		<s:submit id="b_back" name="back" value=""/>
	</s:form>
</div>


<s:form action="ConfirmOrderAction" theme="simple" name="mainForm">
<table cellpadding="0" cellspacing="0">
<tr>

	<td width="29">
		<div id="k1z">
		<div id="topl"></div>
		<div id="topc1">L.p</div>
		<div id="lc"></div>
		</div>
	</td>
	<td width="352">
		<div id="k1z">
		<div id="topc2"><div id="nag">Produkty</div></div>
		<div id="lc"></div>
		</div>
	</td>
	<td width="94">
		<div id="k1z">
		<div id="topc3"><div id="nag1">Cena</div></div>
		<div id="lc"></div>
		</div>
	</td>
	<td width="65">
		<div id="k1z">
		<div id="topc4"><div id="nag1">Ilość</div></div>
		<div id="lc"></div>
		</div>
	</td>
	<td width="83">
		<div id="k1z">
		<div id="topc5"><div id="nag1">Dostępność</div></div>
		<div id="lc"></div>
		</div>
	</td>
	<td width="94">
		<div id="k1z">
		<div id="topc6"><div id="nag1">Wartość</div></div>
		<div id="lc"></div>
		</div>
	</td>
	<td width="43">
		<div id="k1z">
		<div id="topc7"><div id="nag2">Usuń</div></div>
		<div id="topr"></div>
		</div>
	</td>

</tr>

<s:iterator value="#session.order.listOfProducts" status="item" var="it">
<tr>
	<td width="29" height="90">
		<div id="k2z">
		<div id="lp"><s:property value="#item.index + 1" /></div>
		</div></td>
	<td width="352" height="90">
		<div id="k2z">
		<div id="photo"><img alt="" src="${product.image120}" height="80px" width="80px"></div>
		<div id="prodt"><s:property value="product.name"/></div>
		<div id="prodo"><s:property value="product.shortDescription"/></div>
		</div></td>
	<td width="94" height="90">
		<div id="k2z">
		<div id="cenab"><s:property value="priceBruttoString"/> zł</div>
		<div id="cenan"><s:property value="priceNettoString"/> zł</div>
		</div>
	</td>
	<td width="65" height="90">
		<div id="k2z"><div id="ilosc"><s:textfield name="numberOfItem" cssStyle="width: 35px; text-align: center; margin-right: 7px;" /></div></div>
	</td>
	<td width="83" height="90">
		<div id="k2z">
					<c:if test="${product.numberOfItems == 0}">
						<div id="dostepnoscgraf0">
						<div id="dostepnosc">brak</div></div>
					</c:if>
					<c:if test="${product.numberOfItems > 0 and product.numberOfItems < 5}">
						<div id="dostepnoscgraf1">
						<div id="dostepnosc">&lt; 5szt./op</div></div>					
					</c:if>
					<c:if test="${product.numberOfItems >= 5 and product.numberOfItems < 10}">
						<div id="dostepnoscgraf2">
						<div id="dostepnosc">dostępny</div></div>						
					</c:if>
					<c:if test="${product.numberOfItems >= 10 and product.numberOfItems < 50}">
						<div id="dostepnoscgraf3">
						<div id="dostepnosc">dostępny</div></div>			
					</c:if>
					<c:if test="${product.numberOfItems >= 50 and product.numberOfItems < 100}">
						<div id="dostepnoscgraf4">
						<div id="dostepnosc">dostępny</div></div>		
					</c:if>
					<c:if test="${product.numberOfItems >= 100}">
						<div id="dostepnoscgraf5">
						<div id="dostepnosc">dostępny</div></div>					
					</c:if>
		</div>
	</td>
	<td width="94" height="90">
		<div id="k2z">
		<div id="wartoscb"><s:property value="totalPriceBruttoString"/> zł</div>
		<div id="wartoscn"><s:property value="totalPriceNettoString"/> zł</div>
		</div>
	</td>

	<td width="43" height="90">
		<div id="k2z">
			<div id="usun" onclick='deleteProduct(${product.product_id})'></div>
		</div>
	</td>

</tr>
</s:iterator>
</table>


<s:submit id="przelicz_graf" name="count" value="" />
<div id="stopka"></div>
<div id="podsumowanie">
	<div id="stopka"></div>
	<div id="sekleft">Razem brutto:</div><div id="sekright"><s:property value="#session.order.totalPriceBruttoString"/> zł</div>
	<div id="stopka"></div>
	<div id="sekleft">netto:</div><div id="sekright"><s:property value="#session.order.totalPriceNettoString"/> zł</div>
</div>
<div id="stopka"></div>

		<div id="podsumowanie2">
			<div id="sekleft">Rabat:</div><div id="sekright">0 %</div>
			<div id="stopka"></div>
			<div id="sekleft">Transport:</div><div id="sekright"><s:property value="#session.order.transportCostBruttoString"/> zł</div>
		</div>
		<div id="stopka"></div>
			<div id="dozaplaty">
			<div id="sekleft">Razem do zapłaty:</div><div id="sekright"><s:property value="#session.order.totalCostBrutto"/> zł</div>
		</div>
		<div id="stopka"></div>
		
		<div id="nawigacja">
			<s:submit id="dalej" name="next" value="" ></s:submit>
		</div>
</s:form>