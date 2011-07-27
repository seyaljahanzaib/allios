<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:template match="/">
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
<fo:layout-master-set>
<fo:simple-page-master master-name="ZUZ" page-height="29.7cm" page-width="21cm" margin-top="1cm" margin-bottom="0.5cm" margin-left="1cm" margin-right="10mm">
<fo:region-body/>
<fo:region-after extent="2cm"/>
</fo:simple-page-master>
</fo:layout-master-set>
<fo:page-sequence master-reference="ZUZ" initial-page-number="1">
<fo:flow flow-name="xsl-region-body" font-family="Tahomal">

	<fo:block>
           <fo:external-graphic src="invioce_logo.png"/>
	</fo:block>
	<fo:block text-align="right" margin-right="45mm" letter-spacing="4" font-size="12pt" font-family="TahomalBD">FAKTURA VAT</fo:block>
	<fo:block text-align="right" margin-right="45mm" letter-spacing="2" font-size="11pt">Nr. <xsl:value-of select="root/name"/></fo:block>
	<fo:block text-align="right" margin-right="45mm" letter-spacing="2" font-size="10pt" font-family="TahomalBD">ORYGINAŁ</fo:block>


	<fo:table table-layout="fixed" width="100%" space-before="10pt">
		<fo:table-column column-width="17.2cm" />
		<fo:table-column column-width="1.8cm" />
			<fo:table-body>
				<fo:table-row>
				
					<fo:table-cell>
					<fo:block text-align="right" font-size="9pt" font-family="TahomalBD">Data wystawienia:</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" font-size="9pt">29-10-2011</fo:block>
					</fo:table-cell>
					
				</fo:table-row>
				
				<fo:table-row>	
				
					<fo:table-cell>
					<fo:block text-align="right" font-size="9pt" font-family="TahomalBD">Data sprzedaży:</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" font-size="9pt">29-10-2011</fo:block>
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
				<fo:block margin-left="10mm" text-align="left" font-size="10pt" font-family="TahomalBD">COMHAR Paweł Kłosiński</fo:block>
			</fo:table-cell>
		</fo:table-row>
		
		
		<fo:table-row>
			<fo:table-cell>
				<fo:block margin-left="5mm" text-align="left" font-size="10pt">09-409 Płock, ul. Szpacza 12</fo:block>
			</fo:table-cell>
			<fo:table-cell>
				<fo:block margin-left="10mm" text-align="left" font-size="10pt">09-410 Płock, ul. Powstańców Styczniowych 17/10</fo:block>
			</fo:table-cell>
		</fo:table-row>
		
		
		<fo:table-row>
			<fo:table-cell>
				<fo:block margin-left="5mm" text-align="left" font-size="10pt">NIP: 774-236-23-23</fo:block>
			</fo:table-cell>
			<fo:table-cell>
				<fo:block margin-left="10mm" text-align="left" font-size="10pt">NIP: 774-236-23-23</fo:block>
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
					<fo:block text-align="left" font-size="9pt">29-10-2011</fo:block>
					</fo:table-cell>
					
				</fo:table-row>
				
				<fo:table-row>	
				
					<fo:table-cell>
					<fo:block margin-left="5mm" text-align="left" font-size="9pt" font-family="TahomalBD">Sposób płatności:</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="left" font-size="9pt">29-10-2011</fo:block>
					</fo:table-cell>
					
				</fo:table-row>	
			</fo:table-body>
</fo:table>

<fo:block margin-left="5mm" text-align="left" font-size="9pt" space-before="10pt" font-family="TahomalBD">Konto bank.:</fo:block>
<fo:block margin-left="5mm" text-align="left" font-size="9pt">Bank BPH SA O/Płock</fo:block>
<fo:block margin-left="5mm" text-align="left" font-size="9pt">PL 80 1020 2345 2223 2323 3043</fo:block>

<fo:table table-layout="fixed" width="100%">
		<fo:table-column column-width="18cm" />
		<fo:table-column column-width="1cm" />
			<fo:table-body>
				<fo:table-row>
				
					<fo:table-cell>
					<fo:block text-align="right" margin-right="2pt" font-size="9pt">Kod klienta:</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" font-size="9pt" font-family="TahomalBD">20009</fo:block>
					</fo:table-cell>
					
				</fo:table-row>
			</fo:table-body>
