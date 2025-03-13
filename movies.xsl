<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Movie Collection</title>
                <style>
                    body { 
                        font-family: 'Comic Sans MS', cursive, sans-serif; 
                        background-color: #ffebf3; 
                        text-align: center; 
                        margin: 0; 
                        padding: 20px; 
                    }
                    h1 { 
                        color: #d63384; 
                        font-size: 36px; 
                        font-weight: bold; 
                        text-shadow: 2px 2px #ffb6c1; 
                    }
                    table { 
                        width: 80%; 
                        margin: auto; 
                        border-collapse: collapse; 
                        background: #fffafc; 
                        box-shadow: 0 0 15px rgba(255, 182, 193, 0.3); 
                        border-radius: 12px; 
                        overflow: hidden; 
                    }
                    th, td { 
                        border: 1px solid #ffc0cb; 
                        padding: 14px; 
                        text-align: left; 
                        font-size: 16px; 
                    }
                    th { 
                        background-color: #ff69b4; 
                        color: white; 
                        font-size: 18px; 
                        font-weight: bold; 
                    }
                    tr:nth-child(even) { 
                        background-color: #ffe4e1; 
                    }
                    tr:hover { 
                        background-color: #ffb6c1; 
                        transition: 0.3s ease-in-out; 
                    }
                    td { 
                        color: #d63384; 
                    }
                </style>
            </head>
            <body>
                <h1>My Movie Collection 🎀</h1>
                <table>
                    <tr>
                        <th>Title</th>
                        <th>Director</th>
                        <th>Actors</th>
                        <th>Year</th>
                    </tr>
                    <xsl:for-each select="movies/movie">
                        <tr>
                            <td><xsl:value-of select="movieTitle"/></td>
                            <td><xsl:value-of select="director"/></td>
                            <td>
                                <xsl:for-each select="actors/actor">
                                    <xsl:value-of select="."/><br/>
                                </xsl:for-each>
                            </td>
                            <td><xsl:value-of select="year"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
