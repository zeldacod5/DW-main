<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="LIRE noms3" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" totalAffichages="1000" totalBoucles="5000000" arrondiAuto="vrai" nbDecimales="8" epaisseurPoint="2" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="noms1 EST_DU_TYPE CHAINE" code="1#CHAINE#noms1"/>
        <item algoitem="noms2 EST_DU_TYPE CHAINE" code="1#CHAINE#noms2"/>
        <item algoitem="noms3 EST_DU_TYPE CHAINE" code="1#CHAINE#noms3"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE noms1" code="2#noms1#pasliste"/>
        <item algoitem="LIRE noms2" code="2#noms2#pasliste"/>
        <item algoitem="LIRE noms3" code="2#noms3#pasliste"/>
        <item algoitem="SI (noms1&lt;noms2 ET noms2&lt;noms3) ALORS" code="6#noms1&lt;noms2 ET noms2&lt;noms3">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;c alphabétique&quot;" code="4#c alphabétique#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;c'est pas alphabétique mec&quot;" code="4#c'est pas alphabétique mec#0"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
