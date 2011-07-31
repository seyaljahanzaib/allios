<%@page import="java.util.ArrayList"%>
<%@page import="pl.alios.model.Product"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="pl.alios.model.dao.adapter.DBAdapter"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
#toCart{
	background: url(img/k_button.png); width: 80px; height: 20px; border: none;
}
#toCart:hover{
	background: url(img/k_button1.png); width: 80px; height: 20px; border: none; cursor: pointer;
}
#productList {
	height: 140px; border-bottom: 1px solid #f8deac;
	}
#productList #lp {
	width: 27px; height: 1px; text-align: center ;font: 12px/90px Tahoma; color: #160e86; float: left;
	}
#productList #photo {
	width: 120px; height: 120px; float: left; margin-top: 8px; margin-left: 11px;
	}
#productList #prodt {
	width: 230px; height: 11px; font: bold 13px Tahoma; color: #160e86; margin-left: 6px; margin-top: 4px; float: left;
	}
#productList #prodo {
	width: 230px; height: 20px; font: 11px Tahoma; color: #160e86; margin-left: 6px; margin-top: 11px; float: left;
	}
#productList #cenab {
	width: 78px; font: bold 12px Tahoma; color: #160e86; float: left; margin-top: 55px; text-align: right;
	}
#productList #cenan {
	width:78px; font: 12px Tahoma; color: #160e86; float: left; margin-top: 2px; text-align: right;
	}
#productList #dostepnosc {
	width: 77px; font: 12px Tahoma; color: #160e86; float: left; margin-top: 92px; text-align: center;
	}
#productList #dostepnoscgraf {
	width: 77px; height:140px; background: url(img/bat_2.png); background-repeat: no-repeat; background-position: center; float: left;
	}
#productList #producer {
	 width: 103px; font: 12px/140px Tahoma; color: #160e86; float: left; text-align: center;
	}
#productList_pageLabel{
	height:27px; width: 142px; font: bold 12px/27px Tahoma; color: #160e86; float: left;
}
#productList_podzialka{
	float:left; background: url(img/pg_ll.png); height: 28px; width: 2px;
}
#productList_pageLabel_two{
	font: 12px/28px Tahoma; color: #160e86; float: left; margin-left: 3px;
}
#productList #field #field_left{
	background: url(img/r_boxl.png); height: 25px; width: 5px; float: left; margin-top: 40px; margin-left: 27px;
}
#productList #field #field_middle {
	background: url(img/r_boxc.png) repeat-x; height: 25px; width: 30px; float: left; margin-top: 40px;
}
#productList #field #field_right {
	background: url(img/r_boxr.png); height: 25px; width: 5px; float: left; margin-top: 40px;
}
#bottom_pages{
	background-color: #fbf1d3; height: 27px; font: bold 12px/20px Tahoma; color: #160e86; margin-top: 15px; margin-bottom: 25px;
}
#navigate_button{
	text-decoration: underline; cursor: pointer;
}


#title_pagelabel{
	height:28px; width: 140px; font: bold 12px/28px Tahoma; color: #160e86; float: left; text-align:center;
}
#title_podzialka{
	float:left; background: url(img/pg_ll.png); height: 28px; width: 2px;
}

#formdiv {
	float: left; height: 140px; 
}


#stopka {
	clear: both;
}

</style>

<%
List<Product> products = new ArrayList<Product>();
Map<String,Object> sessionAttr = ActionContext.getContext().getSession();
Map<String, ArrayList<Product>> productMap = (Map<String, ArrayList<Product>>) getServletContext().getAttribute("products");
List<Product> allProducts = productMap.get(sessionAttr.get("cart_category"));
int pageNum = Integer.valueOf((String)sessionAttr.get("cart_page"));
int end = 10*pageNum;
int start = end - 10;

for(int i=start;i<end;i++){
	try{
	products.add(allProducts.get(i));
	}catch(IndexOutOfBoundsException e1){
	}catch(NullPointerException e2){}
}
int number=0;
int[] pageTab;
if (allProducts != null && allProducts.size() >0){
	if (allProducts.size() % 10 > 0)
		number= allProducts.size() / 10 + 1;
	else
		number= allProducts.size() / 10;
	int i=1;
	pageTab = new int[number];
	while(i<=number){
		pageTab[i-1] = i;
		i++;
	}
	int item;
}else{
	allProducts = new ArrayList<Product>();
	number = 1;
	pageTab = new int[]{1};
}
%>

<table cellpadding="0" cellspacing="0">

	<tr><td colspan="6" style="background:url(img/pg_c.png); height:29px; width:760px; font:bold 12px/29px Tahoma; color:#160e86;">
		<div style="margin-left:5px; float:left;">Liczba produktów : <%=allProducts.size()%></div>
		<div style="float:right; margin-right:150px;">Sortowanie : </div>
	</td></tr>
</table>



