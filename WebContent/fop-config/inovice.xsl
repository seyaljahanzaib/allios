<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:template match="/">
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
<fo:layout-master-set>
<fo:simple-page-master master-name="ZUZ" page-height="29.7cm" page-width="21cm" margin-top="1cm" margin-bottom="0.5cm" margin-left="1cm" margin-right="0.5cm">
<fo:region-body/>
<fo:region-after extent="1.5cm"/>
</fo:simple-page-master>
</fo:layout-master-set>
<fo:page-sequence master-reference="ZUZ" initial-page-number="1">

<fo:static-content flow-name="xsl-region-after">
		<fo:block text-align="left" font-size="7pt" font-family="TahomalBD">Dla produktów medycznych obowiązuje 8% podatku VAT</fo:block>
        <fo:block text-align="left" font-size="7pt" font-family="TahomalBD">Dokonując płatności przelewem prosimy o podanie w polu tytułem numeru faktury oraz kodu klienta: 234/06/2011 20009</fo:block>
        <fo:block text-align="right" margin-top="14pt" font-size="7pt" font-family="TahomalBD">Strona 1 z 1</fo:block>
</fo:static-content>

<fo:flow flow-name="xsl-region-body" font-family="Tahomal">

	<fo:block>
           <fo:external-graphic src="invioce_logo.png"/>
	</fo:block>
	<fo:block text-align="right" margin-right="45mm" letter-spacing="4" font-size="12pt" font-family="TahomalBD">FAKTURA VAT</fo:block>
	<fo:block text-align="right" margin-right="45mm" letter-spacing="2" font-size="11pt">Nr. <xsl:value-of select="Faktura/Numer"/></fo:block>
	<fo:block text-align="right" margin-right="45mm" letter-spacing="2" font-size="10pt" font-family="TahomalBD">ORYGINAŁ</fo:block>


	<fo:table table-layout="fixed" width="100%" space-before="10pt">
		<fo:table-column column-width="17.7cm" />
		<fo:table-column column-width="1.8cm" />
			<fo:table-body>
				<fo:table-row>
				
					<fo:table-cell>
					<fo:block text-align="right" font-size="9pt" font-family="TahomalBD">Data wystawienia:</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" font-size="9pt"><xsl:value-of select="Faktura/DataWystawienia"/></fo:block>
					</fo:table-cell>
					
				</fo:table-row>
				
				<fo:table-row>	
				
					<fo:table-cell>
					<fo:block text-align="right" font-size="9pt" font-family="TahomalBD">Data sprzedaży:</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" font-size="9pt"><xsl:value-of select="Faktura/DataSprzedazy"/></fo:block>
					</fo:table-cell>
					
				</fo:table-row>
				
			</fo:table-body>
		</fo:table>
	
	<fo:table table-layout="fixed" width="100%" space-before="10pt">
		<fo:table-column column-width="9,5cm" />
		<fo:table-column column-width="9,5cm" />
		<fo:table-body>
		
		
		<fo:table-row>
			<fo:table-cell>
				<fo:block margin-left="5mm" text-align="left" font-size="9pt" font-family="TahomalBD">Sprzedawca:</fo:block>
			</fo:table-cell>
			<fo:table-cell>
				<fo:block margin-left="10mm" text-align="left" font-size="9pt" font-family="TahomalBD">Nabywca:</fo:block>
			</fo:table-cell>
		</fo:table-row>
		
		
		<fo:table-row>
			<fo:table-cell>
				<fo:block margin-left="5mm" text-align="left" font-size="10pt" font-family="TahomalBD">ALLIOS Jolanta Matacz</fo:block>
			</fo:table-cell>
			<fo:table-cell>
				<fo:block margin-left="10mm" text-align="left" font-size="10pt" font-family="TahomalBD"><xsl:value-of select="Faktura/Nabywca/Nazwa"/></fo:block>
			</fo:table-cell>
		</fo:table-row>
		
		
		<fo:table-row>
			<fo:table-cell>
				<fo:block margin-left="5mm" text-align="left" font-size="10pt">09-409 Płock, ul. Szpacza 12</fo:block>
			</fo:table-cell>
			<fo:table-cell>
				<fo:block margin-left="10mm" text-align="left" font-size="10pt"><xsl:value-of select="Faktura/Nabywca/Adres"/></fo:block>
			</fo:table-cell>
		</fo:table-row>
		
		
		<fo:table-row>
			<fo:table-cell>
				<fo:block margin-left="5mm" text-align="left" font-size="10pt">NIP: 774-236-23-23</fo:block>
			</fo:table-cell>
			<fo:table-cell>
				<fo:block margin-left="10mm" text-align="left" font-size="10pt">NIP: <xsl:value-of select="Faktura/Nabywca/NIP"/></fo:block>
			</fo:table-cell>
		</fo:table-row>
		</fo:table-body>
		</fo:table>


