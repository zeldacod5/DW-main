La commande pour sauvegarder précisement la base de données Gescom:
$ mysqldump --user=afpa --password=Afpa1234 --databases gescom_afpa > documents > saving

La commande pour restaurer uniquement la base de données Gescom:
$ mysql --user=afpa --password=Afpa1234 gescom_afpa < saving.sql


Source du site pour sauvegarder en linux: https://www.memoinfo.fr/tutoriels-linux/guide-sauvegarde-restauration-mysql/
