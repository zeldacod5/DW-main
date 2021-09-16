<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="SI (Jean > René ET Jean > Ras ET Jean > LeFion) ALORS"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2etat="inactif" F2defaut="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" nbDecimales="8" arrondiAuto="vrai" totalBoucles="5000000" maxBoucle="500000" totalAffichages="1000" epaisseurPoint="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="Jean EST_DU_TYPE NOMBRE" code="1#NOMBRE#Jean"/>
        <item algoitem="René EST_DU_TYPE NOMBRE" code="1#NOMBRE#René"/>
        <item algoitem="Ras EST_DU_TYPE NOMBRE" code="1#NOMBRE#Ras"/>
        <item algoitem="LeFion EST_DU_TYPE NOMBRE" code="1#NOMBRE#LeFion"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE Jean" code="2#Jean#pasliste"/>
        <item algoitem="LIRE René" code="2#René#pasliste"/>
        <item algoitem="LIRE Ras" code="2#Ras#pasliste"/>
        <item algoitem="LIRE LeFion" code="2#LeFion#pasliste"/>
        <item algoitem="SI (Jean > 50) ALORS" code="6#Jean > 50">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;est élu au premier tour&quot;" code="4#est élu au premier tour#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="SI (Jean &lt; 12.5 OU René > 50 OU Ras > 50 OU LeFion > 50) ALORS" code="6#Jean &lt; 12.5 OU René > 50 OU Ras > 50 OU LeFion > 50">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="AFFICHER &quot;éliminé&quot;" code="4#éliminé#0"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                    <item algoitem="SINON" code="9#sinon">
                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                        <item algoitem="SI (Jean > René ET Jean > Ras ET Jean > LeFion) ALORS" code="6#Jean > René ET Jean > Ras ET Jean > LeFion">
                            <item algoitem="DEBUT_SI" code="7#debutsi"/>
                            <item algoitem="AFFICHER &quot;balotage favorable&quot;" code="4#balotage favorable#0"/>
                            <item algoitem="FIN_SI" code="8#finsi"/>
                            <item algoitem="SINON" code="9#sinon">
                                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                                <item algoitem="AFFICHER &quot;balotage défavorable&quot;" code="4#balotage défavorable#0"/>
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
