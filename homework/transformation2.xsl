<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="collection/div">
        
     
        
        <title>
            <xsl:value-of select="a[1]/div[@class='title']"/>
        </title>
        
        <series>
            <xsl:value-of select="/a[1]/
                [@class='Series-Link']"/>
        </series>
        
          <Cover-Image>
            <xsl:value-of select="a[1]/div[@class='cover-image'
          ]/img/@src"/>
        </Cover-Image>
        
          <publisher>
            VIZ Media
        </publisher>
        
         
        <latest-chapter>
            <xsl:value-of select="a[2]"/>
        </latest-chapter>
        
        <release-date>
            <xsl:value-of select="a[2]/span[1]"/>
        </release-date>
        

        <chapter-link>
            <xsl:value-of select="a[2]/@href"/>
        </chapter-link>
        
        
    </xsl:template>
    
    
</xsl:stylesheet>