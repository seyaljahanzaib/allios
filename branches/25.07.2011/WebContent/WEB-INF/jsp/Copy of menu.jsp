<%@taglib uri="/struts-tags" prefix="s" %>
<style>
#registartion #header {
	height: 29px; width: 760px;
}

#registartion #header #left{
	height: 29px;  width: 10px; background: url(img/r_etl.png); float: left;
}
#registartion #header #middle{
	height: 29px; background: url(img/r_etc.png) repeat-x;   float: left; width: 740px;
	font: bold 13px/29px Arial, sans-serif; color: white;
}
#registartion #header #right{
	height: 29px; width: 10px; background: url(img/r_etr.png); float: left;
}
#registartion #fields {
	background-color: #fefaed;
}

</style>

<div id="registartion">
	<div id="header">
		<div id="left"></div>
		<div id="middle">Rejestracja</div>
		<div id="right"></div>
	</div>
	
			<div id="fields">
	<s:form theme="simple" action="RegisterAction">

			<s:if test='!getFieldErrors().isEmpty()'>
				<div style="text-align: center; color: red; font: bold 13px/50px Arial, sans-serif;">Wypelnij wszytskie wymagane pola</div>
			</s:if>

			<div id="inne" style="font: bold 11px Tahoma, sans-serif; color: #16117c;">
				<table style="margin-top: 10px; margin-left: 20px;"><tr>
					<td width="130px;">Login :</td>
					<s:if test='getFieldErrors().containsKey("name")'>
						<td><s:textfield name="login" cssStyle="border-color :red; border-style: none;"/></td>
					</s:if>
					<s:else>
						<td><s:textfield name="login"/></td>
					</s:else>
				</tr></table>
				<div style="background-color: #f8deac; height: 1px; background-repeat: x; margin-top: 10px;"></div>
			</div>

			<div id="inne" style="font: bold 11px Tahoma, sans-serif; color: #16117c;">
				<table style="margin-top: 10px; margin-left: 20px;"><tr>
					<td width="130px;">Haslo :</td>
					<s:if test='getFieldErrors().containsKey("password")'>
						<td><s:textfield name="password" cssStyle="border-color :red;"/></td>
					</s:if>
					<s:else>
						<td><s:textfield name="password"/></td>
					</s:else>
				</tr></table>
				<div style="background-color: #f8deac; height: 1px; background-repeat: x; margin-top: 10px;"></div>
			</div>

			<div id="inne" style="font: bold 11px Tahoma, sans-serif; color: #16117c;">
				<table style="margin-top: 10px; margin-left: 20px;"><tr>
					<td width="130px;">Potwierdz haslo :</td>
					<s:if test='getFieldErrors().containsKey("confirmPassword")'>
						<td><s:textfield name="confirmPassword" cssStyle="border-color :red;"/></td>
					</s:if>
					<s:else>
						<td><s:textfield name="confirmPassword"/></td>
					</s:else>
				</tr></table>
				<div style="background-color: #f8deac; height: 1px; background-repeat: x; margin-top: 10px;"></div>
			</div>
			
			<div id="inne" style="font: bold 11px Tahoma, sans-serif; color: #16117c;">
				<table style="margin-top: 10px; margin-left: 20px;"><tr>
					<td width="130px;">Nazwa firmy :</td>
					<td><s:textfield name="companyName"/></td>
					<td><s:if test='getFieldErrors().containsKey("companyName")'>Nie wypelnione</s:if></td>
				</tr></table>
				<div style="background-color: #f8deac; height: 1px; background-repeat: x; margin-top: 10px;"></div>
			</div>
			
			<div id="inne" style="font: bold 11px Tahoma, sans-serif; color: #16117c;">
				<table style="margin-top: 10px; margin-left: 20px;"><tr>
					<td width="130px;">Imie :</td>
					<td><s:textfield name="customerName"/></td>
					<td><s:if test='getFieldErrors().containsKey("customerName")'>Nie wypelnione</s:if></td>
				</tr></table>
				<div style="background-color: #f8deac; height: 1px; background-repeat: x; margin-top: 10px;"></div>
			</div>
			
			<div id="inne" style="font: bold 11px Tahoma, sans-serif; color: #16117c;">
				<table style="margin-top: 10px; margin-left: 20px;"><tr>
					<td width="130px;">Nazwisko :</td>
					<td><s:textfield name="customerSurname"/></td>
					<td><s:if test='getFieldErrors().containsKey("customerSurname")'>Nie wypelnione</s:if></td>
				</tr></table>
				<div style="background-color: #f8deac; height: 1px; background-repeat: x; margin-top: 10px;"></div>
			</div>
			
			<div id="inne" style="font: bold 11px Tahoma, sans-serif; color: #16117c;">
				<table style="margin-top: 10px; margin-left: 20px;"><tr>
					<td width="130px;">NIP :</td>
					<td><s:textfield name="nip"/></td>
					<td><s:if test='getFieldErrors().containsKey("nip")'>Nie wypelnione</s:if></td>
				</tr></table>
				<div style="background-color: #f8deac; height: 1px; background-repeat: x; margin-top: 10px;"></div>
			</div>
			
			<div id="inne" style="font: bold 11px Tahoma, sans-serif; color: #16117c;">
				<table style="margin-top: 10px; margin-left: 20px;"><tr>
					<td width="130px;">Regon :</td>
					<td><s:textfield name="regon"/></td>
					<td><s:if test='getFieldErrors().containsKey("regon")'>Nie wypelnione</s:if></td>
				</tr></table>
				<div style="background-color: #f8deac; height: 1px; background-repeat: x; margin-top: 10px;"></div>
			</div>
			
