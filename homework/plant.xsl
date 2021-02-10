<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="CATALOG/PLANT">
        <html>
            <head>
                <title> My first transformation </title>
                <link rel="stylesheet" type="text/css" href="https://github.com/calbrock/calbrock.github.io/blob/main/css/main.css"/>
                
            </head>
            
            <body>
            
                <xsl:apply-templates/>
                
                    
                    <h1>Plant Catalog </h1>
                    <p> this is to look at plants and their availability 
                        <sup>tm</sup>
                        !
                    </p>
            </body>
        </html>
               
                <table border="1">
                    <tr bgcolor="#9acd32">
                        
                        <tr>
                            <xsl:apply-templates/>
                            <th>Name</th>
                            <th>Speieces</th>
                            <th>Climate Level</th>
                            <th>Light</th>
                            <th>Price</th>
                            <th>Avalability</th>
                        </tr>
                        
                        <tr>
                            
                            <td><xsl:value-of select="COMMON"/></td>
                            
                            
                            
                            
                            <td><xsl:value-of select="BOTANICAL"/>
                            </td>
                            
                            
                            
                            <td><xsl:value-of select="ZONE"/></td>
                            
                            
                            
                            <td><xsl:value-of select="LIGHT"/></td>
                            
                            
                            
                            <td><xsl:value-of select="PRICE"/></td>
                            
                            
                            
                            <td><xsl:value-of select="AVAILABILITY"/></td>
                            
                            
                        </tr>
                    </tr>
                    
                    
                    
                </table>
            
     
    </xsl:template>
    
    <xsl:template match="COMMON"></xsl:template>
    <xsl:template match="BOTANICAL"></xsl:template>
    <xsl:template match="ZONE"></xsl:template>
    <xsl:template match="LIGHT"></xsl:template>
    <xsl:template match="PRICE"></xsl:template>
    <xsl:template match="AVAILABILITY"></xsl:template>
    
</xsl:stylesheet>