<fo:table table-layout="fixed" width="100%" space-before="10pt">
		<fo:table-column column-width="3.4cm" />
		<fo:table-column column-width="15.6cm" />
			<fo:table-body>
				<fo:table-row>
				
					<fo:table-cell>
					<fo:block margin-left="5mm" text-align="left" font-size="9pt" font-family="TahomalBD">Termin płatności:</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="left" font-size="9pt"><xsl:value-of select="Faktura/TerminPlatnosci"/></fo:block>
					</fo:table-cell>
					
				</fo:table-row>
				
				<fo:table-row>	
				
					<fo:table-cell>
					<fo:block margin-left="5mm" text-align="left" font-size="9pt" font-family="TahomalBD">Sposób płatności:</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="left" font-size="9pt"><xsl:value-of select="Faktura/SposobPlatnosci"/></fo:block>
					</fo:table-cell>
					
				</fo:table-row>	
			</fo:table-body>
</fo:table>

<fo:block margin-left="5mm" text-align="left" font-size="9pt" space-before="10pt" font-family="TahomalBD">Konto bank.:</fo:block>
<fo:block margin-left="5mm" text-align="left" font-size="9pt">Bank BPH SA O/Płock</fo:block>
<fo:block margin-left="5mm" text-align="left" font-size="9pt">PL 80 1020 2345 2223 2323 3043</fo:block>

<fo:table table-layout="fixed" width="100%">
		<fo:table-column column-width="18.5cm" />
		<fo:table-column column-width="1cm" />
			<fo:table-body>
				<fo:table-row>
				
					<fo:table-cell>
					<fo:block text-align="right" margin-right="2pt" font-size="9pt">Kod klienta:</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" font-size="9pt" font-family="TahomalBD"><xsl:value-of select="Faktura/KodKlienta"/></fo:block>
					</fo:table-cell>
					
				</fo:table-row>
			</fo:table-body>
</fo:table>


<fo:table table-layout="fixed" width="100%">

		<fo:table-column column-width="0.63cm"/>
		<fo:table-column column-width="7.00cm"/>
		<fo:table-column column-width="1.22cm"/>
		<fo:table-column column-width="0.97cm"/>
		<fo:table-column column-width="0.73cm"/>
		<fo:table-column column-width="1.60cm"/>
		<fo:table-column column-width="1.07cm"/>
		<fo:table-column column-width="1.70cm"/>
		<fo:table-column column-width="0.88cm"/>
		<fo:table-column column-width="1.85cm"/>
		<fo:table-column column-width="1.85cm"/>
		
			
			<fo:table-body>
				<fo:table-row>
				
					<fo:table-cell height="0.71cm" border-left-style="dashed" border-top-style="dashed" border-bottom-style="dashed" border-width="0.8px" >
					<fo:block text-align="center" padding-top="6px" font-size="7pt" font-family="TahomalBD">L.p.</fo:block>
					</fo:table-cell>
					
					<fo:table-cell height="0.71cm" border-left-style="dashed" border-top-style="dashed" border-bottom-style="dashed" border-width="0.8px">
					<fo:block text-align="left" padding-top="6px" margin-left="2px" font-size="7pt" font-family="TahomalBD">Nazwa towaru/usługi</fo:block>
					</fo:table-cell>
					
					<fo:table-cell height="0.71cm" border-left-style="dashed" border-top-style="dashed" border-bottom-style="dashed" border-width="0.8px">
					<fo:block text-align="center" padding-top="2px" font-size="7pt" font-family="TahomalBD">Symbol PKWiU</fo:block>
					</fo:table-cell>
					
					<fo:table-cell height="0.71cm" border-left-style="dashed" border-top-style="dashed" border-bottom-style="dashed" border-width="0.8px">
					<fo:block text-align="center" padding-top="6px" font-size="7pt" font-family="TahomalBD">Ilość</fo:block>
					</fo:table-cell>
					
					<fo:table-cell height="0.71cm" border-left-style="dashed" border-top-style="dashed" border-bottom-style="dashed" border-width="0.8px">
					<fo:block text-align="center" padding-top="6px" font-size="7pt" font-family="TahomalBD">J.m</fo:block>
					</fo:table-cell>
					
					<fo:table-cell height="0.71cm" border-left-style="dashed" border-top-style="dashed" border-bottom-style="dashed" border-width="0.8px">
					<fo:block text-align="center" padding-top="2px" font-size="7pt" font-family="TahomalBD">Cena netto</fo:block>
					<fo:block text-align="center" font-size="7pt" font-family="TahomalBD">(zł)</fo:block>
					</fo:table-cell>
					
					<fo:table-cell height="0.71cm" border-left-style="dashed" border-top-style="dashed" border-bottom-style="dashed" border-width="0.8px">
					<fo:block text-align="center" padding-top="2px" font-size="7pt" font-family="TahomalBD">Rabat</fo:block>
					<fo:block text-align="center" font-size="7pt" font-family="TahomalBD">(%)</fo:block>
					</fo:table-cell>
					
					<fo:table-cell height="0.71cm" border-left-style="dashed" border-top-style="dashed" border-bottom-style="dashed" border-width="0.8px">
					<fo:block text-align="center" padding-top="2px" font-size="7pt" font-family="TahomalBD">Wart. netto</fo:block>
					<fo:block text-align="center" font-size="7pt" font-family="TahomalBD">(zł)</fo:block>
					</fo:table-cell>
					
					<fo:table-cell height="0.71cm" border-left-style="dashed" border-top-style="dashed" border-bottom-style="dashed" border-width="0.8px">
					<fo:block text-align="center" padding-top="2px" font-size="7pt" font-family="TahomalBD">VAT</fo:block>
					<fo:block text-align="center" font-size="7pt" font-family="TahomalBD">(%)</fo:block>
					</fo:table-cell>
					
					<fo:table-cell height="0.71cm" border-left-style="dashed" border-top-style="dashed" border-bottom-style="dashed" border-width="0.8px">
					<fo:block text-align="center" padding-top="2px" font-size="7pt" font-family="TahomalBD">Kwota VAT</fo:block>
					<fo:block text-align="center" font-size="7pt" font-family="TahomalBD">(zł)</fo:block>
					</fo:table-cell>
					
					<fo:table-cell height="0.71cm" border-left-style="dashed" border-top-style="dashed" border-bottom-style="dashed" border-right-style="dashed" border-width="0.8px">
					<fo:block text-align="center" padding-top="2px" font-size="7pt" font-family="TahomalBD">Wart. brutto</fo:block>
					<fo:block text-align="center" font-size="7pt" font-family="TahomalBD">(zł)</fo:block>
					</fo:table-cell>
					
					
					
				</fo:table-row>
			</fo:table-body>
