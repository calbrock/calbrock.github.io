<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:strip-space elements="*"/>

    <xsl:template match="CATALOG">
        <html>
            <head>
                <title> My first transformation </title>
                <link rel="stylesheet" type="text/css"
                    href="https://github.com/calbrock/calbrock.github.io/blob/main/css/main.css"/>

            </head>

            <body>
                <h1>Plant Catalog! <sup>tm</sup>
                </h1>


                <p> This catalog is here to provide care and avalability infomration to our users on
                    a variety of plants. </p>


                <table border="1">

                    <tr>

                        <th>Common Name</th>
                        <th>Species</th>
                        <th>Climate Scale</th>
                        <th>Sun Exposure</th>
                        <th>Price</th>
                        <th>Avalability</th>
                    </tr>
                    <xsl:apply-templates/>




                </table>
            </body>
        </html>

    </xsl:template>

    <xsl:template match="CATALOG/PLANT">
        <tr>
            <xsl:apply-templates/>
        </tr>
    </xsl:template>

    <xsl:template match="CATALOG/PLANT/COMMON">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>

    <xsl:template match="CATALOG/PLANT/BOTANICAL">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>

    <xsl:template match="CATALOG/PLANT/ZONE">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>

    <xsl:template match="CATALOG/PLANT/LIGHT">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>

    <xsl:template match="CATALOG/PLANT/PRICE">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>

    <xsl:template match="CATALOG/PLANT/AVAILABILITY">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>



</xsl:stylesheet>
