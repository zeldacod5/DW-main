<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot; Min : &quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2etat="inactif" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" nbDecimales="8" epaisseurLigne="2" totalBoucles="5000000" totalAffichages="1000" arrondiAuto="vrai" epaisseurPoint="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#h" algoitem="h EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#m" algoitem="m EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Donnez l'heure pliz#0" algoitem="AFFICHER &quot;Donnez l'heure pliz&quot;"/>
        <item code="2#h#pasliste" algoitem="LIRE h"/>
        <item code="4#Donnez les mins pliz#0" algoitem="AFFICHER &quot;Donnez les mins pliz&quot;"/>
        <item code="2#m#pasliste" algoitem="LIRE m"/>
        <item code="5#m#m + 1#pasliste" algoitem="m PREND_LA_VALEUR m + 1"/>
        <item code="6#m == 60" algoitem="SI (m == 60) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#m#0#pasliste" algoitem="m PREND_LA_VALEUR 0"/>
            <item code="5#h#h + 1#pasliste" algoitem="h PREND_LA_VALEUR h + 1"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#h == 24" algoitem="SI (h == 24) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#h#0#pasliste" algoitem="h PREND_LA_VALEUR 0"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="4#Heure : #0" algoitem="AFFICHER &quot;Heure : &quot;"/>
        <item code="3#h#0#pasliste" algoitem="AFFICHER h"/>
        <item code="4# Min : #0" algoitem="AFFICHER &quot; Min : &quot;"/>
        <item code="3#m#0#pasliste" algoitem="AFFICHER m"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