</fo:table>

<xsl:template name="ZUZTowary" match="Faktura/Produkty/Produkt/*">
<xsl:for-each select="//Produkt">
<fo:table table-layout="fixed" width="100%">

		<fo:table-column column-width="0.63cm"/>
		<fo:table-column column-width="7.00cm"/>
		<fo:table-column column-width="1.22cm"/>
		<fo:table-column column-width="0.97cm"/>
		<fo:table-column column-width="0.73cm"/>
		<fo:table-column column-width="1.60cm"/>
		<fo:table-column column-width="1.07cm"/>
		<fo:table-column column-width="1.70cm" />
		<fo:table-column column-width="0.88cm"/>
		<fo:table-column column-width="1.85cm"/>
		<fo:table-column column-width="1.85cm"/>
		
			
			<fo:table-body>
			
				<fo:table-row>
				
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt"><xsl:value-of select="LP"/>.</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="left" margin-left="2px" padding-top="5px" font-size="7pt"><xsl:value-of select="Nazwa"/></fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt"></fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt"><xsl:value-of select="Ilosc"/></fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt"><xsl:value-of select="JM"/></fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" margin-right="1px" font-size="7pt"><xsl:value-of select="CennaNetto"/></fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt"><xsl:value-of select="Rabat"/></fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" margin-right="1px" font-size="7pt"><xsl:value-of select="WartoscNetto"/></fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt"><xsl:value-of select="VAT"/></fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" margin-right="1px" font-size="7pt"><xsl:value-of select="KwotaVAT"/></fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" margin-right="1px" font-size="7pt"><xsl:value-of select="WartoscBrutto"/></fo:block>
					</fo:table-cell>	
					
				</fo:table-row>
			</fo:table-body>
</fo:table>	
</xsl:for-each>
</xsl:template>


