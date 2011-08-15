<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>

#kategorie {
	width: 1150px;
}
	
	#kategorie #maintekst {
		font: bold 12px/30px Tahoma; color: #ffffff; text-align: left; margin-left: 3px;
		}
	#kategorie #mainleft {
		background: url(../img/pa_titlel.png); width: 6px; height: 30px; float: left;
		}
	#kategorie #maincenter {
		background: url(../img/pa_titlec.png); width: 1138px; height: 30px; float: left;
		}
	#kategorie #mainright {
		background: url(../img/pa_titler.png); width: 6px; height: 30px; float: left;
		}

	#kategorie #mainback {
		width: 1150px; height: 200px; background-color: #f3f2fc; margin-top:2px; float: left;
	}
			#kategorie #maintekst1 {
				width: 150px; font: bold 12px/25px Tahoma; color: #101192; text-align: right; margin-left: 20px; margin-top: 40px; float: left;
				}
			#kategorie #main_graf {
				background: url(../img/pd_areac.png); height: 25px; margin-top: 40px; margin-left: 20px; float: left; 
				}
			#kategorie #main_combo {
				background: url(../img/pd_areac.png); height: 25px; margin-top: 40px; margin-left: 20px; float: left; 
				}
			#kategorie #main_add {
				background: url(../img/pa_button.png); width: 92px; height: 33px; float: left; cursor: pointer; font: bold 12px/30px Tahoma; color: #101192; text-align: center; border: none;
				}
			#kategorie #main_add:HOVER {
				background: url(../img/pa_button.png); width: 92px; height: 33px; float: left; cursor: pointer; font: bold 12px/30px Tahoma; color: #101192; text-align: center; text-decoration:underline; border: none;
				}
			#kategorie #main_addtekst {
				width: 92px; font: bold 12px/30px Tahoma; color: #101192; text-align: center; float: left;
				}
 			#kategorie #main_addtekst:HOVER {
 				width: 92px; font: bold 12px/30px Tahoma; color: #101192; text-align: center; text-decoration: underline; float: left; */
 				}
			
#tabkat1 {
	height: 40px;
	}
	#tabkat1 #sek1 {
		background: url(../img/pa_mnprodc.png); width: 499px; height: 39px; float: left; text-align: center;
		}
	#tabkat1 #sek2 {
		background: url(../img/pa_mnprodc.png); width: 304px; height: 39px; float: left;
		}
	#tabkat1 #sek3 {
		background: url(../img/pa_mnprodc.png); width: 114px; height: 39px; float: left;
		}
	#tabkat1 #sek4 {
		background: url(../img/pa_mnprodc.png); width: 114px; height: 39px; float: left;
		}
	#tabkat1 #sek5 {
		background: url(../img/pa_mnprodc.png); width: 115px; height: 39px; float: left;
		}
	#tabkat1 #sekpoint {
		background: url(../img/pa_mnprodlc.png); height: 39px; float: left; 
		}
	#tabkat1 #tekst {
		text-align: center; font: bold 12px/40px Tahoma; color: #5a598d;
		}


#tabkat2 {
	height: 40px;
	}
	#tabkat2 #sek1 {
		width: 499px; height: 40px; float: left; text-align: center;
		}
	#tabkat2 #sek2 {
		width: 304px; height: 40px; float: left;
		}
	#tabkat2 #sek3 {
		width: 114px; height: 40px; float: left;
		}
	#tabkat2 #sek4 {
		width: 114px; height: 40px; float: left;
		}
	#tabkat2 #sek5 {
		width: 115px; height: 40px; float: left; 
		}
	#tabkat2 #tekst {
		text-align: center; font: bold 12px/40px Tahoma; color: #101192;
		}

#table1{
	width: 1150px; margin-top: 10px;
}

#stopka {
clear: both;
}

</style>

<script type='text/javascript'>
function deleteCategory(categoryId) {
	   var form = document.forms['f2'];
	   var el = document.createElement("input");
	   el.type = "hidden";
	   el.name = "categoryId";
	   el.value = categoryId;
	   var el2 = document.createElement("input");
	   el2.type = "hidden";
	   el2.name = "delete";
	   el2.value = true;
	   form.appendChild(el);
	   form.appendChild(el2);
	   form.submit();
}
	
