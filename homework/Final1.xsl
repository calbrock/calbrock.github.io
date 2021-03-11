<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:strip-space elements="*"/>
    
    <xsl:output indent="yes"/>
    
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="collection">


        

            <html>
                <head>
                    <title> Manga data </title>
                    <link rel="stylesheet" type="text/css" href="https://github.com/calbrock/calbrock.github.io/blob/main/css/main.css"/>
                </head>
                
                
                <body>
                    <p>
                    <h1>Manga data from Yen Press and Viz Media</h1>
                    <p> This site is for listing manga that is on the schdule for the publishers release later this month 
                        or in the next two months
                        <p>As of right now the content for Viz Media is not uploaded on thie site yet.</p>
                    </p></p>
                
                
                    <table border="1">
                       
                        <tr>
                            <th>Cover Image</th>
                            <th>Title</th>
                            <th>Author</th>
                            <th>Publisher</th>
                            <th>Description</th>
                            <th>Latest chapter</th>
                            <th>Chapter info</th>
                            <th>Series info</th>
                        </tr>
                       
                        
                        
                        <xsl:apply-templates/>
                        
                        
                        
                        
                    </table>
            </body>
                
            </html>
                    
            
           
    </xsl:template>
    
<!--    
    <xsl:template match="volume">
        
        <td>
            <xsl:apply-templates select="title"/>
        </td>
        
        <td><xsl:apply-templates select="author"/>
            
            
        </td></xsl:template>-->
        
  
    <xsl:template match="volume">
        <tr>
            <xsl:apply-templates />
        </tr>
    </xsl:template>
            
   <xsl:template match="Cover-Image">
        <td>
            <img src="{@src}"/>
        </td>
    </xsl:template>
    
  
    
    <xsl:template match="title">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    
    
    
    <xsl:template match="author">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    
    
    <xsl:template match="publisher">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    
    
    
    <xsl:template match="description">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    
    
    
    <xsl:template match="latest-chapter">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    
    
    
    <xsl:template match="chapter-info">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    
    
    
    <xsl:template match="series-info | Series-Link">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
   
    <xsl:template match="book-id">
        <book-id id="{@book-id}"/>
    </xsl:template>
      
  

    
</xsl:stylesheet>

