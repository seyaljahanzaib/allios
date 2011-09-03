<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
#glowna {
	width: 760px;
}

#title {
	width: 760px; height:26px; font: bold 16px/26px Tahoma; color: #160e86; margin-left: 4px; float: left;
}
#title1 {
	height:20px; font: 11px/20px Tahoma; color: #160e86; margin-left: 4px; float: left;
}

#sectionup {
	
}
	
	#sectionup #photo {
		width: 250px; height: 250px; border: 1px; border-color: black; border-style: solid; float: left;
	}
	
	#sectionup #cenabt {
		width: 430px; font: bold 16px Tahoma; color: #160e86; text-align: right; float: left;
	}
	#sectionup #cenab {
		font: bold 16px Tahoma; color: #160e86; text-align: left; margin-left:3px; float: left;
	}
	#sectionup #cenant {
		width: 430px; font: 14px Tahoma; color: #160e86; text-align: right; float: left;
	}
	#sectionup #cenan {
		font: 14px Tahoma; color: #160e86; text-align: left; margin-left:15px; float: left;
	}		
	#sectionup #koszyk {
		width:480px; font: bold 11px Tahoma; color: #160e86; text-align: left; margin-left: 25px; margin-top: 8px; border-bottom:1px; border-bottom-style: solid; border-bottom-color: #ff9900; float: left;
	}
	#sectionup #koszt1 {
		width:250px; font: bold 11px Tahoma; color: #160e86; text-align: right; margin-left: 25px; margin-top:20px; float: left;
	}
	#sectionup #text_area {
		width:40px; height: 20px; font: bold 12px/20px Tahoma; color: #160e86; text-align: center; margin-left: 16px; margin-top:15px; border: 1px; border-color: black; border-style: solid; float: left;
	}
	#sectionup #koszt2 {
		width: 40px; font: bold 11px Tahoma; color: #160e86; text-align: left; margin-left: 16px; margin-top:20px; float: left;
	}
	#sectionup #graf_kosz {
		width: 80px; height: 20px; background: url(img/k_button.png); margin-left: 36px; margin-top:16px; float: left; cursor: pointer; border: none;
	}
	#sectionup #graf_kosz:HOVER {
		width: 80px; height: 20px; background: url(img/k_button1.png); margin-left: 36px; margin-top:16px; float: left;
	}
	#sectionup #graf_ulubione {
		width: 80px; height: 20px; background: url(img/ul_button.png); margin-left: 425px; margin-top:4px; float: left; cursor: pointer;
	}
	#sectionup #graf_ulubione:HOVER {
		width: 80px; height: 20px; background: url(img/ul_button1.png); margin-left: 425px; margin-top:4px; float: left; cursor: pointer;
	}
	#sectionup #dostepnosc {
		width:440px; font: bold 11px Tahoma; color: #160e86; text-align: left; margin-left: 65px; margin-top: 8px; border-bottom:1px; border-bottom-style: solid; border-bottom-color: #ff9900; float: left;
	}
	#sectionup #dostepnosc_left {
		width:360px; height: 70px; margin-left: 65px; margin-top: 8px; float: left;
	}
	#sectionup #dostepnosc_right {
		width:80px; height: 70px; margin-top: 8px; float: left;
	}
	#sectionup #dostepnosc_tleft {
		width:320px; font: 11px Tahoma; color: #160e86; text-align:justify;  margin-left: 20px; margin-top: 8px; float: left;
	}
	#sectionup #dostepnosc_gright0 {
		width:15px; height:33px; background: url(img/bat_0.png); margin-top: 10px; margin-left: 34px; float: left;
	}
	#sectionup #dostepnosc_gright1 {
		width:15px; height:33px; background: url(img/bat_1.png); margin-top: 10px; margin-left: 34px; float: left;
	}
	#sectionup #dostepnosc_gright2 {
		width:15px; height:33px; background: url(img/bat_2.png); margin-top: 10px; margin-left: 34px; float: left;
	}
	#sectionup #dostepnosc_gright3 {
		width:15px; height:33px; background: url(img/bat_3.png); margin-top: 10px; margin-left: 34px; float: left;
	}
	#sectionup #dostepnosc_gright4 {
		width:15px; height:33px; background: url(img/bat_4.png); margin-top: 10px; margin-left: 34px; float: left;
	}
	#sectionup #dostepnosc_gright5 {
		width:15px; height:33px; background: url(img/bat_5.png); margin-top: 10px; margin-left: 34px; float: left;
	}
	
	#sectionup #t_stan {
		width:80px; font: bold 11px Tahoma; color: #160e86; margin-top: 6px; text-align: center; float: left;
	}

