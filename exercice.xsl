<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <head>
      <link rel="stylesheet" href="./exercice.css"></link>
    </head>
    <body>
      <table border="1">
        <tr>
            <th>Num</th>
            <th>Titre</th>
            <th>artiste</th>
            <th>Pays</th>
            <th>Societe</th>
            <th>Prix</th>
            <th>Annee</th>
       </tr>
       1-	Afficher la liste vide comme suite : 
       <!-- <h1>1-	Afficher la liste vide comme suite :</h1>>
       <xsl:for-each select="/films/film[position()=1]">
           <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
         </tr>
      </xsl:for-each> -->
     
      <!-- 2-	Afficher la première ligne de la liste  des films. -->
      <!-- <xsl:for-each select="/films/film[1]"> -->
      <!-- 3-	Afficher la liste totale des films. -->
      <!-- <xsl:for-each select="/films/film"> -->
      <!-- 4-	Afficher la liste triée des films selon le titre -->
       <!-- <xsl:for-each select="/films/film">
         <xsl:sort select="Titre"/> -->
         <!-- 5-	Afficher la liste des films ayant le prix>10 -->
       <!-- <xsl:for-each select="/films/film[Prix>10]"> -->
      <!--<tr>
            <td><xsl:value-of select="Num"/></td>
            <td><xsl:value-of select="Titre"/></td>
            <td><xsl:value-of select="artiste"/></td>
            <td><xsl:value-of select="Pays"/></td>
            <td><xsl:value-of select="Societe"/></td>
            <td><xsl:value-of select="Prix"/></td>
            <td><xsl:value-of select="Annee"/></td>
         </tr> -->
       <!-- 6-	Afficher la liste totale des films en colorant la colonne « Prix » en bleu ciel lorsque le prix est supérieur à 10 -->
           <!-- <xsl:for-each select="/films/film">
        <xsl:choose>
          <xsl:when test="Prix>10">
          <tr>
              <td><xsl:value-of select="Num"/></td>
              <td><xsl:value-of select="Titre"/></td>
              <td><xsl:value-of select="artiste"/></td>
              <td><xsl:value-of select="Pays"/></td>
              <td><xsl:value-of select="Societe"/></td>
              <td class="red"><xsl:value-of select="Prix"/></td>
              <td ><xsl:value-of select="Annee"/></td>
           </tr>
          </xsl:when>
        <xsl:otherwise select="films/film">
          <tr>
              <td><xsl:value-of select="Num"/></td>
              <td><xsl:value-of select="Titre"/></td>
              <td><xsl:value-of select="artiste"/></td>
              <td><xsl:value-of select="Pays"/></td>
              <td><xsl:value-of select="Societe"/></td>
              <td><xsl:value-of select="Prix"/></td>
              <td><xsl:value-of select="Annee"/></td>
           </tr>
        </xsl:otherwise>
        </xsl:choose> 
       </xsl:for-each> -->
       <!-- 7-	Afficher la liste des films produits aux USA. -->
    <!-- <xsl:for-each select="films/film[Pays='USA']">
      <tr>
        <td><xsl:value-of select="Num"/></td>
        <td><xsl:value-of select="Titre"/></td>
        <td><xsl:value-of select="artiste"/></td>
        <td><xsl:value-of select="Pays"/></td>
        <td><xsl:value-of select="Societe"/></td>
        <td><xsl:value-of select="Prix"/></td>
        <td><xsl:value-of select="Annee"/></td>
      </tr>
  </xsl:for-each> -->
  <!-- 8-	Afficher le Titre, Pays et l’année pour les films produits aux EU. -->
  <xsl:for-each select="/films/film">
  <xsl:choose>
    <xsl:when test="Pays='EU'">
       <tr>
        <td></td>
        <td><xsl:value-of select="Titre"/></td>
        <td></td>
        <td><xsl:value-of select="Pays"/></td>
        <td></td>
        <td></td>
        <td><xsl:value-of select="Annee"/></td>
      </tr>
    </xsl:when>
    <xsl:otherwise>
        <tr>
        <td><xsl:value-of select="Num"/></td>
        <td><xsl:value-of select="Titre"/></td>
        <td><xsl:value-of select="artiste"/></td>
        <td><xsl:value-of select="Pays"/></td>
        <td><xsl:value-of select="Societe"/></td>
        <td><xsl:value-of select="Prix"/></td>
        <td><xsl:value-of select="Annee"/></td>
      </tr>
    </xsl:otherwise>
  </xsl:choose>
</xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>