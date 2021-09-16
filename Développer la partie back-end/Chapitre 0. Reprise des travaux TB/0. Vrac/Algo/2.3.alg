<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="prix_total_ttc PREND_LA_VALEUR nombre_art * prix_ht * (1 + tva )" texte="Description d'un produit"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2para="" F2etat="inactif" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" arrondiAuto="vrai" totalBoucles="5000000" totalAffichages="1000" epaisseurPoint="2" maxBoucle="500000" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#prix_ht" algoitem="prix_ht EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nombre_art" algoitem="nombre_art EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#tva" algoitem="tva EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#prix_total_ttc" algoitem="prix_total_ttc EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrer le prix ht#0" algoitem="AFFICHER &quot;Entrer le prix ht&quot;"/>
        <item code="2#prix_ht#pasliste" algoitem="LIRE prix_ht"/>
        <item code="4#combien d'articles?#0" algoitem="AFFICHER &quot;combien d'articles?&quot;"/>
        <item code="2#nombre_art#pasliste" algoitem="LIRE nombre_art"/>
        <item code="4#entrée le taux tva#0" algoitem="AFFICHER &quot;entrée le taux tva&quot;"/>
        <item code="2#tva#pasliste" algoitem="LIRE tva"/>
        <item code="5#prix_total_ttc#nombre_art * prix_ht * (1 + tva )#pasliste" algoitem="prix_total_ttc PREND_LA_VALEUR nombre_art * prix_ht * (1 + tva )"/>
        <item code="3#prix_total_ttc#1#pasliste" algoitem="AFFICHER prix_total_ttc"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