<fo:table table-layout="fixed" width="100%">

		<fo:table-column column-width="0.63cm"/>
		<fo:table-column column-width="7.00cm"/>
		<fo:table-column column-width="1.22cm"/>
		<fo:table-column column-width="0.97cm"/>
		<fo:table-column column-width="0.73cm"/>
		<fo:table-column column-width="1.60cm"/>
		<fo:table-column column-width="1.07cm"/>
		<fo:table-column column-width="1.70cm" />
		<fo:table-column column-width="0.88cm"/>
		<fo:table-column column-width="1.85cm"/>
		<fo:table-column column-width="1.85cm"/>
		
			
			<fo:table-body>
			
				<fo:table-row>
				
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt"><xsl:value-of select="Faktura/Transport/LP"/>.</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="left" margin-left="2px" padding-top="5px" font-size="7pt">Usługa transportu</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt"></fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt"></fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt"></fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" margin-right="1px" font-size="7pt"></fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt"></fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" margin-right="1px" font-size="7pt"><xsl:value-of select="Faktura/Transport/WartoscNetto"/></fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt">23</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" margin-right="1px" font-size="7pt"><xsl:value-of select="Faktura/Transport/KwotaVAT"/></fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" margin-right="1px" font-size="7pt"><xsl:value-of select="Faktura/Transport/WartoscBrutto"/></fo:block>
					</fo:table-cell>	
					
				</fo:table-row>
			</fo:table-body>
</fo:table>	




<fo:table table-layout="fixed" width="100%">

		<fo:table-column column-width="10.55cm" />
		<fo:table-column column-width="1.60cm" />
		<fo:table-column column-width="1.07cm" />
		<fo:table-column column-width="1.70cm" />
		<fo:table-column column-width="0.88cm" />
		<fo:table-column column-width="1.85cm" />
		<fo:table-column column-width="1.85cm" />
		
			<fo:table-body>
				<fo:table-row>
				
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" font-size="7pt"></fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="left" padding-top="5px" margin-top="5px" font-size="7pt" border-top-style="dashed" border-width="0.8px" font-family="TahomalBD">Łącznie:</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" margin-top="5px" font-size="7pt" border-top-style="dashed" border-width="0.8px"></fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" margin-top="5px" margin-right="1px" font-size="7pt" border-top-style="dashed" border-width="0.8px"><xsl:value-of select="Faktura/Lacznie/WartoscNetto"/></fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" margin-top="5px" font-size="7pt" border-top-style="dashed" border-width="0.8px"></fo:block>
					</fo:table-cell>
	
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" margin-top="5px" margin-right="1px" font-size="7pt" border-top-style="dashed" border-width="0.8px"><xsl:value-of select="Faktura/Lacznie/KwotaVAT"/></fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" margin-top="5px" margin-right="1px" font-size="7pt" border-top-style="dashed" border-width="0.8px"><xsl:value-of select="Faktura/Lacznie/WartoscBrutto"/></fo:block>
					</fo:table-cell>
						
					
				</fo:table-row>
			</fo:table-body>

</fo:table>	

<fo:block text-align="left" font-size="11pt" space-before="10pt" font-family="TahomalBD">Do zapłaty: <xsl:value-of select="Faktura/DoZaplaty/Kwota"/> zł</fo:block>
<fo:block text-align="left" font-size="11pt">Słownie: <xsl:value-of select="Faktura/DoZaplaty/KwotaSlownie"/></fo:block>

<fo:table table-layout="fixed" width="100%">

		<fo:table-column column-width="12cm" />
		<fo:table-column column-width="5cm" />
		<fo:table-column column-width="5cm" />

		
			<fo:table-body>
				<fo:table-row>
				
					<fo:table-cell >
					<fo:block text-align="center" padding-top="40px" font-size="9pt" font-family="TahomalBD"></fo:block>
					</fo:table-cell>
					
					<fo:table-cell border-bottom-style="solid" border-width="0.5pt" >
					<fo:block text-align="center" padding-top="40px" font-size="9pt" font-family="TahomalBD">Wystawił:</fo:block>
					</fo:table-cell>
					
					<fo:table-cell >
					<fo:block text-align="center" padding-top="40px" font-size="9pt" font-family="TahomalBD"></fo:block>
					</fo:table-cell>

					
				</fo:table-row>
				
				
				<fo:table-row>
				
					<fo:table-cell >
					<fo:block text-align="center" padding-top="6px" font-size="9pt" font-family="TahomalBD"></fo:block>
					</fo:table-cell>
					
					<fo:table-cell >
					<fo:block text-align="center" padding-top="6px" font-size="9pt">Jolanta Matacz</fo:block>
					</fo:table-cell>
					
					<fo:table-cell >
					<fo:block text-align="center" padding-top="6px" font-size="9pt" font-family="TahomalBD"></fo:block>
					</fo:table-cell>

					
				</fo:table-row>
				
			</fo:table-body>

</fo:table>	

</fo:flow>
</fo:page-sequence>

</fo:root>

</xsl:template>
</xsl:stylesheet>
