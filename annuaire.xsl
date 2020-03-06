<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <body>
        <h2 align="center">La liste des personnes</h2>
            <xsl:for-each select="annuaire/personne">
              <p><b>Nom:</b><xsl:value-of select="identite/nom"></xsl:value-of></p>
              <p><b>Prenom:</b><xsl:value-of select="identite/prenom"></xsl:value-of></p>
              <p><b>Adresse:</b><xsl:value-of select="identite/adresse"></xsl:value-of></p>
              <hr/>
            </xsl:for-each>
       </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