<!-- ADRES -->
			<div id="inne" style="font: bold 11px Tahoma, sans-serif; color: #16117c;">
				<table style="margin-top: 10px; margin-left: 20px;"><tr>
					<td width="130px;">Ulica i numer domu :</td>
					<td><s:textfield name="baseAdress"/></td>
					<td><s:if test='getFieldErrors().containsKey("baseAdress")'>Nie wypelnione</s:if></td>
				</tr></table>
				<div style="background-color: #f8deac; height: 1px; background-repeat: x; margin-top: 10px;"></div>
			</div>	
			
			<div id="inne" style="font: bold 11px Tahoma, sans-serif; color: #16117c;">
				<table style="margin-top: 10px; margin-left: 20px;"><tr>
					<td width="130px;">Kod pocztowy :</td>
					<td><s:textfield name="zipCode"/></td>
					<td><s:if test='getFieldErrors().containsKey("zipCode")'>Nie wypelnione</s:if></td>
				</tr></table>
				<div style="background-color: #f8deac; height: 1px; background-repeat: x; margin-top: 10px;"></div>
			</div>	
			
			<div id="inne" style="font: bold 11px Tahoma, sans-serif; color: #16117c;">
				<table style="margin-top: 10px; margin-left: 20px;"><tr>
					<td width="130px;">Miejscowosc :</td>
					<td><s:textfield name="city"/></td>
					<td><s:if test='getFieldErrors().containsKey("city")'>Nie wypelnione</s:if></td>
				</tr></table>
				<div style="background-color: #f8deac; height: 1px; background-repeat: x; margin-top: 10px;"></div>
			</div>	
			
						<div id="inne" style="font: bold 11px Tahoma, sans-serif; color: #16117c;">
				<table style="margin-top: 10px; margin-left: 20px;"><tr>
					<td width="130px;">Wojewodztwo :</td>
					<td><s:textfield name="baseAdress"/></td>
					<td><s:if test='getFieldErrors().containsKey("baseAdress")'>Nie wypelnione</s:if></td>
				</tr></table>
				<div style="background-color: #f8deac; height: 1px; background-repeat: x; margin-top: 10px;"></div>
			</div>	
			
						<div id="inne" style="font: bold 11px Tahoma, sans-serif; color: #16117c;">
				<table style="margin-top: 10px; margin-left: 20px;"><tr>
					<td width="130px;">Ulica i numer domu :</td>
					<td><s:textfield name="baseAdress"/></td>
					<td><s:if test='getFieldErrors().containsKey("baseAdress")'>Nie wypelnione</s:if></td>
				</tr></table>
				<div style="background-color: #f8deac; height: 1px; background-repeat: x; margin-top: 10px;"></div>
			</div>			


			<s:submit value="Rejestarcja"></s:submit>


	</s:form>
		</div>
</div>
