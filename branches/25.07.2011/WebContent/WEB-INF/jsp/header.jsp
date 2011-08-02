<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
#header_logo {
		background: url(img/logo.png); width: 195px; height: 62px; margin-bottom: 20px; margin-top: 20px; margin-left: 40px; background-repeat: no-repeat;
		}
#menubar {
	float: left; height: 56px;
	}
	#menubar #button {
		background: url(img/mn2button.png); width: 3px; height: 56px; float: left;
		}
	#menubar #sekleft {
		background: url(img/menubar2.png); width: 135px; height: 56px; float: left; cursor: pointer;
		}
	#menubar #sekright {
		background: url(img/menubar2.png); width: 27px; height: 56px; float: left;
		}
	#menubar #sekcenter {
		background: url(img/menubar2.png); width: 135px; height: 56px; float: left; cursor: pointer;
		}
	#menubar #glownagraf {
		background: url(img/mn2home.png); background-repeat: no-repeat; background-position: left; width: 20px; height: 56px; margin-left: 14px; float: left;
		}
	#menubar #glowna {
		background: url(img/t_gl1.png); background-repeat: no-repeat; background-position: left; width: 80px; height: 56px; margin-left: 10px; text-align: left; float: left;
		}
	#menubar #glowna:HOVER {
		background: url(img/t_gl2.png); background-repeat: no-repeat; background-position: left; width: 80px; height: 56px; margin-left: 10px; text-align: left; float: left;
		}
	#menubar #ofirmiegraf {
		background: url(img/mn2firma.png); background-repeat: no-repeat; background-position: left; width: 20px; height: 56px; margin-left: 20px; float: left;
		}
	#menubar #ofirmie {
		background: url(img/t_fir1.png); background-repeat: no-repeat; background-position: left; width: 80px; height: 56px; margin-left: 10px; float: left;
		}
	#menubar #ofirmie:HOVER {
		background: url(img/t_fir2.png); background-repeat: no-repeat; background-position: left; width: 80px; height: 56px; margin-left: 10px; float: left;
		}
	#menubar #aktualnoscigraf {
		background: url(img/mn2akt.png); background-repeat: no-repeat; background-position: left; width: 20px; height: 56px; margin-left: 6px; float: left;
		}
	#menubar #aktualnosci {
		background: url(img/t_akt1.png); background-repeat: no-repeat; background-position: left; width: 92px; height: 56px; margin-left: 10px; float: left;
		}
	#menubar #aktualnosci:HOVER {
		background: url(img/t_akt2.png); background-repeat: no-repeat; background-position: left; width: 92px; height: 56px; margin-left: 10px; float: left;
		}
	#menubar #regulamingraf {
		background: url(img/mn2reg.png); background-repeat: no-repeat; background-position: left; width: 20px; height: 56px; margin-left: 8px; float: left;
		}
	#menubar #regulamin {
		background: url(img/t_reg1.png); background-repeat: no-repeat; background-position: left; width: 90px; height: 56px; margin-left: 10px; float: left;
		}
	#menubar #regulamin:HOVER {
		background: url(img/t_reg2.png); background-repeat: no-repeat; background-position: left; width: 90px; height: 56px; margin-left: 10px; float: left;
		}
	#menubar #kontaktgraf {
		background: url(img/mn2mail.png); background-repeat: no-repeat; background-position: left; width: 20px; height: 56px; margin-left: 12px; float: left;
		}
	#menubar #kontakt {
		background: url(img/t_kont1.png); background-repeat: no-repeat; background-position: left; width: 80px; height: 56px; margin-left: 10px; float: left;
		}
	#menubar #kontakt:HOVER {
		background: url(img/t_kont2.png); background-repeat: no-repeat; background-position: left; width: 80px; height: 56px; margin-left: 10px; float: left;
		}
	#menubar #koszykleft {
		background: url(img/mn2kosz_l.png); background-repeat: no-repeat; background-position: center; width: 3px; height: 56px; float: left; cursor: pointer;
		}
	#menubar #koszykright {
		background: url(img/mn2kosz_r.png); background-repeat: no-repeat; background-position: center; width: 3px; height: 56px; float: left; cursor: pointer;
		}
	#menubar #koszykcenter1 {
		background: url(img/mn2kosz_c.png); background-position: center; width: 70px; height: 56px; float: left; cursor: pointer;
		}
	#menubar #koszykcenter2 {
		background: url(img/mn2kosz_c.png); background-position: center; width: 170px; height: 56px; float: left; cursor: pointer;
		}
	#menubar #koszykcenter3 {
		background: url(img/mn2kosz_c.png); background-position: center; width: 34px; height: 56px; float: left; cursor: pointer;
		}
	#menubar #koszykbutton {
		background: url(img/mn2kosz_b.png); background-position: center; width: 3px; height: 56px; float: left;
		}
	#menubar #podpisy {
		font: bold 8px Tahoma; color: #ffffff; margin-top: 35px; float: left;
		}
	#menubar #kosz_t1 {
		background: url(img/t_kosz.png); background-repeat: no-repeat; background-position: left; width: 58px; height: 56px; margin-left: 7px; float: left;
		}
	#menubar #liczba_prod {
		background: url(img/t_lprod.png); background-repeat: no-repeat; background-position: bottom; background-position: left; width: 101px; height: 11px; margin-left: 3px; margin-top: 8px; padding-left: 106px; padding-bottom: 4px; float: left; font: bold 11px Tahoma; color: #ffffff;
		}
	#menubar #wartoscb {
		background: url(img/t_wbrut.png); background-repeat: no-repeat; background-position: bottom; background-position: left; width: 101px; height: 11px; margin-left: 3px; margin-top: 1px; padding-left: 93px; float: left; font: bold 11px Tahoma; color: #ffffff;
		}
	#menubar #transport {
		background: url(img/t_trans.png); background-repeat: no-repeat; background-position: bottom; background-position: left; width: 101px; height: 11px; margin-left: 3px; margin-top: 3px; padding-left: 62px; padding-bottom: 4px; float: left; font: bold 11px Tahoma; color: #ffffff;
		}
	#menubar #navigation {
		background: url(img/mn2play.png); background-repeat: no-repeat; background-position: center; width: 22px; height: 56px; margin-left: 5px; float: left;
		}
	#menubar #kosz_pusty {
		width: 170px; height: 56px; text-align: center; font: bold 12px/58px Tahoma; color: #ffffff;
		}
	
