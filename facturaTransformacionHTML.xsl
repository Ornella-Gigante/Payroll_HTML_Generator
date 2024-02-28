<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" indent="yes"/>
  <xsl:template match="facturas">
    <html>
      <head>
        <title>Facturas</title>
      </head>
      <body>
        <h1>Facturas</h1>
        <table>
          <tr>
            <th>Número</th>
            <th>Fecha</th>
            <th>Emisor</th>
            <th>Cliente</th>
            <th>Importe</th>
          </tr>
          <xsl:apply-templates select="factura"/>
        </table>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="factura">
    <tr>
      <td>
        <xsl:value-of select="numero"/>
      </td>
      <td>
        <xsl:value-of select="fecha"/>
      </td>
      <td>
        <xsl:value-of select="datos_emisor/nombre"/>
      </td>
      <td>
        <xsl:value-of select="datos_cliente/nombre"/>
      </td>
      <td>
        <xsl:value-of select="detalle_factura/importe"/>
      </td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
