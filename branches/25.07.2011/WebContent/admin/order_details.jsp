<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
 		height: 34px; float: left; border-bottom: 1px; border-bottom-color: #d9d5fe; border-bottom-style: solid;
 		}
 	#orders_view #mnl_table {
 		background: url(../img/pa_mnprodlc.png); height: 39px; float: left;
 		}
 	#orders_view #mn_tekst {
 		font: bold 11px/39px Tahoma; color: #5a598d; float: left;
 		}
 	#orders_view #mn_tekst1 {
 		font: 11px/34px Tahoma; color: #101192; float: left;
 		}
 	#orders_view #mn_tekst2 {
 		font: 11px Tahoma; color: #101192; float: left;
 		}
	#orders_view #results {
 		width: 900px; height: 39px; float: left;
		}
		#orders_view #results #tekst1{
			font: bold 16px/39px Tahoma; color: black; float: left;
		}
		#orders_view #bcancel {
		background: url(../img/pz_bdelete.png); background-position: center; background-repeat:no-repeat; width: 19px; height: 34px; float: left; cursor: pointer; border: none; margin-left: 67px;
		}
	#orders_view #summary {
 		width: 370px; height: 150px; background-color:#eae8e8; margin-top:16px; float: left;
		}
	#orders_view #summary #tekst1 {
 		font: bold 14px Tahoma; color: #aaaaad;
		}
	#orders_view #summary #tekst2 {
 		font: 12px Tahoma; color: #aaaaad; float: left;
		}
	#orders_view #summary #tekst3 {
 		font: 30px Tahoma; color: black;
		}
	#orders_view #summary #tekst4 {
 		font: 12px Tahoma; color: #78777a; float: left;
		}
		
#stopka {
clear: both;
}

</style>

<div id="orders_view">
	
	<div id="mainleft"></div>
	<div id="maincenter">
		<div id="maintekst">Przegląd linii zamówień</div>
		</div>
	<div id="mainright"></div>
	<div id="stopka"></div>
	


	<div id="results">
			<div id="tekst1" style="margin-left: 40px;"><b>Zamówienie nr: <s:property value="order.number"/></b></div>
	</div>
	
	<div id="main_add" style="float: right; margin-right: 80px; margin-top: 6px; margin-bottom: 6px;">
	<s:form action="OrderAdminAction" theme="simple">
		<s:submit id="main_addtekst" name="back" value="Wróć"/>
	</s:form>
	</div>



	<div id="stopka"></div>
	
	<!-- 						wiersz tytułowy tabeli							 -->
		
<table style="padding: 0px; border-collapse: collapse; border:0px; border-spacing:0px;">

<tr>

	<td width="30px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 29px;">
			<div id="mn_tekst" style="width: 30px; text-align: center;">L.p</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
		
	<td width="490px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 489px;">
			<div id="mn_tekst" style="margin-left: 4px; text-align: left;">Nazwa produktu</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="120px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 119px;">
			<div id="mn_tekst" style="width: 119px; text-align: center;">Cena</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	
	<td width="120px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 119px;">
			<div id="mn_tekst" style="width: 119px; text-align: center;">Ilość</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	
	<td width="120px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 119px;">
			<div id="mn_tekst" style="width: 119px; text-align: center;">Rabat</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="120px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 119px;">
			<div id="mn_tekst" style="width: 119px; text-align: center;">Wartość</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="150px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 149px;">
			<div id="mn_tekst" style="width: 149px; text-align: center;">Usuń pozycję</div>
			</div>
	</td>
</tr>

<!-- 										wiersz pierwszy tabeli							 -->
	

<s:iterator value="order.listOfProducts" status="stat" var="item">
<s:form action="OrderAdminAction" theme="simple">
<s:hidden name="orderItemId" value="%{#item.orderItemId}"/>	
	
