<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="SI (h == 24) ALORS"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2para="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalBoucles="5000000" nbDecimales="8" maxBoucle="500000" epaisseurLigne="2" epaisseurPoint="2" totalAffichages="1000" arrondiAuto="vrai"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="h EST_DU_TYPE NOMBRE" code="1#NOMBRE#h"/>
        <item algoitem="m EST_DU_TYPE NOMBRE" code="1#NOMBRE#m"/>
        <item algoitem="s EST_DU_TYPE NOMBRE" code="1#NOMBRE#s"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Donner l'heure, les minutes, puis les secondes&quot;" code="4#Donner l'heure, les minutes, puis les secondes#0"/>
        <item algoitem="LIRE h" code="2#h#pasliste"/>
        <item algoitem="LIRE m" code="2#m#pasliste"/>
        <item algoitem="LIRE s" code="2#s#pasliste"/>
        <item algoitem="s PREND_LA_VALEUR s + 1" code="5#s#s + 1#pasliste"/>
        <item algoitem="SI (s == 60) ALORS" code="6#s == 60">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="s PREND_LA_VALEUR 0" code="5#s#0#pasliste"/>
            <item algoitem="m PREND_LA_VALEUR m + 1" code="5#m#m + 1#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (m == 60) ALORS" code="6#m == 60">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="m PREND_LA_VALEUR 0" code="5#m#0#pasliste"/>
            <item algoitem="h PREND_LA_VALEUR h + 1" code="5#h#h + 1#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (h == 24) ALORS" code="6#h == 24">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="h PREND_LA_VALEUR 0" code="5#h#0#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="AFFICHER &quot;Heure : &quot;" code="4#Heure : #0"/>
        <item algoitem="AFFICHER h" code="3#h#0#pasliste"/>
        <item algoitem="AFFICHER &quot; Min : &quot;" code="4# Min : #0"/>
        <item algoitem="AFFICHER m" code="3#m#0#pasliste"/>
        <item algoitem="AFFICHER &quot; Seconde : &quot;" code="4# Seconde : #0"/>
        <item algoitem="AFFICHER s" code="3#s#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