#stopka {
	clear: both;
	}


</style>

<div id="header_logo"></div>
<div id="stopka"></div>

<div id="menubar">
	<div id="sekleft" onclick="location.href='mainPageLink.action'">
		<div id="glownagraf" ></div>
		<div id="glowna">
			<div id="podpisy">nowości i promocje</div>
			</div>	
		</div>
	<div id="button"></div>
	<div id="sekcenter" onclick="location.href='aboutUsLink.action'">
		<div id="ofirmiegraf" ></div>
		<div id="ofirmie">
		<div id="podpisy">kim jesteśmy</div>
		</div>	
		</div>
	<div id="button"></div>
	<div  id="sekcenter" onclick="location.href='newsLink.action'">
		<div id="aktualnoscigraf"></div>
		<div id="aktualnosci">
		<div id="podpisy">najnowsze wiadomości</div>
		</div>	
		</div>
	<div id="button"></div>
	<div id="sekcenter" onclick="location.href='statuteLink.action'">
		<div id="regulamingraf"></div>
		<div id="regulamin">
		<div id="podpisy">nim dokonasz zakupu</div>
		</div>	
		</div>
	<div id="button"></div>
	<div id="sekleft" onclick="location.href='contactLink.action'">
		<div id="kontaktgraf"></div>
		<div id="kontakt">
		<div id="podpisy">napisz do nas</div>
		</div>	
		</div>
	<div id="kosz" onclick="location.href='cartLink.action'" style="float: left;">
	<div id="koszykleft"></div>
	<div id="koszykcenter1">
		<div id="kosz_t1"></div>
		</div>
	<div id="koszykbutton" ></div>
	<div id="koszykcenter2">
		<s:if test="%{#session.order != null}">
		<div id="liczba_prod"><s:property value="#session.order.numberOfItems"/></div>
		<div id="wartoscb"><s:property value="#session.order.totalPriceBruttoString"/> zł</div>
		<div id="transport"><s:property value="#session.order.transportCostBruttoString"/> zł</div>
		</s:if>
		<s:else>
			<div id="kosz_pusty">Koszyk jest pusty</div>
		</s:else>

		</div>
	<div id="koszykbutton"></div>
	<div id="koszykcenter3">
		<div id="navigation"></div>
		</div>	
	<div id="koszykright"></div>
	</div>
	<div id="sekright"></div>	
</div>








<%-- <%@ taglib prefix="s" uri="/struts-tags" %>   --%>

<!-- <span> -->
<!-- 	<img alt="" src="img/logo.png" height="94" width="311"> -->
<!-- </span> -->

