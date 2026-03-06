<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Esto indica que el resultado será HTML -->
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <!-- Plantilla raíz: se aplica al documento completo -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Listado de Provincias</title>
        <meta charset="utf-8"/>
        <link rel="stylesheet" href="estilos.css" />
      </head>

      <body>
        <h1>Listado de Provincias</h1>
        <p>Generado desde XML usando XSLT + CSS.</p>

        <table>
          <thead>
            <tr>
              <th>ID</th>
              <th>Provincia</th>
            </tr>
          </thead>
          <tbody>
            <!-- Recorremos cada Provincias/Provincia -->
            <xsl:for-each select="Provincias/Provincia">
              <tr>
                <td><xsl:value-of select="IdProvincia"/></td>
                <td><xsl:value-of select="Provincia"/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
