#!/bin/bash

#Vérification de la présence d'arguments, est-ce qu'il y a quelquechose derrière le nom du script ?
#si le nombre d'arguments du script est égal à 0, on répond à l'user : t'en n'a pas mis, et on quitte le script 'exit1', sinon on continue sur la boucle
if [ $# -eq 0 ];
then
    echo "Il manque les noms d'utilisateurs en argument - Fin du script"
    sleep 1s
    exit 1
fi

#si le ou les arguments sont bien pris en compte alors on vérifie l'existence dans le fichier /etc/passwd pour CHAQUE argument rentré (for)
for utilisateur in "$@"; #=chaque argument du script pris séparément, on pose la varibale utilisateur dont on va se servir
do #c'est parti
    if cat /etc/passwd | grep $utilisateur > /dev/null #on attrape dans la liste des user en filtrant l'éventuel nom d'utilisateur et on n'affiche pas la sortie standard
    #si on le trouve alors on 'continue' le script
    #message pour dire qu'il existe déjà
    then
        echo "L'utilisateur $utilisateur existe déjà"
        exit 0
    else
        #on crée l'utilisateur
        #on va vérifier que la création a eu lieu
        #et on va confirmer la bonne création de cet utilisateur => message
        #dans tous les cas le script continue
        sudo useradd $utilisateur > /dev/null #on place ici un sudo car il faut les droits 
            if cat /etc/passwd | grep $utilisateur > /dev/null #condition la même que plus haut
            then #message de confirmation
                echo "L'utilisateur $utilisateur a été crée"
            else #message d'erreur
                echo "Erreur à la création de l'utilisateur $utilisateur"
            fi #fin
    fi
done #c'est fini
