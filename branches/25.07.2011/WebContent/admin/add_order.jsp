<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>

#add_order {
	width: 1150px;
}
	
	#add_order #maintekst {
		font: bold 12px/30px Tahoma; color: #ffffff; text-align: left; margin-left: 3px;
		}
	#add_order #mainleft {
		background: url(../img/pa_titlel.png); width: 6px; height: 30px; float: left;
		}
	#add_order #maincenter {
		background: url(../img/pa_titlec.png); width: 1138px; height: 30px; float: left;
		}
	#add_order #mainright {
		background: url(../img/pa_titler.png); width: 6px; height: 30px; float: left;
		}
	#add_order #mainback {
		width: 1150px; height: 300px; background-color: #f3f2fc; margin-top:2px; float: left;
		}
	#add_order #maintekst1 {
		width: 150px; font: bold 11px/25px Tahoma; color: #101192; text-align: right; margin-left: 20px; margin-top: 40px; float: left;
		}
	#add_order #maintekst2 {
		width: 150px; font: bold 12px/25px Tahoma; color: #101192; text-align: right; margin-left: 20px; margin-top: 40px; float: left;
		}
	#add_order #main_graf {
		height: 25px; margin-top: 40px; margin-left: 20px; float: left; 
		}
	#add_order #main_combo {
		height: 25px; margin-top: 40px; margin-left: 20px; float: left; font: 12px/25px Tahoma; color: #160e86;
		}
	#add_order #main_add {
		background: url(../img/pa_button.png); width: 92px; height: 33px; float: left; cursor: pointer; 
		}
	#add_order #main_addtekst {
		width: 92px; font: bold 12px/30px Tahoma; color: #101192; text-align: center; border: none; background-color: transparent; cursor: pointer; float: left;
		}
 	#add_order #main_addtekst:HOVER {
 		width: 92px; font: bold 12px/30px Tahoma; color: #101192; text-align: center; text-decoration: underline; border: none; background-color: transparent; cursor: pointer; float: left;
 		}
	#add_order #mn_table {
 		background: url(../img/pa_mnprodc.png); height: 39px; float: left;
 		}
 	 #add_order #mn_table1 {
 		height: 34px; float: left; border-bottom: 1px; border-bottom-color: #d9d5fe; border-bottom-style: solid;
 		}
 	 #add_order #mnl_table {
 		background: url(../img/pa_mnprodlc.png); height: 39px; float: left;
 		}
 	 #add_order #mn_tekst {
 		font: bold 11px/39px Tahoma; color: #5a598d; float: left;
 		}
 	 #add_order #mn_tekst1 {
 		font: 11px/34px Tahoma; color: #101192; float: left;
 		}
 	 #add_order #mn_tekst2 {
 		font: 11px Tahoma; color: #101192; float: left;
 		}
 	 #add_order #mn_tekst3 {
 		font: 10px Tahoma; color: #101192; float: left;
 		}
 	#add_order #bcancel {
		background: url(../img/pz_bdelete.png); background-position: center; background-repeat:no-repeat; width: 19px; height: 30px; float: left; margin-left: 55px; cursor: pointer; border: none;
		}
 		
	#add_order #results {
 		width: 1150px; height: 39px; float: left;
		}
		#add_order #results #tekst1{
			font: 12px/39px Tahoma; color: black; float: left;
		}
		#add_order #results #tekst2{
			font: 12px Tahoma; color: black; float: left;
		}
 		
#stopka {
clear: both;
}

</style>

<div id="add_order">
	
	<div id="mainleft"></div>
	<div id="maincenter">
		<div id="maintekst">Zamówienie zewnętrzne</div>
		</div>
	<div id="mainright"></div>
	<div id="stopka"></div>
	
	<s:form action="ExternalOrderAdminAction" theme="simple"> 
		<div id="mainback">
			<div id="maintekst2" style="margin-left: 20px; margin-top: 10px; text-align: left;">Zamówienie specjalne:</div>
			<div id="stopka"></div>
			
			<div id="maintekst1" style="margin-top: 16px;">Producent:</div>
			<div id="main_combo" style="width:240px; margin-top: 16px;"></div>
			
			<div id="maintekst1" style="margin-top: 16px;">Data utworzenia:</div>
			<div id="main_combo" style="width:100px; margin-top: 16px;"><fmt:formatDate pattern="dd-MM-yyyy" value="${data}"/></div>
			
			<div id="maintekst1" style="margin-top: 16px;">Aktualny stan:</div>
			<div id="main_graf" style="width:80px; margin-top: 16px;"></div>
			<div id="stopka"></div>
			
			<div id="maintekst1" style="margin-top: 14px;">Nazwa produktu:</div>
				<select name="productID" id="main_combo" style="width:240px; margin-top:16px; height:25px;">
					<c:forEach items="${products}" var="item" varStatus="loop">
						<c:if test="${loop.index == 0}">
							<option selected="selected" value="${item.product_id}">${item.name}</option>
						</c:if>
						<c:if test="${loop.index != 0}">
							<option value="${item.product_id}">${item.name}</option>
						</c:if>
					</c:forEach>
				</select>
			
			
			<div id="maintekst1" style="margin-top: 14px;">Nazwa odbiorcy:</div>
			<div id="main_graf" style="width:300px; margin-top: 14px;"><s:textfield name="order.ordCompanyName" style="width:300px; height:20px;"/></div>
			<div id="stopka"></div>
			
			<div id="maintekst1" style="margin-top: 14px;">Ilość:</div>
			<div id="main_graf" style="width:100px; margin-top: 14px;"><s:textfield name="quantity" style="width:100px; height:20px;"/></div>
			
			<div id="maintekst1" style="margin-top: 16px; margin-left: 160px;">Ulica:</div>
			<div id="main_graf" style="width:300px; margin-top: 16px;"><s:textfield name="order.ordStreet" style="width:300px; height:20px;"/></div>
			<div id="stopka"></div>
			
			<div id="maintekst1" style="margin-top: 14px;">Rabat:</div>
			<div id="main_graf" style="width:100px; margin-top: 16px;"><s:textfield name="order.ordDiscount" style="width:100px; height:20px;"/></div>
			
			<div id="maintekst1" style="margin-left:160px; margin-top: 16px;">Kod pocztowy:</div>
			<div id="main_graf" style="width:100px; margin-top: 16px;"><s:textfield name="order.ordZipCode" style="width:100px; height:20px;"/></div>
			
			<div id="maintekst1" style="margin-top: 16px;">Miejscowość:</div>
			<div id="main_graf" style="width:150px; margin-top: 16px;"><s:textfield name="order.ordCity" style="width:150px; height:20px;"/></div>
			<div id="stopka"></div>
			
			<div id="maintekst1" style="margin-top: 16px;">Rodzaj płatności:</div>
			<select name="productID" id="main_combo" style="width:240px; margin-top:16px; height:25px;">
			</select>
			
			<div id="maintekst1" style="margin-top: 16px;">NIP:</div>
			<div id="main_graf" style="width:60px; margin-top: 16px;"><s:textfield name="order.ordNip" style="width:150px; height:20px;"/></div>
			<div id="stopka"></div>
			
			<div id="main_add" style="float: right; margin-right: 80px; margin-top: 10px;">
				<s:submit id="main_addtekst" value="Utwórz Zam." name="create" cssStyle="width:92px; height:30px;"/>
			</div>
			<div id="main_add" style="float: right; margin-right: 20px; margin-top: 10px;">
					<s:submit id="main_addtekst" value="Dodaj" name="add" cssStyle="width:92px; height:30px;"/>
			</div>
			<div id="stopka"></div>
		</div>
		
	</s:form>	
	
		<div id="results">
