<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;ce nombre est positif&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" totalBoucles="5000000" epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000" nbDecimales="8" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#NB" algoitem="NB EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#NB#pasliste" algoitem="LIRE NB"/>
        <item code="6#NB &lt; 0" algoitem="SI (NB &lt; 0) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#ce nombre est négatif#0" algoitem="AFFICHER &quot;ce nombre est négatif&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#NB == 0" algoitem="SI (NB == 0) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#ce nombre est nul#0" algoitem="AFFICHER &quot;ce nombre est nul&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="4#ce nombre est positif#0" algoitem="AFFICHER &quot;ce nombre est positif&quot;"/>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
