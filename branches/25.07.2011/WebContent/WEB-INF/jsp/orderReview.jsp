<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
#glowna {
	width: 760px;
}

#poz_zam {
	height: 42px; float: left;
	}
	#poz_zam #aktualne{
		background: url(img/pz_aktualne.png); background-repeat: no-repeat; width: 187px; height: 42px; float: left; background-position: bottom; cursor: pointer;border: none;
	}
	#poz_zam #aktualne_activ {
		background: url(img/pz_aktualne1.png); background-repeat: no-repeat; width: 187px; height: 42px; float: left; background-position: bottom; cursor: pointer; 
	}
	#poz_zam #historia{
		background: url(img/pz_historia.png); background-repeat: no-repeat; width: 187px; height: 42px; margin-left: 6px; float: left; background-position: bottom;  cursor: pointer;border: none;
	}
	#poz_zam #historia_activ {
		background: url(img/pz_historia1.png); background-repeat: no-repeat; width: 187px; height: 42px; margin-left: 6px; float: left; background-position: bottom;  cursor: pointer; 
	}
	
#poz_title {
	height: 29px; float: left;
	}
	#poz_title #sekleft {
		background: url(img/pz_topl.png); width: 7px; height: 29px; float: left;
	}
	#poz_title #sekright {
		background: url(img/pz_topr.png); width: 7px; height: 29px; float: left;
	}
	#poz_title #sekc1 {
		background: url(img/pz_topc.png); width: 600px; height: 29px; float: left; font: bold 11px/29px Tahoma; color: #16117c; text-align: left; letter-spacing: 1px;
	}
	#poz_title #sekc2 {
		background: url(img/pz_topc.png); width: 146px; height: 29px; float: left; font: bold 11px/29px Tahoma; color: #16117c; text-align: left; letter-spacing: 1px;
	}

#poz_tab {
	height: 27px;
	}
	#poz_tab #seklc {
		background: url(img/pz_botlc.png); width: 2px; height: 27px; float: left; text-align: center ;
		}
	#poz_tab #sek0 {
		background: url(img/pz_botc.png); width: 32px; height: 27px; float: left;
		}
	#poz_tab #sek1 {
		background: url(img/pz_botc.png); width: 118px; height: 27px; float: left;
		}
	#poz_tab #sek2 {
		background: url(img/pz_botc.png); width: 90px; height: 27px; float: left;
		}
	#poz_tab #sek3 {
		background: url(img/pz_botc.png); width: 140px; height: 27px; float: left;
		}
	#poz_tab #sek4 {
		background: url(img/pz_botc.png); width: 110px; height: 27px; float: left;
		}
	#poz_tab #sek5 {
		background: url(img/pz_botc.png); width: 76px; height: 27px; float: left;
		}
	#poz_tab #nag {
		text-align: center; font: 11px/27px Tahoma; color: #16117c;
		}
	
	
#poz_tab1 {
	height: 40px; border-bottom: 1px solid; border-bottom-color: #f8deac;
	}
	#poz_tab1 #area0 {
		width: 32px; height: 40px; float: left; text-align: center; font: bold 11px/40px Tahoma; color: #16117c; 
		}
	#poz_tab1 #area1 {
		width: 118px; height: 40px; float: left; text-align: center; font: bold 11px/40px Tahoma; color: #16117c; 
		}
	#poz_tab1 #area2 {
		width: 90px; height: 40px; float: left; text-align: center; font: bold 11px/40px Tahoma; color: #16117c; 
		}
	#poz_tab1 #area2 {
		width: 90px; height: 40px; float: left; text-align: center; font: bold 11px/40px Tahoma; color: #16117c; 
		}
	#poz_tab1 #area3 {
		width: 140px; height: 40px; float: left; text-align: center; font: bold 11px/40px Tahoma; color: #16117c; 
		}
	#poz_tab1 #wartoscb {
		width: 90px; float: left; text-align: right; font: bold 11px Tahoma; color: #16117c; margin-top: 8px;
		}
	#poz_tab1 #wartoscn {
		width: 90px; float: left; text-align: right; font: 11px Tahoma; color: #16117c; margin-top: 2px;
		}
	#poz_tab1 #bedit {
		background: url(img/pz_bedit.png); background-position: center; background-repeat:no-repeat; width: 16px; height: 40px; float: left; margin-left: 19px; cursor: pointer; border: none;
		}
	#poz_tab1 #bmodify {
		background: url(img/pz_bmodify.png); background-position: center; background-repeat:no-repeat; width: 18px; height: 40px; float: left; margin-left: 12px; cursor: pointer; border: none;
		}
	#poz_tab1 #bcancel {
		background: url(img/pz_bdelete.png); background-position: center; background-repeat:no-repeat; width: 19px; height: 40px; float: left; margin-left: 12px; cursor: pointer; border: none;
		}
	#poz_tab1 #binvoice {
		background: url(img/pz_binvoice.png); background-position: center; background-repeat:no-repeat; width: 20px; height: 40px; margin-left:28px; float: left; cursor: pointer; border: none;
		}
	#poz_tab1 #binvoice:HOVER {
		background: url(img/pz_binvoice1.png); background-position: center; background-repeat:no-repeat; width: 20px; height: 40px; margin-left:28px; float: left; cursor: pointer;
		}

