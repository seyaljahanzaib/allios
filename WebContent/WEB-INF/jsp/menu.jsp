<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>			
#searcher {
	height: 110px; margin-top: 10px;
	}
	#searcher #sekleft {
		background: url(img/s_l.png); width: 10px; height: 110px; float: left; 
		}
	#searcher #sekright {
		background: url(img/s_r.png); width: 10px; height: 110px; float: left; 
		}
	#searcher #sekcenter {
		background: url(img/s_c.png); width: 210px; height: 110px; float: left; 
		}
	#searcher #arealeft {
		background: url(img/sp_l.png); width: 6px; height: 24px; float: left; margin-top: 19px; margin-left: 9px;
		}
	#searcher #areacenter {
		background: url(img/sp_c.png); width: 180px; height: 24px; float: left; margin-top: 19px;
		}
	#searcher #arearight {
		background: url(img/sp_r.png); width: 6px; height: 24px; float: left; margin-top: 19px;
		}
	#searcher #box {
		width: 17px; height: 22px; float: left; margin-top: 7px; text-align: right; margin-left: 15px;
		}
	#searcher #wopisach {
		font: 11px/22px Tahoma; color: #160e86; float: left; margin-top: 7px; text-align: left; margin-left: 6px;
		}
	#searcher #zaawansowane {
		width: 210px; font: bold 11px Tahoma; color: #160e86; float: left; margin-top: 8px; text-align: center; cursor: pointer;
		}
	#searcher #zaawansowane:HOVER {
		width: 210px; font: bold 11px Tahoma; color: #160e86; float: left; margin-top: 8px; text-align: center; text-decoration: underline; 
		}
	#searcher #button {
		background: url(img/s_button1.png); width: 86px; height: 22px; float: left; margin-top: 7px; margin-left: 29px; border: none; cursor: pointer;
		}
	#searcher #button:HOVER {
		background: url(img/s_button2.png); 
		}
	#searcher #linia {
		background: url(img/sline.png); width: 190px; height: 2px; float: left; margin-top: 8px; margin-left: 10px;
		}
#twojemenu {
	width: 230px; height: 29px; cursor: pointer; margin-bottom: 1px; margin-top: 6px; float: left; 
	}
		#twojemenu #sekleft {
			background: url(img/k_but_l.png); width: 7px; height: 29px; float: left;
			}
		#twojemenu #sekcenter {
			background: url(img/k_but_c.png); width: 216px; height: 29px; font: 13px/29px Tahoma; color: #ffffff; text-align: center; float: left;
			}
		#twojemenu #point {
			background: url(img/tm_k2.png); background-position: center; background-repeat: no-repeat; width: 10px; height: 29px; margin-left: 5px; float: left;
			}
		#twojemenu #point:HOVER {
			background: url(img/tm_k1.png); background-position: center; background-repeat: no-repeat; width: 10px; height: 29px; margin-left: 5px; float: left;
			}	
		#twojemenu #point1 {
			background: url(img/tm_k1.png); background-position: center; background-repeat: no-repeat; width: 10px; height: 29px; margin-left: 5px; float: left;
			}
		#twojemenu #point1:HOVER {
			background: url(img/tm_k2.png); background-position: center; background-repeat: no-repeat; width: 10px; height: 29px; margin-left: 5px; float: left;
			}
		#twojemenu #tekst {
			font: 13px/29px Tahoma; color: #ffffff; width: 176px; margin-left: 20px; text-align: center; float: left;
			}
		#twojemenu #sekright {
			background: url(img/k_but_r.png); width: 7px; height: 29px; float: left;
			}

#tmenuback {
			background: url(img/k_bc.png); width: 230px; height: 25px; float: left; cursor: pointer;
		}
