<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="FIN_ALGORITHME"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2para="" F2lignes="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" maxBoucle="500000" epaisseurLigne="2" arrondiAuto="vrai" nbDecimales="8" totalAffichages="1000" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#Nb_1" algoitem="Nb_1 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Nb_2" algoitem="Nb_2 EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#Nb_1#pasliste" algoitem="LIRE Nb_1"/>
        <item code="2#Nb_2#pasliste" algoitem="LIRE Nb_2"/>
        <item code="6#Nb_1>0 ET Nb_2>0 OU Nb_1&lt;0 ET Nb_2&lt;0" algoitem="SI (Nb_1>0 ET Nb_2>0 OU Nb_1&lt;0 ET Nb_2&lt;0) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Nombre positif#0" algoitem="AFFICHER &quot;Nombre positif&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#Nb_1&lt;0 ET Nb_2>0 OU Nb_1>0 ET Nb_2&lt;0" algoitem="SI (Nb_1&lt;0 ET Nb_2>0 OU Nb_1>0 ET Nb_2&lt;0) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#Nombre négatif#0" algoitem="AFFICHER &quot;Nombre négatif&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