#table_background {
		background-color: #fdfaf0;
		}
		
#stopka {
	clear: both;
	}

</style>
<s:form theme="simple" action="OrderReviewAction">
<div id="poz_zam">
	<s:if test="#request.history != true">
		<div id="aktualne_activ"></div>
		<s:submit id="historia" name="history" value=""></s:submit>
	</s:if>
	<s:else>
		<s:submit id="aktualne" name="current" value=""></s:submit>
		<div id="historia_activ"></div>
	</s:else>
</div>
<div id="stopka"></div>


<div id="poz_title">
	<div id="sekleft"></div>
	<div id="sekc1">Liczba zamówień:</div>
	<div id="sekc2">Strona:</div>
	<div id="sekright"></div>
</div>
<div id="stopka"></div>

<table cellpadding="0" cellspacing="0">
<tr>

	<td width="34">
		<div id="poz_tab">
		<div id="sek0"><div id="nag">L.p.</div></div>
		<div id="seklc"></div>
		</div>
		</td>
		
	<td width="120">
		<div id="poz_tab">
		<div id="sek1"><div id="nag">Numer zamówienia</div></div>
		<div id="seklc"></div>
		</div>
		</td>
	
	<td width="92">
		<div id="poz_tab">
		<div id="sek2"><div id="nag">Data utworzenia</div></div>
		<div id="seklc"></div>
		</div>
		</td>

	<td width="92">
		<div id="poz_tab">
		<div id="sek2"><div id="nag">Data dostawy</div></div>
		<div id="seklc"></div>
		</div>
		</td>
	
	<td width="142">
		<div id="poz_tab">
		<div id="sek3"><div id="nag">Status zamówienia</div></div>
		<div id="seklc"></div>
		</div>
		</td>
	
	<td width="92">
		<div id="poz_tab">
		<div id="sek2"><div id="nag">Wartość</div></div>
		<div id="seklc"></div>
		</div>
		</td>
	
	<td width="112">
		<div id="poz_tab">
		<div id="sek4"><div id="nag">Operacje</div></div>
		<div id="seklc"></div>
		</div>
		</td>
	
	<td width="76">
		<div id="poz_tab">
		<div id="sek5"><div id="nag">Faktura VAT</div></div>
		</div>
		</td>
	
</tr>

<s:iterator value="orderList" status="item" var="it">
<tr>

		<td width="34" height="40">
			<div id="poz_tab1">
			<div id="area0"><s:property value="#item.count" /></div>
			</div>
			</td>
			
		<td width="120" height="40">
			<div id="poz_tab1">
			<div id="area1">123/S/2011</div>
			</div>
			</td>
	
		<td width="92" height="40">
			<div id="poz_tab1">
			<div id="area2"><s:property value="orderDate"/></div>
			</div>
			</td>

		<td width="92">
			<div id="poz_tab1">
			<div id="area2"><s:property value="deliveryDate"/></div>
			</div>
			</td>
	
		<td width="142">
			<div id="poz_tab1">
			<div id="area3"><s:property value="state"/></div>
			</div>
			</td>
	
		<td width="92">
			<div id="poz_tab1">
			<div id="wartoscb"><s:property value="totalCostBrutto"/> zł</div>
			<div id="wartoscn"><s:property value="totalCostNetto"/> zł</div>
			</div>
			</td>
		<s:form id="forToRow" action="OrderReviewAction" theme="simple">
			<s:hidden name="orderId" value="%{orderId}" />
				
			<td width="112">
				<div id="poz_tab1">
				<s:submit id="bedit" name="view" value="" />
<!-- 				<div id="bmodify"></div> -->
				<s:if test="state == 'Oczekuje'">
					<s:submit id="bcancel" name="delete" value="" />
				</s:if>
				</div>
				</td>
		
			<td width="76">
				<div id="poz_tab1">
				
				<s:if test="state == 'Oczekuje'">
					<s:submit id="binvoice" name="invoice" value="" />
				</s:if>
<!-- 				<div id="binvoice"></div> -->
				</div>
			</td>
		</s:form>
		
	</tr>
	
</s:iterator>

</table>
		
</s:form>