</script>
<div id="kategorie">
	
	<div id="mainleft"></div>
	<div id="maincenter">
		<div id="maintekst">Kategorie / podkategorie produktow</div>
		</div>
	<div id="mainright"></div>
	
	<div id="stopka"></div>


		<div id="mainback">
			<div id="maintekst1">Nazwa kategorii:</div>
			<s:form action="CategoryAdminAction" id="newCategory" theme="simple">
				<s:hidden name="addCategory" value="true"/>
				<s:textfield id="main_graf" name="newCategory" cssStyle="width:240px; height:20px;"/>
			</s:form>
			<div id="maintekst1" style="margin-left: 70px;">Nazwa podkategorii:</div>
			<s:form action="CategoryAdminAction" id="newSubCategory" theme="simple">
				<s:hidden name="addSubCategory" value="true"/>
				<s:textfield  id="main_graf" name="newSubCategory" cssStyle="width: 240px; height:20px;"/>
				
				<div id="stopka"></div>
				<div id="main_add" style="margin-top: 20px; margin-left: 340px;">
				<div id="main_addtekst" onclick='javascript:void(document.forms["newCategory"].submit())'>Dodaj</div></div>
				<div id="maintekst1" style="margin-top: 20px; margin-left: 100px;">umiesc w:</div>
				
				<select name="selectedCategory" id="main_combo" style="width: 240px; margin-top:20px;">
				<c:set var="selectedCategoryBLA"/>   
					<c:forEach items="${categories}" var="item" varStatus="loop">
						<c:if test="${loop.index == 0}">
							<option selected="selected" value="${item.id}">${item.displayableName}</option>
						</c:if>
						<c:if test="${loop.index != 0}">
							<option value="${item.id}">${item.displayableName}</option>
						</c:if>
					</c:forEach>
				</select>
				
				<div ></div>
			</s:form>
			<div id="stopka"></div>
			
			<div id="main_add" style="margin-top:10px; margin-left: 850px;">
				<div id="main_addtekst" onclick='javascript:void(document.forms["newSubCategory"].submit())'>Dodaj</div>
				</div>
			
			<div id="stopka"></div>
		</div>
</div>


<div id="stopka"></div>
<s:form name="f1" action="CategoryAdminAction" theme="simple">


		<div id="kategorie">
			
			<s:submit id="main_add" name="saveChanges" value="Zapisz" cssStyle="float:right; margin-top:10px; margin-right:40px; margin-right:10px;"/>
			<div id="main_add" style="float:right; margin-top: 10px; margin-right: 40px; margin-right: 10px;">
			<div id="main_addtekst">Cofnij</div>
			</div>
		</div>
		
		
<div id="stopka"></div>

<div id="table1">
<table style="padding: 0px; border-collapse: collapse; border:0px; border-spacing:0px;">
<tr>

	<td width="500px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="tabkat1">
		<div id="sek1">
			<div id="tekst">Kategorie / podkategorie</div></div>
			<div id="sekpoint" style="width: 1px;"></div>
		</div>
		</td>
		
	<td width="305px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="tabkat1">
		<div id="sek2"><div id="tekst">Liczba przypisanych produktów</div></div>
		<div id="sekpoint" style="width: 1px;"></div>
		</div>
		</td>
		
	<td width="115px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="tabkat1">
		<div id="sek3"><div id="tekst">Aktywny</div></div>
		<div id="sekpoint" style="width: 1px;"></div>
		</div>
		</td>
		
	<td width="115px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="tabkat1">
		<div id="sek4"><div id="tekst">Ukryty</div></div>
		<div id="sekpoint" style="width: 1px;"></div>
		</div>
		</td>
		
	<td width="115px" height="39px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
		<div id="tabkat1">
		<div id="sek5"><div id="tekst">Usuń</div></div>
		</div>
		</td>
</tr>

<s:iterator value="categories" status="item" var="it">
	<tr>
		
		<td width="500px" height="30px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="tabkat2">
			<div id="sek1">
				<div id="tekst"><s:property value="displayableName"/></div></div>
			</div>
			</td>
			
		<td width="305px" height="30px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="tabkat2">
			<div id="sek2"><div id="tekst">18</div></div>
			</div>
			</td>
			
		<td width="115px" height="30px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="tabkat2">
			<div id="sek3"><div id="tekst"><s:checkbox name="categories[%{#item.index}].active"/></div></div>
			</div>
			</td>
			
		<td width="115px" height="30px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="tabkat2">
			<div id="sek4"><div id="tekst">o</div></div>
			</div>
			</td>
			
		<td width="115px" height="30px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="tabkat2" onclick='deleteCategory(${it.id})'>
			<div id="sek5" ><div id="tekst"><div id="usun" >DEL</div></div></div>
			</div>
			</td>
	</tr>
	
<%-- 	<c:forEach items="${item.subCategories}" var="item2" > --%>
	<s:iterator value="%{#it.subCategories}" status="item2" var="it2">
		<tr>
		<td width="500px" height="30px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="tabkat2">
			<div id="sek1">
				<div id="tekst" style="padding-left: 100px;"><s:property value="displayableName"/></div></div>
			</div>
			</td>
			
		<td width="305px" height="30px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="tabkat2">
			<div id="sek2"><div id="tekst">10</div></div>
			</div>
			</td>
			
		<td width="115px" height="30px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="tabkat2">
			<div id="sek3"><div id="tekst"><s:checkbox name="categories[%{#item.index}].subCategories[%{#item2.index}].active"/></div></div>
			</div>
			</td>
			
		<td width="115px" height="30px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="tabkat2">
			<div id="sek4"><div id="tekst">o</div></div>
			</div>
			</td>
			
		<td width="115px" height="30px" style="padding:0px; border-collapse:collapse; border:0px; border-spacing:0px;">
			<div id="tabkat2" onclick='deleteCategory(${it2.id})'>
			<div id="sek5"><div id="tekst">DEL</div></div>
			</div>
			</td>
		</tr>
	</s:iterator>
</s:iterator>
</table>
</div>
</s:form>

<s:form name="f2" action="CategoryAdminAction" theme="simple">


</s:form>
