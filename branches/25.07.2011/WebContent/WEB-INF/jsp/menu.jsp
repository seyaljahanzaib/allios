<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>			
#searcher {
	height: 110px; margin-top: 6px;
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
		background: url(img/s_button1.png); width: 86px; height: 22px; float: left; margin-top: 7px; margin-left: 29px; cursor: pointer;
		}
	#searcher #button:HOVER {
		background: url(img/s_button2.png); 
		}
	#searcher #linia {
		background: url(img/sline.png); width: 190px; height: 2px; float: left; margin-top: 8px; margin-left: 10px;
		}
#twojemenu {
	background: url(img/b_tkonto.png); width: 230px; height: 29px; cursor: pointer; margin-bottom: 1px; margin-top: 10px; float: left; 
	}
#twojemenu:HOVER {
	background: url(img/b_tkonto1.png);
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
			background: url(img/kk_button.png); width: 230px; height: 29px; float: left; margin-bottom: 1px; margin-top: 6px;
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
			font: bold 11px/25px Tahoma; color: #160e86; width: 184px; height: 25px; margin-left: 6px; float: left; text-decoration: underline;
		}
	#menukatback #podkat{
			font: 11px/25px Tahoma; color: #160e86; width: 180px; height: 25px; margin-left: 50px; float: left;
		}
	#menukatback #podkat:HOVER {
			font: bold 11px/25px Tahoma; color: #160e86; width: 180px; height: 25px; margin-left: 50px; float: left; text-decoration: underline;
		}
	#menukatback #pointer {
			background: url(img/k_p1.png); background-repeat: no-repeat; background-position:center; width: 6px; height: 25px; margin-left: 30px; float: left;
		}

#menucennik {
			background: url(img/k_cennik.png); width: 230px; height: 29px; float: left; margin-top: 6px; margin-bottom: 1px;
		}
#menucenback {
			background: url(img/menu_cennik.png); width: 230px; height: 70px; float: left; font: bold 12px/70px Tahoma; color: #160e86; text-align: center;
		}
		#menucenback #tekst {
			background: url(img/menu_cennik.png); width: 230px; height: 70px; float: left; font: 12px/70px Tahoma; color: #160e86; text-align: center; cursor: pointer; letter-spacing: 1px;
		}
		#menucenback #tekst:HOVER {
			background: url(img/menu_cennik.png); width: 230px; height: 70px; float: left; font: bold 12px/70px Tahoma; color: #160e86; text-align: center; cursor: pointer; text-decoration:underline; letter-spacing: 1px;
		}
#tmenu_p { 
	float: left;
}


#stopka {
	clear: both;
	}
	
</style>

<div id="menudiv">
<s:if test="%{#session.customer != null}">

<div id="twojemenu"></div>
	
	
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
	<div id="stopka"></div>

<!-- 	<div id="tmenuback"> -->
<!-- 	<div id="pointer"></div> -->
<!-- 	<div id="zapis">Ulubione</div> -->
<!-- 	</div> -->
	

</s:if>
<s:else>
	<form action="logonLink.action" name="logon_accunt">
		<input type="hidden" name="inaccount">
		<div id="twojemenu" onclick='javascript:void(document.forms["logon_accunt"].submit())'></div>
	</form>
</s:else>
</div>


<!-- <div id="searcher"> -->
<!-- 	<div id="sekleft"></div> -->
<!-- 	<div id="sekcenter"> -->
<!-- 		<div id="arealeft"></div> -->
<!-- 		<div id="areacenter"></div> -->
<!-- 		<div id="arearight"></div> -->
<!-- 		<div id="stopka"></div> -->
<!-- 		<div id="box">o</div> -->
<!-- 		<div id="wopisach">w opisach</div> -->
<!-- 		<div id="button"></div> -->
<!-- 		<div id="stopka"></div> -->
<!-- 		<div id="linia"></div> -->
<!-- 		<div id="stopka"></div> -->
<!-- 		<div id="zaawansowane">Wyszukiwanie zaawansowane</div> -->
<!-- 	</div> -->
<!-- 	<div id="sekright"></div> -->
<!-- </div> -->

<div id="menukat"></div>


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
	
	<c:forEach var="item2" items="${item.items}">
	<div id="menukatback">
			<div id="podkat">${item.dispalyName}</div>
		</div>
	</c:forEach>
	<div id="tmenu_linia"></div>
</form>
</div>
</c:forEach>	


<!-- <div id="menucennik"></div> -->
<!-- <div id="menucenback"> -->
<!-- 	<div id="tekst">cennik.pdf</div> -->
<!-- 	</div> -->


