<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">

    <xsl:template match="collection/VOLUME">

        <Cover-Image>
            <!--<xsl:apply-templates select="img/[@src]"/>-->
            <xsl:attribute name="src">
                <xsl:value-of select="img/@src"/>
            </xsl:attribute>
        </Cover-Image>

        <title>
            <xsl:value-of select="h2 | a[1]/div[1] | h1[1]/a[1]"/>
        </title>

        <author>
            <xsl:value-of select="h3 | h2[1]"/>
        </author>


        <publisher> Yen Press </publisher>

        <release>
            <xsl:value-of select="section"/>
        </release>

        <description>
            <xsl:value-of select="p"/>
        </description>

        <Series-Link>
            <a>
                <xsl:attribute name="href"><xsl:value-of select="a[1]/@href | h1[1]/a[1]"
                    /></xsl:attribute>Read Me</a>


        </Series-Link>

        <book-id>
            <xsl:value-of select="a[1]/img[1]/@data-isbn"/>
        </book-id>

    </xsl:template>


</xsl:stylesheet>