#tmenuback:HOVER {
			background: url(img/k_bck.png); width: 230px; height: 25px; float: left;
		}
	#tmenuback #zapis {
			font: 11px/25px Tahoma; color: #160e86; width: 188px; height: 25px; margin-left: 6px; float: left;
		}
	#tmenuback #zapis:HOVER {
			font: bold 11px/25px Tahoma; color: #160e86; width: 188px; height: 25px; margin-left: 6px; float: left; text-decoration: underline;
		}
	#tmenuback #pointer {
			background: url(img/k_p1.png); background-repeat: no-repeat; background-position:center; width: 6px; height: 25px; margin-left: 30px; float: left;
		}
#tmenu_linia {
			background: url(img/k_bcl.png); width: 230px; height: 1px; float: left;
		}
	
#menukat {
			width: 230px; height: 29px; float: left; margin-bottom: 1px; margin-top: 6px;
			}
		#menukat #sekleft {
			background: url(img/k_but_l.png); width: 7px; height: 29px; float: left;
			}
		#menukat #sekcenter {
			background: url(img/k_but_c.png); width: 216px; height: 29px; font: 13px/29px Tahoma; color: #ffffff; text-align: center; float: left;
			}
		#menukat #sekright {
			background: url(img/k_but_r.png); width: 7px; height: 29px; float: left;
			}

#menucennik {
			width: 230px; height: 29px; float: left; margin-bottom: 1px; margin-top: 6px;
			}
		#menucennik #sekleft {
			background: url(img/k_but_l.png); width: 7px; height: 29px; float: left;
			}
		#menucennik #sekcenter {
			background: url(img/k_but_c.png); width: 216px; height: 29px; font: 13px/29px Tahoma; color: #ffffff; text-align: center; float: left;
			}
		#menucennik #sekright {
			background: url(img/k_but_r.png); width: 7px; height: 29px; float: left;
			}

#menukatback {
			background: url(img/k_bc.png); width: 230px; height: 25px; float: left; cursor: pointer;
		}
#menukatback:HOVER {
			background: url(img/k_bck.png); width: 230px; height: 25px; float: left;
		}
	#menukatback #zapis {
			font: 11px/25px Tahoma; color: #160e86; width: 184px; height: 25px; margin-left: 6px; float: left;
		}
	#menukatback #zapis:HOVER {
			font: 11px/25px Tahoma; color: #160e86; width: 184px; height: 25px; margin-left: 6px; float: left; text-decoration: underline;
		}
	#menukatback #podkat{
			font: 11px/25px Tahoma; color: #160e86; width: 180px; height: 25px; margin-left: 50px; float: left;
		}
	#menukatback #podkat:HOVER {
			font: 11px/25px Tahoma; color: #160e86; width: 180px; height: 25px; margin-left: 50px; float: left; text-decoration: underline;
		}
	#menukatback #pointer {
			background: url(img/k_p1.png); background-repeat: no-repeat; background-position:center; width: 6px; height: 25px; margin-left: 30px; float: left;
		}


#tmenu_p { 
	float: left;
}
#stopka {
	clear: both;
	}
</style>

<div id="searcher">
	<s:form action="SearcherAction" theme="simple">
	<div id="sekleft"></div>
	<div id="sekcenter">
		<div id="arealeft"></div>
		<div id="areacenter"><s:textfield name="searchString" cssStyle="border:0px; margin-top:3px; height:18px; width:180px;"/></div>
		<div id="arearight"></div>
		<div id="stopka"></div>
		<s:checkbox id="box" name="inDescription" theme="simple"/>
		<div id="wopisach">w opisach</div>
		<s:submit id="button" value=""></s:submit>
		<div id="stopka"></div>
		<div id="linia"></div>
		<div id="stopka"></div>
		<div id="zaawansowane">Wyszukiwanie zaawansowane</div>
	</div>
	<div id="sekright"></div>
	</s:form>
</div>



<!-- <div id="menudiv"> -->
<s:if test="%{#session.customer != null}">

<div id="twojemenu">
	<div id="sekleft"></div>
	<div id="sekcenter">
		<div id="tekst">TWOJE KONTO</div>
		<div id="point1"></div>
	</div>
	<div id="sekright"></div>
