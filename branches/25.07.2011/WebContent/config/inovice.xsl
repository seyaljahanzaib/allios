<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:template match="/">
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
<fo:layout-master-set>
<fo:simple-page-master master-name="ZUZ" page-height="29.7cm" page-width="21cm" margin-top="0.5cm" margin-bottom="0.5cm" margin-left="10mm" margin-right="10mm">
<fo:region-body/>
</fo:simple-page-master>
</fo:layout-master-set>
<fo:page-sequence master-reference="ZUZ" initial-page-number="1">
<fo:flow flow-name="xsl-region-body" font-family="Tahomal">

	<fo:block>
           <fo:external-graphic src="invioce_logo.png"/>
	</fo:block>
	<fo:block margin-left="80mm" letter-spacing="3" font-size="12pt" font-family="TahomalBD">FAKTURA VAT</fo:block>
	<fo:block margin-left="80mm" letter-spacing="3" font-size="11pt">Nr. <xsl:value-of select="root/name"/></fo:block>
	<fo:block margin-left="100mm" font-size="11pt">ORYGINAŁ</fo:block>

	<fo:block text-align="right" font-size="9pt">Data wystawienia :</fo:block>
	<fo:block text-align="right" font-size="9pt" font-family="TahomalBD" >Data sprzedaży :</fo:block>
</fo:flow>
</fo:page-sequence>
</fo:root>
</xsl:template>
</xsl:stylesheet>
