<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>

#newproduct {
	width: 1150px; margin-top: 10px; float: left;
}
	
	#newproduct #maintekst {
		font: bold 12px/30px Tahoma; color: #ffffff; text-align: left; margin-left: 3px;
		}
	#newproduct #mainleft {
		background: url(../img/pa_titlel.png); width: 6px; height: 30px; float: left;
		}
	#newproduct #maincenter {
		background: url(../img/pa_titlec.png); width: 1138px; height: 30px; float: left;
		}
	#newproduct #mainright {
		background: url(../img/pa_titler.png); width: 6px; height: 30px; float: left;
		}
	
	#newproduct #mainback {
		width: 1150px; height: 1000px; background-color: #f3f2fc; margin-top:2px; float: left;
	}
			#newproduct #maintekst1 {
				width: 150px; font: bold 12px/25px Tahoma; color: #101192; text-align: right; margin-left: 20px; margin-top: 10px; float: left;
				}
			#newproduct #main_graf {
				height: 25px; margin-top: 10px; margin-left: 20px; float: left; 
				}
			#newproduct #main_combo {
				height: 25px; margin-top: 10px; margin-left: 20px; float: left; 
				}
			#newproduct #main_add {
				background: url(../img/pa_button.png); width: 92px; height: 33px; margin-top: 80px; margin-right: 150px; float: right; cursor: pointer; 
				}
			#newproduct #main_backmenu {
				background: url(../img/pa_button.png); width: 92px; height: 33px; margin-top: 80px; margin-right: 10px; float: right; cursor: pointer;
				}
			#newproduct #main_addtekst {
				width: 92px; font: bold 12px/30px Tahoma; color: #101192; text-align: center; border: none; background-color: transparent; cursor: pointer;
				}
			#newproduct #main_addtekst:HOVER {
				width: 92px; font: bold 12px/30px Tahoma; color: #101192; text-align: center; text-decoration: underline; border: none; cursor: pointer; background-color: transparent;
				}

	
#stopka {
clear: both;
}


</style>

<div id="newproduct">
	
	<div id="mainleft"></div>
	<div id="maincenter">
		<div id="maintekst">Dodaj nowy produkt</div>
		</div>
	<div id="mainright"></div>
	

<div id="stopka"></div>
<s:form action="AddProductAdminAction" theme="simple">
<div id="mainback">

	<div id="maintekst1">Nazwa produktu:</div>
	<s:textfield id="main_graf"  name="product.name" cssStyle="width:400px; height:20px;"/>
	
	<div id="stopka"></div>
	
<!-- 	<div id="maintekst1">Waluta:</div> -->
<!-- 	<div id="main_combo" style="width: 70px"></div> -->
	
	<div id="stopka"></div>
	
	<div id="maintekst1">Cena netto:</div>
	<s:textfield id="main_graf"  name="product.priceNetto" cssStyle="width:66px; height:20px;"/>
	
	<div id="stopka"></div>
	
	<div id="maintekst1">VAT:</div>
	<select name="product.unit" id="main_combo" style="width:70px; height:25px;">
		<option selected="selected" value="8%">8</option>
		<option  value="23%">23</option>
	</select>
	
	<div id="stopka"></div>
	
	<div id="maintekst1">J/M:</div>
	<select name="product.unit" id="main_combo" style="width:70px; height:25px;">
		<option selected="selected" value="szt.">szt.</option>
		<option  value="op.">op.</option>
	</select>
	
	<div id="stopka"></div>
	
	<div id="maintekst1">Waga:</div>
	<s:textfield id="main_graf"  name="product.weight" cssStyle="width: 70px; height:20px;"/>
	
	<div id="stopka"></div>
	
	<div id="maintekst1">Producent:</div>
	<s:textfield id="main_graf"  name="product.producer" cssStyle="width:120px; height:20px;"/>
	
	<div id="stopka"></div>
	
	<div id="maintekst1">Kategoria:</div>
			<select id="main_combo" name="product.category.id" style="width:210px; height:25px;">
					<c:forEach items="${categories}" var="item" varStatus="loop">
						<c:if test="${loop.index == 0}">
							<option selected="selected" value="${item.id}">${item.displayableName}</option>
						</c:if>
						<c:if test="${loop.index != 0}">
							<option value="${item.id}">${item.displayableName}</option>
						</c:if>
						<c:forEach items="${item.subCategories}" var="item2" varStatus="loop2">
							<option value="${item2.id}">---> ${item2.displayableName}</option>
						</c:forEach>
					</c:forEach>
			</select>
	
	
	<div id="stopka"></div>
	
	<div id="maintekst1">Status produktu:</div>
	<s:textfield id="main_combo"  name="product.state" cssStyle="width: 120px; height:20px;"/>
	
	<div id="stopka"></div>
	
	<div id="maintekst1">Skład:</div>
	<s:textfield id="main_combo"  name="product.storage" cssStyle="width:120px; height:20px;"/>
	
	<div id="stopka"></div>
	
	<div id="maintekst1">zdjęcie (file manager)</div>
	<div id="main_combo" style="width: 120px"></div>
	
	<div id="stopka"></div>
	
	<div id="maintekst1">Pełny opis:</div>
	<s:textarea id="main_graf"  name="product.description" cssStyle="width: 500px; height: 200px;"/>
	
	<div id="stopka"></div>
	
	<div id="maintekst1">Skrócony opis:</div>
	<s:textarea id="main_graf"  name="product.shortDescription" cssStyle="width: 500px; height: 200px;"/>

	<div id="stopka"></div>
	
	<div id="main_add">
	<s:submit id="main_addtekst" name="save" value="Dodaj" cssStyle="width:92px; height:30px;"/>
	</div>
	
	
	<div id="main_backmenu">
	<div id="main_addtekst">Wróć</div>
	</div>

</div>
</s:form>
</div>