</div>
	
	
	<s:form action="ChangeDataAction" name="chps">
		<s:hidden name="init"/>
	</s:form>
	
	<div id="tmenuback">
	<div id="pointer"></div>
	<div id="zapis" onclick='javascript:void(document.forms["chps"].submit())'>Twoje dane</div></div>
	<div id="tmenu_linia"></div>
	<div id="stopka"></div>
	
	<div id="tmenuback">
	<div id="pointer"></div>
	<div id="zapis" onclick="location.href='changePassLink.action'">Zmiana hasła</div></div>
	<div id="tmenu_linia"></div>
	<div id="stopka"></div>
	
	
	<div id="tmenuback">
	<div id="pointer"></div>
	<div id="zapis" onclick="location.href='OrderReviewAction.action'">Przegląd zamówień</div></div>
	<div id="tmenu_linia"></div>
	<div id="stopka"></div>
	
<!-- 	<div id="tmenuback"> -->
<!-- 	<div id="pointer"></div> -->
<!-- 	<div id="zapis">Ulubione</div></div> -->
<!-- 	<div id="stopka"></div> -->

<!-- 	<div id="tmenuback"> -->
<!-- 	<div id="pointer"></div> -->
<!-- 	<div id="zapis">Ulubione</div> -->
<!-- 	</div> -->
	

</s:if>
<s:else>
	<form action="logonLink.action" name="logon_accunt">
		<input type="hidden" name="inaccount">
		<div id="twojemenu">
			<div id="sekleft"></div>
			<div id="sekcenter" onclick='javascript:void(document.forms["logon_accunt"].submit())'>
				<div id="tekst">TWOJE KONTO</div>
				<div id="point"></div>
			</div>
			<div id="sekright"></div>
		</div>
	</form>
</s:else>
<!-- </div> -->


<div id="menukat">
	<div id="sekleft"></div>
	<div id="sekcenter">KATEGORIE PRODUKTÓW</div>
	<div id="sekright"></div>
	
</div>


<c:forEach var="item" items="${application.menu}">
<div id="tmenu_p">
	<form action="ShowProductsAction" name="${item.dispalyName}">
	<input type="hidden" name="category" value="${item.category}">
	
	<div id="menukatback" onclick='javascript:void(document.forms["${item.dispalyName}"].submit())'>
<%-- 		<c:if test="${fn:length(item.items) == 0}"><div id="picture"></div></c:if> --%>
<%-- 		<c:if test="${fn:length(item.items) != 0}"><div id="picture_expand"></div></c:if> --%>
		<div id="pointer"></div>
		<div id="zapis">${item.dispalyName}</div>
		</div>
		<div id="tmenu_linia"></div>
	</form>
	
	
	<c:forEach var="item2" items="${item.items}">
		<form action="ShowProductsAction" name="${item2.dispalyName}">
			<input type="hidden" name="category" value="${item2.category}">
			<div id="menukatback" onclick='javascript:void(document.forms["${item2.dispalyName}"].submit())'>
					<div id="podkat">${item2.dispalyName}</div>
			</div>
			<div id="tmenu_linia"></div>
		</form>
	</c:forEach>

</div>
</c:forEach>	

<div id="menucennik">
	<div id="sekleft"></div>
	<div id="sekcenter">POBIERZ CENNIK</div>
	<div id="sekright"></div>
	</div>
	
	<div id="tmenuback">
	<div id="zapis" style="margin-left: 40px;"><a href="img/offer/Cennik_allios.pdf">Aktualny cennik.pdf</a></div></div>
	<div id="tmenu_linia"></div>
	<div id="stopka"></div>
	
	<div id="tmenuback">
	<div id="zapis" style="margin-left: 40px;"><a href="img/offer/Cennik_allios.xls">Aktualny cennik.xls</a></div></div>
	<div id="tmenu_linia"></div>
	<div id="stopka"></div>
	


<!-- <div id="menucennik"></div> -->
<!-- <div id="menucenback"> -->
<!-- 	<div id="tekst">cennik.pdf</div> -->
<!-- 	</div> -->


