<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_SINON" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2etat="inactif" F2para="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalBoucles="5000000" arrondiAuto="vrai" epaisseurLigne="2" totalAffichages="1000" epaisseurPoint="2" nbDecimales="8" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="âge EST_DU_TYPE NOMBRE" code="1#NOMBRE#âge"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE âge" code="2#âge#pasliste"/>
        <item algoitem="SI (âge>=12) ALORS" code="6#âge>=12">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;cadet&quot;" code="4#cadet#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="SI (âge>=10) ALORS" code="6#âge>=10">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="AFFICHER &quot;minome&quot;" code="4#minome#0"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                    <item algoitem="SINON" code="9#sinon">
                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                        <item algoitem="SI (âge>=8) ALORS" code="6#âge>=8">
                            <item algoitem="DEBUT_SI" code="7#debutsi"/>
                            <item algoitem="AFFICHER &quot;pupille&quot;" code="4#pupille#0"/>
                            <item algoitem="FIN_SI" code="8#finsi"/>
                            <item algoitem="SINON" code="9#sinon">
                                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                                <item algoitem="SI (âge>=6) ALORS" code="6#âge>=6">
                                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                                    <item algoitem="AFFICHER &quot;poussin&quot;" code="4#poussin#0"/>
                                    <item algoitem="FIN_SI" code="8#finsi"/>
                                </item>
                                <item algoitem="FIN_SINON" code="11#finsinon"/>
                            </item>
                        </item>
                        <item algoitem="FIN_SINON" code="11#finsinon"/>
                    </item>
                </item>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
