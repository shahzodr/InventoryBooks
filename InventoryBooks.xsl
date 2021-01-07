<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <!-- start of root template -->
    <xsl:template match="/">
        <!-- start of web page -->
        <html>
            <head>
                <title>Inventory Books</title>
                <link type="text/css" rel="stylesheet" href="InventoryBooks.css"></link>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th colspan="2">Inventory Books (All)</th>
                    </tr>
                    <tr>
                        <th>Author</th>
                        <th>Title</th>
                    </tr>
                    <xsl:for-each select="books/book">
                        <tr>
                            <td id="author"><xsl:value-of select="author"/></td>
                            <td id="title"><xsl:value-of select="title"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                <hr/>
                <table border="1">
                    <tr>
                        <th colspan="2">Inventory Books (Amy Tan Books)</th>
                    </tr>
                    <tr>
                        <th>Author</th>
                        <th>Title</th>
                    </tr>
                    <xsl:for-each select="books/book">
                        <xsl:if test="author = 'Amy Tan'">
                        <tr>
                            <td id="author"><xsl:value-of select="author"/></td>
                            <td id="title"><xsl:value-of select="title"/></td>
                        </tr>
                    </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
    <!-- end of root template -->
</xsl:stylesheet>