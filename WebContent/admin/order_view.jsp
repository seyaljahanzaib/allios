<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
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
 		height: 60px; float: left; border-bottom: 1px; border-bottom-color: #d9d5fe; border-bottom-style: solid;
 		}
 	 #orders_view #mnl_table {
 		background: url(../img/pa_mnprodlc.png); height: 39px; float: left;
 		}
 	 #orders_view #mn_tekst {
 		font: bold 11px/39px Tahoma; color: #5a598d; float: left;
 		}
 	 #orders_view #mn_tekst1 {
 		font: 11px/60px Tahoma; color: #101192; float: left;
 		}
 	 #orders_view #mn_tekst2 {
 		font: 11px Tahoma; color: #101192; float: left;
 		}
	#orders_view #results {
 		width: 1150px; height: 39px; float: left;
		}
		#orders_view #results #tekst1{
			font: 12px/39px Tahoma; color: black; float: left;
		}
		#orders_view #results #tekst2{
			font: 12px Tahoma; color: black; float: left;
		}
		
		#orders_view #bedit {
		background: url(../img/pz_bedit.png); background-position: center; background-repeat:no-repeat; width: 16px; height: 60px; float: left; margin-left: 27px; cursor: pointer; border: none;
		}
		#orders_view #bsave {
		background: url(../img/save_button.png); background-position: center; background-repeat:no-repeat; width: 20px; height: 60px; float: left; margin-left: 12px; cursor: pointer; border: none;
		}
		#orders_view #bcancel {
		background: url(../img/pz_bdelete.png); background-position: center; background-repeat:no-repeat; width: 19px; height: 60px; float: left; margin-left: 12px; cursor: pointer; border: none;
		}
		#orders_view #binvoice {
		background: url(../img/pz_binvoice.png); background-position: bottom; background-repeat:no-repeat; width: 60px; height: 40px; margin-top: 10px; font: 11px Tahoma; color: #101192; text-align:center; float: left; cursor: pointer; border: none;
		}
		#orders_view #binvoice:HOVER {
		background: url(../img/pz_binvoice1.png); background-position: bottom; background-repeat:no-repeat; width: 60px; height: 40px; margin-top: 10px; font: 11px Tahoma; color: #101192; text-align:center; float: left; cursor: pointer;
		}
		#orders_view #binvoice_copy {
		background: url(../img/pz_binvoice.png); background-position: bottom; background-repeat:no-repeat; width: 60px; height: 40px; margin-top: 10px; font: 11px Tahoma; color: #101192; text-align:center; float: left; cursor: pointer; border: none;
		}
		#orders_view #binvoice_copy:HOVER {
		background: url(../img/pz_binvoice1.png); background-position: bottom; background-repeat:no-repeat; width: 60px; height: 40px; margin-top: 10px; font: 11px Tahoma; color: #101192; text-align:center; float: left; cursor: pointer; border: none;
		}
			
#stopka {
clear: both;
}

</style>

<div id="orders_view">
	
	<div id="mainleft"></div>
	<div id="maincenter">
		<div id="maintekst">Przegląd zamówień</div>
		</div>
	<div id="mainright"></div>
	<div id="stopka"></div>
	
<s:form action="OrderAdminAction" theme="simple">
	<div id="mainback">
		<div id="maintekst1" style="margin-left: 20px; margin-top: 10px; text-align: left;">Filtry</div>
		<div id="stopka"></div>
		
		<div id="maintekst1" style="margin-top: 8px;">Numer zamówienia:</div>
		<div id="main_combo" style="width:240px; margin-top: 8px;"></div>
		
		<div id="maintekst1" style="margin-top: 8px;">Data utworzenia:</div>
		<div id="main_graf" style="width:120px; margin-top: 8px;"></div>
		<div id="main_graf" style="width:120px; margin-top: 8px; margin-left: 10px;"></div>
		<div id="stopka"></div>
		
		
		<div id="maintekst1" style="margin-top: 14px;">Nazwa firmy:</div>
		<div id="main_combo" style="width:240px; margin-top: 14px;"></div>
		
		<div id="maintekst1" style="margin-top: 14px;">Data dostawy:</div>
		<div id="main_graf" style="width:120px; margin-top: 14px;"></div>
		<div id="main_graf" style="width:120px; margin-top: 14px; margin-left: 10px;"></div>
		<div id="stopka"></div>
		
		
		<div id="maintekst1" style="margin-top: 14px;">Miejscowość:</div>
		<div id="main_combo" style="width:240px; margin-top: 14px;"></div>
		
		<div id="maintekst1" style="margin-top: 14px;">Wartość:</div>
		<div id="main_graf" style="width:120px; margin-top: 14px;"></div>
		<div id="main_graf" style="width:120px; margin-top: 14px; margin-left: 10px;"></div>
		<div id="stopka"></div>
		
		<div id="maintekst1" style="margin-top: 14px;">Status:</div>
