<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER nb" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2para="" F2etat="inactif" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalBoucles="5000000" epaisseurPoint="2" arrondiAuto="vrai" nbDecimales="8" totalAffichages="1000" maxBoucle="500000" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nb" algoitem="nb EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Donnez nous un nombre#0" algoitem="AFFICHER &quot;Donnez nous un nombre&quot;"/>
        <item code="2#nb#pasliste" algoitem="LIRE nb"/>
        <item code="5#nb#sqrt(nb)#pasliste" algoitem="nb PREND_LA_VALEUR sqrt(nb)"/>
        <item code="3#nb#0#pasliste" algoitem="AFFICHER nb"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
