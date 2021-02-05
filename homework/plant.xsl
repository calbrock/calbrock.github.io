<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:strip-space elements="*"/>
    <xsl:template match="disneyworld">
        <html>
            <head>
                <title> My first transformation </title>
<link rel="stylesheet" type="text/css" href="https://github.com/calbrock/calbrock.github.io/blob/main/css/main.css"/>    
            </head>
            
            <body>
                <h1>Blrafgh</h1>
                <p> this is a guide to walt disney world the biggest game of chutes and ladders
                    <sup>tm</sup>
                    !
                </p>
                <xsl:apply-templates/>
            </body>
        </html>
        
    </xsl:template>
  
      <xsl:template match= "COMMON">
          <div>
              <xsl:apply-templates/>
          </div>
      </xsl:template>
        
</xsl:stylesheet>