<%-- 		<s:select id="main_combo" name="statusSearch" list="statusList" style="width: 120px;"> --%>
<!-- 			<option value="Oczekuje" >Wszystkie</option> -->
<!-- 			<option value="Anulowane" >Anulowane</option> -->
<!-- 			<option value="Oczekuje" >Oczekuje</option> -->
<!-- 			<option value="Potwierdzone">Potwierdzone</option> -->
<!-- 			<option value="W przygotowaniu">W przygotowaniu</option> -->
<!-- 			<option value="Wysłane">Wysłane</option> -->
<!-- 			<option value="Dostarczone">Dostarczone</option> -->
<%-- 		</s:select> --%>




			<div id="stopka"></div>
		
		
		<div id="main_add" style="float: right; margin-right: 80px;">
			<div id="main_addtekst">Nowe zam.</div>
		</div>
		
		<div id="main_add" style="float: right; margin-right: 10px;">
			<div id="main_addtekst">Szukaj</div>
		</div>
		
	</div>
</s:form>
	
	<div id="results">
<!-- 		<div id="tekst1" style="margin-left: 40px;"><b>Liczba zamówień:	56</b></div> -->
<!-- 		<div id="tekst2" style="width: 453px; text-align: right; margin-top: 4px;"><b>Wartość brutto:</b></div> -->
<!-- 		<div id="tekst2" style="width: 116px; text-align: right; margin-top: 4px;"><b>22 460,00 zł</b></div> -->
<!-- 		<div id="tekst2" style="width: 453px; text-align: right; margin-top: 3px;">netto:</div> -->
<!-- 		<div id="tekst2" style="width: 116px; text-align: right; margin-top: 3px;">20 460,00 zł</div> -->
	</div>


	<div id="stopka"></div>

							
							
							<!-- wiersz tytułowy tabeli -->


<table style="padding: 0px; border-collapse: collapse; border:0px; border-spacing:0px;">
<tr>
		
	<td width="150px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 149px;">
			<div id="mn_tekst" style="width: 149px; text-align: center;">Numer zamówienia</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="230px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 229px;">
			<div id="mn_tekst" style="width: 229px; text-align: center;">Nazwa firmy</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	
	<td width="120px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 119px;">
			<div id="mn_tekst" style="width: 119px; text-align: center;">Data utworzenia</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	
	<td width="120px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 119px;">
			<div id="mn_tekst" style="width: 119px; text-align: center;">Data dostawy</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="120px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 119px;">
			<div id="mn_tekst" style="width: 119px; text-align: center;">Wartość zam.</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="150px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 149px;">
			<div id="mn_tekst" style="width: 149px; text-align: center;">Status</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="120px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 119px;">
			<div id="mn_tekst" style="width: 119px; text-align: center;">Faktura VAT</div>
			</div>
			<div id="mnl_table" style="width: 1px;"></div>
	</td>
	
	<td width="140px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="mn_table" style="width: 140px;">
			<div id="mn_tekst" style="width: 140px; text-align: center;">Operacje</div>
			</div>
	</td>
	