<!-- <div id="menu"> -->
<!--         <ul> -->
<!--                 <li><a href="WEB-INF/jsp/cart-pawel.jsp">Strona główna</a></li> -->
<!--                 <li><a href="#">O mnie</a></li> -->
<!--                 <li><a href="#">Wydarzenia</a></li> -->
<!--                 <li><a href="#">Galeria</a></li> -->
<!--                 <li class="last"><a href="#">Kontakt</a></li> -->
<!--         </ul> -->
<!-- 	<div id="basket" onclick="location.href='cartLink.action'"> -->
<!-- 		<div id="basket_left"></div> -->
<!-- 		<div id="basket_middle_icon"><div id="basket_icon"></div></div> -->
<!-- 		<div id="basket_line"></div> -->
<!-- 		<div id="basket_middle"> -->
<!-- 		<s:if test="%{#session.order != null}"> -->
<!-- 			<div> -->
<!-- 				<div style="background: url(img/t_lprod.png) no-repeat; height: 12px;  -->
<!-- 				width: 102px; margin-top: 15px; margin-left: 5px; padding-left: 105px; -->
<!-- 				font: bold 11px Tahoma;"><s:property value="#session.order.numberOfItems"/></div> -->
<!-- 				<div style="background: url(img/t_wbrut.png) no-repeat; height: 10px; width: 89px;  margin-top: 4px; margin-left: 5px; padding-left: 95px; font: bold 11px Tahoma;"> -->
<!-- 					<s:property value="#session.order.TotalPrice"/> -->
<!-- 				</div> -->
<!-- 				<div style="background: url(img/t_trans.png) no-repeat; height: 11px; width: 59px;  margin-top: 5px; margin-left: 5px; padding-left: 65px; font: bold 11px Tahoma;"> -->
<!-- 					<s:property value="#session.order.Transport"/> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</s:if> -->
<!-- 		<s:else> -->
<!-- 			<div id="basket_middle_empty">Koszyk jest pusty</div> -->
<!-- 		</s:else> -->
<!-- 		</div> -->
<!-- 		<div id="basket_line"></div> -->
<!-- 		<div id="basket_middle_triangle_icon"><div id="basket_triangle_icon"></div></div> -->
<!-- 		<div id="basket_right"></div> -->
<!-- 	</div> -->
        
<!-- </div> -->


<!-- <style> -->
<!-- #basket { -->
<!-- 	height: 79px; -->
<!-- 	cursor: pointer; -->
<!-- } -->

<!-- #basket_left { -->
<!-- 	background: url(img/kosz_l.png); height: 79px; width: 7px; float: left; -->
<!-- } -->
<!-- #basket_icon { -->
<!-- 	background: url(img/kosz_logo.png) no-repeat; height: 13px; width: 58px; float: left; margin-top: 28px; margin-left: 3px; -->
<!-- } -->
<!-- #basket_line { -->
<!-- 	background: url(img/kosz_s.png); height: 79px; width: 3px; float: left; -->
<!-- } -->
<!-- #basket_middle_icon { -->
<!-- 	background: url(img/kosz_c.png); height: 79px; width: 65px; float: left; -->
<!-- } -->
<!-- #basket_middle { -->
<!-- 	background: url(img/kosz_c.png); height: 79px; width: 165px; float: left; -->
<!-- 	font: bold 13px Arial, sans-serif; text-decoration: none; color: White; -->
<!-- } -->
<!-- #basket_middle_empty { -->
<!-- 	height: 79px; width: 165px; text-align: center; font: bold 13px/70px Arial, sans-serif; text-decoration: none; color: White; -->
<!-- } -->
<!-- #basket_right { -->
<!-- 	background: url(img/kosz_r.png); height: 79px; width: 7px; float: left; -->
<!-- } -->
<!-- #basket_triangle_icon{ -->
<!-- 	background: url(img/mn2play.png); height: 22px; width: 22px; float: left; margin-left: 4px; margin-top: 25px; -->
<!-- } -->
<!-- #basket_middle_triangle_icon{ -->
<!-- 	background: url(img/kosz_c.png); height: 79px; width: 30px; float: left; -->
<!-- } -->

<!-- </style> -->


<!-- <div id="basket"> -->
<!-- 	<div id="basket_left"></div> -->
<!-- 	<div id="basket_middle_icon"><div id="basket_icon"></div></div> -->
<!-- 	<div id="basket_line"></div> -->
<!-- 	<div id="basket_middle">Koszyk jest pusty</div> -->
<!-- 	<div id="basket_right"></div> -->
<!-- </div> -->