<table style="border:0px; padding:0px; border-spacing:0px; border-collapse:collapse;">
	<tr style="background-color:#fbf1d3 ">
		<td style="width=142px; height:28px; padding:0px; border-spacing:0px; border-collapse:collapse;">
			<div id="title_pagelabel">
			<div style="float:left; margin-left:3px; text-align:center;">Strona:</div>
			<div style="float:left; margin-left:5px; text-align:center;">
			<form action="SetPageAction" name="pageChange">
				<select name="pageNumber" style="width:50px;" onchange='javascript:void(document.forms["pageChange"].submit())'>
				<c:set var="numerStrony" value="<%=pageNum%>" />
					<c:forEach items="<%=pageTab%>" var="item">
						<c:if test="${item == numerStrony}">
							<option selected="selected" value="${item}">${item}</option>
						</c:if>
						<c:if test="${item != numerStrony}">
							<option value="${item}">${item}</option>
						</c:if>
					</c:forEach>
				</select>
			</form>
			</div>
			<div style="float:left; margin-left:5px;">z <%=number%></div>
			</div>
		
		<div id="title_podzialka"></div>
			
		</td>
		
		
		<td style="width:255px; height:28px; padding:0px; border-spacing:0px; border-collapse:collapse;">
			<div id="productList_pageLabel_two" style="width:250px;">Nazwa produktu</div>
			<div id="title_podzialka"></div>
		</td>
			
			
		<td style="width:84px; height:28px; padding:0px; border-spacing:0px; border-collapse:collapse;">
			<div id="productList_pageLabel_two" style="width:79px; text-align:center;">Cena</div>
			<div id="title_podzialka"></div>
		</td>
		
		<td style="width:103px; height:28px; padding:0px; border-spacing:0px; border-collapse:collapse;">
			<div id="productList_pageLabel_two" style="width:98px; text-align:center;">Producent</div>
			<div id="title_podzialka"></div>
		</td>
		
		<td style="width:87px; height:28px; padding:0px; border-spacing:0px; border-collapse:collapse;">
			<div id="productList_pageLabel_two" style="width:82px; text-align:center;">Dostępność</div>
			<div id="title_podzialka"></div>
		</td>
		
		<td style="width:89px; height:28px; padding:0px; border-spacing:0px; border-collapse:collapse;">
			<div id="productList_pageLabel_two" style="width:86px; text-align:center;">Ilość</div>
			<div id="stopka"></div>
		</td>

	</tr>

	
	<c:forEach items="<%=products%>" var="item" >
		<tr>
			<td style="width=140px; height:140px; padding:0px; border-spacing:0px; border-collapse:collapse;">
				<div id="productList"><div id="photo"><img alt="" src="${item.image120}" height="120px" width="120px"> </div></div></td>
			
			
			<td style="width:253px; height:140px; padding:0px; border-spacing:0px; border-collapse:collapse;">
				<div id="productList">
				<div id="prodt">${item.name}</div>
				<div id="prodo">${item.shortDescription}</div>
				</div>
			</td>
			
			
			<td style="width:82px; height:140px; padding:0px; border-spacing:0px; border-collapse:collapse;">
				<div id="productList">
					<div id="cenab">${item.priceBrutto} zł</div>
					<div id="cenan">${item.priceNetto} zł</div>
				</div>
			</td>
			
			
			<td style="width:103px; height:140px; padding:0px; border-spacing:0px; border-collapse:collapse;">
				<div id="productList"><div id="producer">${item.producer}</div></div>
			</td>
			
			
			<td style="width:87px; height:140px; padding:0px; border-spacing:0px; border-collapse:collapse;">
				<div id="productList">
					<div id="dostepnoscgraf">
					<div id="dostepnosc">dostępny</div></div>
				</div>
			</td>
			
			
			<td style="width:89px; height:28px; padding:0px; border-spacing:0px; border-collapse:collapse;">
				
				<div id="formdiv">
				<form action="AddToCartAction">
					<div id="productList">
						<div id="field" >
							<div id="field_left"></div>
							<div id="field_middle"><s:textfield name="quantity" value="1" cssStyle="border:0px; width:30px; margin-top:2px; text-align:center;" theme="simple"/></div>
							<div id="field_right"></div>
						</div>
						<div>
							<input type="hidden" name="product_id" value="${item.product_id}"/>
							<input type="submit" id="toCart" value="" style="margin-left: 6px; margin-top: 10px;"/>
						</div>
					</div>
				</form>
				</div>
			</td>
		</tr>
	</c:forEach>
	
	
</table>

<%if( allProducts.size() != 0){ %>
<div id="bottom_pages">
	<div style="float:left; margin-left: 170px; margin-top: 3px;">
		<form action="SetPageAction" name="first_page">
			<input type="hidden" name="pageNumber" value="first">
		</form>
		<label id="navigate_button"  onclick='javascript:void(document.forms["first_page"].submit())'>Pierwsza</label>
	</div>
	<div style="float:left; margin-left: 20px; margin-top: 3px;" >
		<form action="SetPageAction" name="prev_page">
			<input type="hidden" name="pageNumber" value="prev">
		</form>
		<label id="navigate_button"  onclick='javascript:void(document.forms["prev_page"].submit())'>Poprzednia</label>
	</div>
	<div style="float:left; margin-left: 40px; margin-top: 3px;" >Strona ${numerStrony} z <%=number%></div>
	<div style="float:left; margin-left: 40px; margin-top: 3px;" >
		<form action="SetPageAction" name="next_page">
			<input type="hidden" name="pageNumber" value="next">
		</form>
		<label id="navigate_button"  onclick='javascript:void(document.forms["next_page"].submit())'>Nastepna</label>
	</div>
	<div style="float:left; margin-left: 20px; margin-top: 3px;" >
		<form action="SetPageAction" name="last_page">
			<input type="hidden" name="pageNumber" value="last">
		</form>
		<label id="navigate_button"  onclick='javascript:void(document.forms["last_page"].submit())'>Ostatnia</label>
	</div>
</div>
<%}  %>