</fo:table>


<fo:table table-layout="fixed" width="100%">

		<fo:table-column column-width="0.53cm"/>
		<fo:table-column column-width="6.70cm"/>
		<fo:table-column column-width="1.22cm"/>
		<fo:table-column column-width="0.97cm"/>
		<fo:table-column column-width="0.73cm"/>
		<fo:table-column column-width="1.60cm"/>
		<fo:table-column column-width="1.07cm"/>
		<fo:table-column column-width="1.7cm" />
		<fo:table-column column-width="0.78cm"/>
		<fo:table-column column-width="1.85cm"/>
		<fo:table-column column-width="1.85cm"/>
		
			
			<fo:table-body>
				<fo:table-row>
				
					<fo:table-cell border-left-style="dashed" border-top-style="dashed" border-bottom-style="dashed" border-width="0.8px" >
					<fo:block text-align="center" padding-top="4px" font-size="7pt" font-family="TahomalBD">L.p.</fo:block>
					</fo:table-cell>
					
					<fo:table-cell border-left-style="dashed" border-top-style="dashed" border-bottom-style="dashed" border-width="0.8px">
					<fo:block text-align="left" padding-top="4px" font-size="7pt" font-family="TahomalBD">Nazwa towaru/usługi</fo:block>
					</fo:table-cell>
					
					<fo:table-cell border-left-style="dashed" border-top-style="dashed" border-bottom-style="dashed" border-width="0.8px">
					<fo:block text-align="center" font-size="7pt" font-family="TahomalBD">Symbol PKWiU</fo:block>
					</fo:table-cell>
					
					<fo:table-cell border-left-style="dashed" border-top-style="dashed" border-bottom-style="dashed" border-width="0.8px">
					<fo:block text-align="center" padding-top="4px" font-size="7pt" font-family="TahomalBD">Ilość</fo:block>
					</fo:table-cell>
					
					<fo:table-cell border-left-style="dashed" border-top-style="dashed" border-bottom-style="dashed" border-width="0.8px">
					<fo:block text-align="center" padding-top="4px" font-size="7pt" font-family="TahomalBD">J.m</fo:block>
					</fo:table-cell>
					
					<fo:table-cell border-left-style="dashed" border-top-style="dashed" border-bottom-style="dashed" border-width="0.8px">
					<fo:block text-align="center" font-size="7pt" font-family="TahomalBD">Cena netto</fo:block>
					<fo:block text-align="center" font-size="7pt" font-family="TahomalBD">(zł)</fo:block>
					</fo:table-cell>
					
					<fo:table-cell border-left-style="dashed" border-top-style="dashed" border-bottom-style="dashed" border-width="0.8px">
					<fo:block text-align="center" font-size="7pt" font-family="TahomalBD">Rabat</fo:block>
					<fo:block text-align="center" font-size="7pt" font-family="TahomalBD">(%)</fo:block>
					</fo:table-cell>
					
					<fo:table-cell border-left-style="dashed" border-top-style="dashed" border-bottom-style="dashed" border-width="0.8px">
					<fo:block text-align="center" font-size="7pt" font-family="TahomalBD">Wart. netto</fo:block>
					<fo:block text-align="center" font-size="7pt" font-family="TahomalBD">(zł)</fo:block>
					</fo:table-cell>
					
					<fo:table-cell border-left-style="dashed" border-top-style="dashed" border-bottom-style="dashed" border-width="0.8px">
					<fo:block text-align="center" font-size="7pt" font-family="TahomalBD">VAT</fo:block>
					<fo:block text-align="center" font-size="7pt" font-family="TahomalBD">(%)</fo:block>
					</fo:table-cell>
					
					<fo:table-cell border-left-style="dashed" border-top-style="dashed" border-bottom-style="dashed" border-width="0.8px">
					<fo:block text-align="center" font-size="7pt" font-family="TahomalBD">Kwota VAT</fo:block>
					<fo:block text-align="center" font-size="7pt" font-family="TahomalBD">(zł)</fo:block>
					</fo:table-cell>
					
					<fo:table-cell border-left-style="dashed" border-top-style="dashed" border-bottom-style="dashed" border-right-style="dashed" border-width="0.8px">
					<fo:block text-align="center" font-size="7pt" font-family="TahomalBD">Wart. brutto</fo:block>
					<fo:block text-align="center" font-size="7pt" font-family="TahomalBD">(zł)</fo:block>
					</fo:table-cell>
					
					
					
				</fo:table-row>
			</fo:table-body>