#photo_3{
	width: 50px; height: 50px; border: 1px; border-color: black; border-style: solid; margin-top: 8px; margin-right: 10px; float: left;
}


#info_button {
/* 	background: url(img/info_1.png); width: 122px; height: 33px; font: bold 11px/33px Tahoma; color: #666ca7; text-align: center; float: left; margin-top: 16px; margin-right: 2px; cursor: pointer; */
	background: url(img/info_2.png); width: 122px; height: 33px; font: bold 11px/33px Tahoma; color: #ffffff; text-align: center; margin-top: 16px; margin-right: 2px; float: left;

	}
/* #info_button:HOVER { */
/* 	background: url(img/info_2.png); width: 122px; height: 33px; font: bold 11px/33px Tahoma; color: #ffffff; text-align: center; margin-top: 16px; margin-right: 2px; float: left; */
/* 	} */
#info_line {
	width: 760px; height: 4px; background-color: #fdab0c; float: left;
	}

#stopka {
	clear: both;
	} 		
</style>


<s:form action="AddToCartAction" theme="simple">
	<div id="title">${product.name}</div>
	<div id="title1" style="margin-left:4px;">Producent: <b>${product.producer}</b></div>
	<!-- <div id="title1" style="margin-left:10px;">Kod producenta: <b>XT34020</b></div> -->
	
	<div id="stopka"></div>
	
	<div id="sectionup">
		<div id="photo"><img alt="" src="${product.image250}" height="250px" width="250px"></div>
		<div id="cenabt">Cena brutto: </div><div id="cenab"> ${product.priceBrutto} zł</div>
		<div id="cenant">netto:</div><div id="cenan"> ${product.priceNetto} zł</div>
		<div id="koszyk">Dodaj do koszyka / ulubionych</div>
		<div id="koszt1">Ilość</div>
		<div id="text_area"><s:textfield name="quantity" value="1" cssStyle="border: none; width : 38px; text-align: center;"/></div>
		<div id="koszt2">szt.</div>
		
		<input type="hidden" name="product_id" value="${product.product_id}"/>
		<s:submit id="graf_kosz" name="productDescription" value="" />
	<!-- 	<div id="graf_ulubione"></div> -->
		<div id="dostepnosc">Dostępność towaru na magazynie</div>
			<div id="dostepnosc_left">
				<div id="dostepnosc_tleft" style="line-height: 18px;">Towar dostarczany jest za pośrednictwem Poczty Polskiej.
				<br>Termin dostawy:<b>&nbsp;maksymalnie 3 dni robocze.</b>
				<br>Koszt transportu:<b>&nbsp;25zł brutto</b>
				<br><br><b>Dokładamy wszelkich starań, aby towar został dostarczony w ciągu 24h od daty złożenia zamówienia.</b>
				</div>
			</div>
			<div id="dostepnosc_right">
				<c:if test="${product.numberOfItems == 0}">
					<div id="dostepnosc_gright0"></div>
					<div id="t_stan">brak</div>
				</c:if>
				<c:if test="${product.numberOfItems > 0 and product.numberOfItems < 5}">
					<div id="dostepnosc_gright1"></div>
						<div id="t_stan">&lt; 5szt./op.</div>
				</c:if>
				<c:if test="${product.numberOfItems >= 5 and product.numberOfItems < 10}">
					<div id="dostepnosc_gright2"></div>
					<div id="t_stan">dostępny</div>
				</c:if>
				<c:if test="${product.numberOfItems >= 10 and product.numberOfItems < 50}">
					<div id="dostepnosc_gright3"></div>
					<div id="t_stan">dostępny</div>
					
				</c:if>
				<c:if test="${product.numberOfItems >= 50 and product.numberOfItems < 100}">
					<div id="dostepnosc_gright4"></div>
					<div id="t_stan">dostępny</div>
					
				</c:if>
				<c:if test="${product.numberOfItems >= 100}">
					<div id="dostepnosc_gright5"></div>
					<div id="t_stan">dostępny</div>
				</c:if>
			</div>
		</div>
	<div id="stopka"></div>
	<!-- <div id="photo_3"></div> -->
	<!-- <div id="photo_3"></div> -->
	<!-- <div id="photo_3"></div> -->
	<div id="stopka"></div>
	<div id="info_button">Opis</div>
<!-- 	<div id="info_button">Specyfikacja</div> -->
<!-- 	<div id="info_button">Karta</div> -->
<!-- 	<div id="info_button">Zamienniki</div> -->
	<div id="stopka"></div>
	<div id="info_line">${product.description}</div>
</s:form>