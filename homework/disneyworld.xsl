<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
<xsl:strip-space elements="*"/>
    
    <xsl:template match="disneyworld">
        <html>
          <head>
            <title> My first transformation </title>
                <link rel="stylesheet" type="test/css" href="https://github.com/calbrock/calbrock.github.io/blob/main/homework/xml-style.css"/>
            </head>

            <body>
                <h1>Blrafgh</h1>
                <p> this is a guide to walt disney world the biggest game of chutes and ladders
                    <sup>tm</sup>!
                </p>
                <xsl:apply-templates/>
               
            </body>


        </html>
        </xsl:template>
       
        <xsl:template match= "themepark">
            <div>
                <xsl:apply-templates/>
            </div>
            
        </xsl:template>
                <xsl:template match= "name">
                    <h1><xsl:apply-templates/></h1>
    </xsl:template>
       <xsl:template match= "rides">
           <h2>Rides</h2>
           <ul>
               <xsl:apply-templates/>
           </ul>
       </xsl:template>
        
        <xsl:template match= "hotels">
            <h2>hotels</h2>
            <ul>
                <xsl:apply-templates/>
            </ul>
        </xsl:template>
    <xsl:template match="ride|hotel">
        <li>
            <xsl:apply-templates/>
        </li>
        
        </xsl:template>
       
        <xsl:template match="ride[not(@type='rollercoaster')]">
            <li>
                <b><xsl:apply-templates/></b>
            </li>
            
        </xsl:template>
</xsl:stylesheet>