</fo:table>


<fo:table table-layout="fixed" width="100%">

		<fo:table-column column-width="0.53cm" />
		<fo:table-column column-width="6.70cm" />
		<fo:table-column column-width="1.22cm" />
		<fo:table-column column-width="0.97cm" />
		<fo:table-column column-width="0.73cm" />
		<fo:table-column column-width="1.60cm" />
		<fo:table-column column-width="1.07cm" />
		<fo:table-column column-width="1.7cm" />
		<fo:table-column column-width="0.78cm" />
		<fo:table-column column-width="1.85cm" />
		<fo:table-column column-width="1.85cm" />
		
			
			<fo:table-body>
				<fo:table-row>
				
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt">1.</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="left" padding-top="5px" font-size="7pt">Strzykawka Admira 4g w butelce 10l</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt"></fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt">100</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt">szt.</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" font-size="7pt">11 035,06</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt">5</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" font-size="7pt">123 234,04</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt">22</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" font-size="7pt">11 230,06</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" font-size="7pt">123 435,99</fo:block>
					</fo:table-cell>	
					
				</fo:table-row>
			</fo:table-body>
</fo:table>	

<fo:table table-layout="fixed" width="100%">

		<fo:table-column column-width="0.53cm" />
		<fo:table-column column-width="6.70cm" />
		<fo:table-column column-width="1.22cm" />
		<fo:table-column column-width="0.97cm" />
		<fo:table-column column-width="0.73cm" />
		<fo:table-column column-width="1.60cm" />
		<fo:table-column column-width="1.07cm" />
		<fo:table-column column-width="1.70cm" />
		<fo:table-column column-width="0.78cm" />
		<fo:table-column column-width="1.85cm" />
		<fo:table-column column-width="1.85cm" />
		
			<fo:table-body>
				<fo:table-row>
				
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt">1.</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="left" padding-top="5px" font-size="7pt">Strzykawka Admira 4g w butelce 10l</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt"></fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt">100</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt">szt.</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" font-size="7pt">11 035,06</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt">5</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" font-size="7pt">123 234,04</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="center" padding-top="5px" font-size="7pt">22</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" font-size="7pt">11 230,06</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" font-size="7pt">123 435,99</fo:block>
					</fo:table-cell>	
					
				</fo:table-row>
			</fo:table-body>
</fo:table>	
	
	
	

<fo:table table-layout="fixed" width="100%">

		<fo:table-column column-width="10.15cm" />
		<fo:table-column column-width="1.60cm" />
		<fo:table-column column-width="1.07cm" />
		<fo:table-column column-width="1.70cm" />
		<fo:table-column column-width="0.78cm" />
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
					<fo:block text-align="right" padding-top="5px" margin-top="5px" font-size="7pt" border-top-style="dashed" border-width="0.8px">10 234,04</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" margin-top="5px" font-size="7pt" border-top-style="dashed" border-width="0.8px">22%</fo:block>
					</fo:table-cell>
	
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" margin-top="5px" font-size="7pt" border-top-style="dashed" border-width="0.8px">1 234,04</fo:block>
					</fo:table-cell>
					
					<fo:table-cell>
					<fo:block text-align="right" padding-top="5px" margin-top="5px" font-size="7pt" border-top-style="dashed" border-width="0.8px">123 234,04</fo:block>
					</fo:table-cell>
						
					
				</fo:table-row>
			</fo:table-body>

</fo:table>	

<fo:block text-align="left" font-size="11pt" space-before="10pt" font-family="TahomalBD">Do zapłaty: 1 320,95 zł</fo:block>
<fo:block text-align="left" font-size="11pt">Słownie: sześćdziesiąt jeden złotych trzydzieści dwa grosze</fo:block>

</fo:flow>
</fo:page-sequence>

<fo:page-sequence>
  <fo:flow flow-name="xsl-region-after">
      <fo:block text-align="left" font-size="11pt" space-before="10pt" font-family="TahomalBD">Do zapłaty: 1 320,95 zł</fo:block>
  </fo:flow>
</fo:page-sequence>

</fo:root>

</xsl:template>
</xsl:stylesheet>
