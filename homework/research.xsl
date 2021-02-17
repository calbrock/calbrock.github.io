<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output indent="yes"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="div[@class = 'interior-content']">

        <xsl:result-document href="file:/Users/castine/Desktop/research-journal.xml">
            <content>
                <xsl:apply-templates select="li">
                    <xsl:sort select="p[1]/span" order="descending"/>
                </xsl:apply-templates>
            </content>
        </xsl:result-document>

    </xsl:template>


    <!-- what I want ignored -->

    <xsl:template match="head"/>
    <xsl:template match="script"/>
    <xsl:template match="site-container/site-header"/>
    <xsl:template match="/html/body[1]/form[1]/div[2]/header[1]"/>
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[2]/div[1]/div[1]/a[1]"/>
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[2]/div[1]/div[1]/a[2]"/>
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[2]/div[1]/div[1]/a[3]/@href"/>
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[2]/div[1]/div[1]/a[4]/@href"/>
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[2]/div[1]/div[1]/span[4]/@class"/>
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[2]/div[1]/div[1]"/>
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[3]/div[1]/div[1]/div[1]/h1[1]"/>
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[3]/div[1]/div[2]/div[1]/@class"/>
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[3]/div[2]/div[1]/div[1]"/>
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[4]"/>
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/script[1]/@type"/>


    <!-- template -->

    <!-- url  need to get website not text?-->
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[3]/div[1]/div[2]/ul[1]/li[*]/p[1]/a[1]/@href"/>


    <!-- title -->
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[3]/div[1]/div[2]/ul[1]/li[*]/p[1]/a[1]"/>



    <!-- institution -->
    <xsl:template match="/html[1]/body[1]/form[1]/div[2]/main[1]/div[3]/div[1]/div[2]//li/p/span"/>



    <!-- record - correct but not showing???-->
    <xsl:template match="/html[1]/body[1]/form[1]/div[2]/main[1]/div[3]/div[1]/div[2]//li/p[2]"/>

</xsl:stylesheet>
