<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
#glowna {
	width: 760px;
}

#nowosci {
	width: 370px; height: 259px; float: left; margin-top: 10px; margin-left: 10px;
		}
			#nowosci #sekleft {
				background: url(img/gl_framel.png); width: 12px; height: 259px; float: left;
				}
			#nowosci #sekcenter {
				background: url(img/gl_framec.png); width: 346px; height: 259px; float: left;
				}
			#nowosci #sekright {
				background: url(img/gl_framer.png); width: 12px; height: 259px; float: left;
				}
			#nowosci #title {
				font: bold 12px/30px Tahoma; color: #160e86; text-align: center; width: 356px; height: 30px; float: left;
				}
			#nowosci #photo {
				width: 140px; height: 140px; float: left; margin-left: 108px; margin-bottom: 2px;
				}
			#nowosci #cenacenter {
				background: url(img/gl_cenac.png); width: 346px; height: 40px; margin-top: 2px; float: left; 
				}
			#nowosci #infocena1 {
				width: 140px; height: 40px; font: bold 12px/40px Tahoma; color: #160e86; margin-left: 4px; float: left; 
				}
			#nowosci #infocena2 {
				width: 202px; height: 40px; font: bold 18px/40px Tahoma; color: #160e86; text-align: center; float: left; 
				}
			#nowosci #wiecejcenter {
				background: url(img/gl_editc.png); width: 107px; height: 36px; margin-top: 6px; float: left; 
				}
			#nowosci #wiecejright {
				background: url(img/gl_editr.png); width: 5px; height: 36px; margin-top: 6px; float: left; 
				}
			#nowosci #wiecejtekst {
				width: 107px; height: 36px; font: bold 12px/36px Tahoma; color: #ffffff; text-align: center; float: left; cursor: pointer;
				}
			#nowosci #wiecejtekst:HOVER {
				width: 107px; height: 36px; font: bold 12px/36px Tahoma; color: #ffffff; text-align: center; float: left; text-decoration: underline; 
				}
			#nowosci #koszykcenter {
				background: url(img/gl_koszc.png); width: 227px; height: 36px; margin-top: 6px; float: left; 
				}
			#nowosci #koszykleft {
				background: url(img/gl_koszl.png); width: 5px; height: 36px; margin-top: 6px; float: left; margin-left: 2px;
				}
			#nowosci #koszyktekst {
				width: 227px; height: 36px; font: bold 12px/36px Tahoma; color: #ffffff; text-align: right; float: left; cursor: pointer; background: none; border: none;
				}
			#nowosci #koszyktekst:HOVER{
				width: 227px; height: 36px; font: bold 12px/36px Tahoma; color: #ffffff; text-align: right; float: left; text-decoration: underline; 
				}
			

		
#stopka {
clear: both;
} 		
</style>

<c:forEach var="item" items="${application.firstPage}" varStatus="stat">
<div id="nowosci">
	<div id="sekleft"></div>
	<div id="sekcenter">
		<div id="title">${item.name}</div>
				<div id="photo"><img alt="" src="${item.image140}" height="140px" width="140px"></div>
				<div id="stopka"></div>
				<div id="cenacenter">
					<div id="infocena1">Nasza cena brutto:</div>
					<div id="infocena2">${item.priceBruttoString} zł</div>
					</div>
				<div id="wiecejcenter">
				<form action="FullDescriptionAction" name="fullform${stat.index}">
					<input type="hidden" name="productID" value="${item.product_id}"/>
				</form>
				<div id="wiecejtekst" onclick='javascript:void(document.forms["fullform${stat.index}"].submit())'>więcej...</div>
				
					</div>
				<div id="wiecejright"></div>
				<div id="koszykleft"></div>
				<div id="koszykcenter">
					<form action="AddToCartAction">
						<input type="hidden" name="product_id" value="${item.product_id}"/>
						<input type="hidden" name="mainPage" value="true"/>
						<input type="submit" id="koszyktekst" value="Dodaj do koszyka"/>
					</form>
				</div>
	</div>
	<div id="sekright"></div>
</div>
</c:forEach>


