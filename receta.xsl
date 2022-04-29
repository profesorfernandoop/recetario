<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet [
  <!ENTITY nbsp "&#160;">
  <!ENTITY copy "&#169;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" href="receta.css" />
      </head>
      <body>
        <xsl:for-each select="recetario/receta">
          <h1>
            <xsl:value-of select="@categoria"></xsl:value-of>
          </h1>
          <h2>
            <xsl:value-of select="nombre"></xsl:value-of>
          </h2>
          <h3>
            Ingredientes (
            <xsl:value-of select="ingredientes/@comensales"></xsl:value-of>
            personas)
          </h3>
          <xsl:for-each select="ingredientes/ingrediente">
            <ul>
              <li>
                    <xsl:value-of select="cantidad"></xsl:value-of>&nbsp;
                    <xsl:value-of select="cantidad/@unidad"></xsl:value-of>&nbsp;
                    <xsl:value-of select="nombre"></xsl:value-of>&nbsp;
              </li>
            </ul>
          </xsl:for-each>
          <h2>Preparación</h2>
          <xsl:for-each select="elaboracion/paso">
            <h5>
              <xsl:value-of select="@numero"/>.&nbsp;
              <xsl:value-of select="."/>
            </h5>
          </xsl:for-each>
        </xsl:for-each>
        <footer class="fsize-1-2">&copy; Desarrollado por VS1ASIR</footer>        
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>