<tr>

	<td width="30px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 30px;">
			<div id="mn_tekst1" style="width: 30px; text-align: center;"><s:property value="#item.count" /></div>
			</div>
	</td>
		
	<td width="490px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 490px;">
			<div id="mn_tekst1" style="margin-left: 4px; text-align: left;"><s:property value="product.name"/></div>
			</div>
	</td>
	
	<td width="120px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 120px;">
			<div id="mn_tekst2" style="width: 116px; text-align: right; margin-right: 4px; margin-top: 2px;"><b><s:property value="priceBrutto"/> zł</b></div>
			<div id="mn_tekst2" style="width: 116px; text-align: right; margin-right: 4px; margin-top: 3px;"><s:property value="priceNetto"/> zł</div>
		</div>
	</td>
	
	
	<td width="120px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 120px;">
			<div id="mn_tekst1" style="width: 120px; text-align: center;"><s:property value="numberOfItem"/> szt.</div>
			</div>
	</td>
	
	
	<td width="120px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 120px;">
			<div id="mn_tekst1" style="width: 120px; text-align: center;">0 %</div>
			</div>
	</td>
	
	<td width="120px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 119px;">
			<div id="mn_tekst2" style="width: 116px; text-align: right; margin-right: 4px; margin-top: 2px;"><b><s:property value="totalPriceBruttoString"/> zł</b></div>
			<div id="mn_tekst2" style="width: 116px; text-align: right; margin-right: 4px; margin-top: 3px;"><s:property value="totalPriceNettoString"/> zł</div>
			</div>
	</td>
	
	<td width="150px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table1" style="width: 150px;">
<%-- 				<s:submit id="bcancel" name="delete" value=""/> --%>
		</div>
	</td>

</tr>

</s:form>
</s:iterator>

</table>

<div id="stopka"></div>

<div id="summary">
	<div id="tekst1" style="margin-left:10px; margin-top:6px;">Warunki płatności:</div>
	<div id="stopka"></div>
	<div id="tekst2" style="margin-left:60px; margin-top:36px;"><b>Sposób zapłaty:</b></div>
	<div id="tekst4" style="margin-left:10px; margin-top:36px;"><b> <s:property value="order.paymentMethod"/> </b></div>
	<div id="stopka"></div>
	<div id="tekst2" style="margin-left:60px; margin-top:16px;"><b>Termin płatności: </b></div>
	<div id="tekst4" style="margin-left:10px; margin-top:16px;"><b></b></div>
</div>

<div id="summary" style="margin-left: 20px;">
	<div id="tekst1" style="margin-left:10px; margin-top:6px;"><b>Dostawa:</b></div>
	<div id="tekst2" style="margin-left:30px; margin-top:16px;"><b>Adres dostawy:</b></div>
	<div id="stopka"></div>
	<div id="tekst4" style="margin-left:80px; margin-top:8px;"><b><s:property value="order.customer.companyName"/></b></div>
	<div id="stopka"></div>
	<div id="tekst4" style="margin-left:80px; margin-top:4px;"><b><s:property value="order.customer.formatCityAndCode"/></b></div>
	<div id="stopka"></div>
	<div id="tekst4" style="margin-left:80px; margin-top:4px;"><b><s:property value="order.customer.formatStreet"/></b></div>
	<div id="stopka"></div>
	<div id="tekst2" style="margin-left:30px; margin-top:16px;"><b>Data dostawy:</b></div>
	<div id="tekst4" style="margin-left:10px; margin-top:16px;"><b><fmt:formatDate pattern="dd-MM-yyyy" value="${order.deliveryDate}"/></b></div>
</div>

<div id="summary" style="margin-left: 20px;">
	<div id="tekst1" style="margin-left:10px; margin-top:6px;"><b>Do zapłaty:</b></div>
	<div id="tekst3" style="width:370px; text-align: center; margin-top:42px;"><b><s:property value="order.totalCostBrutto"/> zł</b></div>

</div>




</div>