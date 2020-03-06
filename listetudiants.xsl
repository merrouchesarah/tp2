<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <body>
        <h2 align="center">Liste des etudiants</h2>
          <table align="center" border="1" >
            <tr align="center" style="background:green">
              <th><b>Matricule</b></th>
              <th><b>Nom</b></th>
              <th><b>Prenom</b></th>
              <th><b>Moy_S1</b></th>
              <th><b>Moy_S2</b></th>
              <th><b>Moy_Annuel</b></th>
              <th><b>CreditsS1</b></th>
              <th><b>CreditsS2</b></th>
              <th><b>Unite_aqu</b></th>
              <th><b>resultat de l annee</b></th>
            </tr>
            <xsl:for-each select="listetudiants/etudiant/profil">
             <xsl:sort select="moyennes/moyAnnuel" order="descending"/> 
              <tr align="center">
              <td><xsl:value-of select="matricule"></xsl:value-of></td>
              <td><xsl:value-of select="nom"></xsl:value-of></td>
              <td><xsl:value-of select="prenom"></xsl:value-of></td>
              <td><xsl:value-of select="moyennes/moyS1"></xsl:value-of></td>
              <td><xsl:value-of select="moyennes/moyS2"></xsl:value-of></td>
              <td><xsl:value-of select="moyennes/moyAnnuel"></xsl:value-of></td>
              <td><xsl:value-of select="credits/creditS1"></xsl:value-of></td>
              <td><xsl:value-of select="credits/creditS2"></xsl:value-of></td>
              <td><xsl:value-of select="uniteaqu"></xsl:value-of></td>
              <td style="background:red"><xsl:choose>
              <xsl:when test="moyennes[moyAnnuel>='10']"><em>Admis</em></xsl:when>
              <xsl:otherwise><em>Ajourne</em></xsl:otherwise>
              </xsl:choose></td>
            </tr>
            </xsl:for-each>
          </table>
          <br></br>
          <table align="center" border="2" >
            <tr align="center">
              <th><b>nombre des etudiants</b></th>
              <th><b>Mauvaise moyenne</b></th>
              <th><b>Meilleure moyenne</b></th>
            </tr>
            <tr align="center">
              <td><xsl:value-of select="count(/listetudiants/etudiant/profil)"></xsl:value-of></td>
              <td><xsl:value-of select="/listetudiants/etudiant[count(/listetudiants/etudiant/profil)]/profil/moyennes/moyAnnuel">
              </xsl:value-of></td>
              <td><xsl:value-of select="/listetudiants/etudiant[1]/profil/moyennes/moyAnnuel"></xsl:value-of></td>
            </tr>
          </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
