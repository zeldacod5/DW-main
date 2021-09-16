<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="prix PREND_LA_VALEUR 10 * 0,1 + (nb - 10) * 0,09" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2etat="inactif" F2lignes="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" nbDecimales="8" epaisseurPoint="2" maxBoucle="500000" totalAffichages="1000" epaisseurLigne="2" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nb EST_DU_TYPE NOMBRE" code="1#NOMBRE#nb"/>
        <item algoitem="prix EST_DU_TYPE NOMBRE" code="1#NOMBRE#prix"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE nb" code="2#nb#pasliste"/>
        <item algoitem="SI (nb &lt;= 10) ALORS" code="6#nb &lt;= 10">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="prix PREND_LA_VALEUR nb * 0.1" code="5#prix#nb * 0.1#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="SI (nb &lt;= 30) ALORS" code="6#nb &lt;= 30">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="prix PREND_LA_VALEUR 10 * 0,1 + (nb - 10) * 0,09" code="5#prix#10 * 0,1 + (nb - 10) * 0,09#pasliste"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                    <item algoitem="SINON" code="9#sinon">
                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                        <item algoitem="prix PREND_LA_VALEUR 10 * 0,1 + 20 * 0,09 + (n - 30) * 0,08" code="5#prix#10 * 0,1 + 20 * 0,09 + (n - 30) * 0,08#pasliste"/>
                        <item algoitem="FIN_SINON" code="11#finsinon"/>
                    </item>
                </item>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
        <item algoitem="AFFICHER &quot;Le prix total est : &quot;" code="4#Le prix total est : #0"/>
        <item algoitem="AFFICHER prix" code="3#prix#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