</tr>

									
									
									
<!-- 									wiersz pierwszy tabeli  -->
<s:iterator value="orders" status="stat" var="item">
<s:form action="OrderAdminAction" theme="simple">
<s:hidden name="orderId" value="%{#item.orderId}"/>
	<tr>
	
		<td width="150px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="mn_table1" style="width: 150px;">
				<s:if test="%{external == true}">
					<div id="mn_tekst1" style="width: 149px; text-align: center; color : red;"><b><s:property value="number"/></b></div>
				</s:if>
				<s:else>
					<div id="mn_tekst1" style="width: 149px; text-align: center;"><b><s:property value="number"/></b></div>
				</s:else>
				</div>
		</td>
			
		<td width="230px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="mn_table1" style="width: 230px;">
				<s:if test="%{external == true}">
					<div id="mn_tekst2" style="margin-left: 8px; margin-top: 5px;"><b><s:property value="ordCompanyName"/></b></div>
					<div id="stopka"></div>
					<div id="mn_tekst2" style="margin-left: 8px; margin-top: 3px;"><s:property value="ordZipCode"/> <s:property value="ordCity"/></div>
					<div id="stopka"></div>
					<div id="mn_tekst2" style="margin-left: 8px; margin-top: 3px;"><s:property value="ordStreet"/></div>
				</s:if>
				<s:else>
					<div id="mn_tekst2" style="margin-left: 8px; margin-top: 5px;"><b><s:property value="customer.companyName"/></b></div>
					<div id="stopka"></div>
					<div id="mn_tekst2" style="margin-left: 8px; margin-top: 3px;"><s:property value="customer.formatCityAndCode"/></div>
					<div id="stopka"></div>
					<div id="mn_tekst2" style="margin-left: 8px; margin-top: 3px;"><s:property value="customer.formatStreet"/></div>
				</s:else>
			

				</div>
		</td>
		
		<td width="120px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="mn_table1" style="width: 120px;">
				<div id="mn_tekst1" style="width: 120px; text-align: center;"><fmt:formatDate pattern="dd-MM-yyyy" value="${item.orderDate}"/></div>
				</div>
		</td>
		
		
		<td width="120px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="mn_table1" style="width: 120px;">
				<div id="mn_tekst1" style="width: 120px; text-align: center;"><fmt:formatDate pattern="dd-MM-yyyy" value="${item.deliveryDate}"/></div>
				</div>
		</td>
		
		
		<td width="120px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="mn_table1" style="width: 120px;">
				<div id="mn_tekst2" style="width: 116px; text-align: right; margin-top: 20px; margin-right: 4px;"><b><s:property value="totalCostBrutto"/> zł</b></div>   
				<div id="mn_tekst2" style="width: 116px; text-align: right; margin-top: 3px; margin-right: 4px;"><s:property value="totalCostNetto"/> zł</div>
				</div>
		</td>
		
		<td width="150px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="mn_table1" style="width: 150px;">
				<div id="mn_tekst1" style="width: 150px; text-align: center;"><b>
					<c:if test="${item.state != 'Anulowane' and item.state != 'Dostarczone'}">
						<select name="newStatus" style="width:120px;" >
							<c:if test="${item.state eq 'Oczekuje'}">
								<option value="Oczekuje" selected="selected" >Oczekuje</option>
								<option value="Potwierdzone" >Potwierdzone</option>
							</c:if>
							<c:if test="${item.state eq 'Potwierdzone'}">
								<option value="Potwierdzone" selected="selected" >Potwierdzone</option>
								<option value="W przygotowaniu" >W przygotowaniu</option>
							</c:if>
							<c:if test="${item.state eq 'W przygotowaniu'}">
								<option value="W przygotowaniu" selected="selected" >W przygotowaniu</option>
								<option value="Wysłane" >Wysłane</option>
							</c:if>
							<c:if test="${item.state eq 'Wysłane'}">
								<option value="Wysłane" selected="selected" >Wysłane</option>
								<option value="Dostarczone" >Dostarczone</option>
							</c:if>
						</select>
					</c:if>
					
					<c:if test="${item.state eq 'Anulowane'}">Anulowane</c:if>
					<c:if test="${item.state eq 'Dostarczone'}">Dostarczone</c:if>

				</b></div>
				</div>
		</td>
		
		<td width="120px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="mn_table1" style="width:120px;">
				<div id="binvoice">Oryginał</div>
				<div id="binvoice_copy">Kopia</div>
				</div>
		</td>
		
		<td width="140px" height="60px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="mn_table1" style="width: 140px;">
				<s:submit id="bedit" name="edit" value="" />
				<c:if test="${item.state != 'Anulowane' and item.state != 'Dostarczone'}">
					<s:submit id="bsave" name="save" value="" />
				</c:if>
				<s:submit id="bcancel" name="cancel" value="" />
				</div>
		</td>
		
	</tr>
</s:form>
</s:iterator>

</table>

</div>