<!-- 			<div id="tekst1" style="margin-left: 40px;"><b>Liczba dodanych pozycji:	56</b></div> -->
<!-- 			<div id="tekst2" style="width: 573px; text-align: right; margin-top: 4px;"><b>Wartość brutto:</b></div> -->
<!-- 			<div id="tekst2" style="width: 112px; text-align: right; margin-top: 4px;"><b>22 460,00 zł</b></div>			 -->
<!-- 			<div id="tekst2" style="width: 573px; text-align: right; margin-top: 3px;">netto:</div> -->
<!-- 			<div id="tekst2" style="width: 112px; text-align: right; margin-top: 3px;">20 460,00 zł</div> -->
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
	
	<td width="120px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 119px;">
			<div id="mn_tekst" style="width: 119px; text-align: center;">Producent</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	
	<td width="100px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 99px;">
			<div id="mn_tekst" style="width: 99px; text-align: center;">Cena</div>
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
			<div id="mn_tekst" style="width: 69px; text-align: center;">Rabat</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="120px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 119px;">
			<div id="mn_tekst" style="width: 119px; text-align: center;">Wartość</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="120px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 119px;">
			<div id="mn_tekst" style="width: 119px; text-align: center;">Skład</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="130px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 130px;">
			<div id="mn_tekst" style="width: 130px; text-align: center;">Usuń pozycję</div>
			</div>
	</td>
</tr>

<!-- 										wiersz pierwszy tabeli							 -->

<c:forEach items="${order.listOfProducts}" var="item" varStatus="loop">
	<tr>
	
		<td width="30px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="mn_table1" style="width: 30px;">
				<div id="mn_tekst1" style="width: 30px; text-align: center;">${loop.index +1}</div>
				</div>
		</td>
			
		<td width="390px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="mn_table1" style="width: 390px;">
				<div id="mn_tekst1" style="margin-left: 4px; text-align: left;">${item.product.name}</div>
				</div>
		</td>
		
		<td width="120px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="mn_table1" style="width: 120px;">
				<div id="mn_tekst1" style="width: 120px; text-align: center;">${item.product.producer}</div>
				</div>
		</td>
		
		
		<td width="100px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="mn_table1" style="width: 100px;">
				<div id="mn_tekst2" style="width: 96px; text-align: right; margin-right: 4px; margin-top: 2px;"><b>${item.priceBruttoString} zł</b></div>
				<div id="mn_tekst2" style="width: 96px; text-align: right; margin-right: 4px; margin-top: 3px;">${item.priceNettoString} zł</div>
				</div>
		</td>
		
		
		<td width="70px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="mn_table1" style="width: 70px;">
				<div id="mn_tekst1" style="width: 70px; text-align: center;">${item.numberOfItem}</div>
				</div>
		</td>
		
		<td width="70px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="mn_table1" style="width: 70px;">
				<div id="mn_tekst1" style="width: 70px; text-align: center;">0%</div>
				</div>
		</td>
		
		<td width="120px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="mn_table1" style="width: 119px;">
				<div id="mn_tekst2" style="width: 116px; text-align: right; margin-right: 4px; margin-top: 2px;"><b>${item.totalPriceBruttoString} zł</b></div>
				<div id="mn_tekst2" style="width: 116px; text-align: right; margin-right: 4px; margin-top: 3px;">${item.totalPriceNettoString} zł</div>
				</div>
		</td>
		
		<td width="120px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="mn_table1" style="width: 119px;">
				<div id="mn_tekst1" style="width: 119px; text-align: center;">${item.product.storage}</div>
				</div>
		</td>
		
		<td width="130px" height="34px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="mn_table1" style="width: 130px;">
				<div id="bcancel"></div>
				</div>
		</td>
	
	
	</tr>
</c:forEach>	
</table>
		
</div>
