#!/bin/bash 

###############################################################
#
# Description: deploiement à la volée de conteneur docker
#
# Auteur: Amadou
# date: 22/02/2020
# $1: premier argument
# $2: second argument
# $#: nombre d'arguments
# $*: tous les arguments en une variable
# $@: tous les arguments en tbleau
# $0: nom du fichier lancé
################################################################

#si option --create
if [ "$1" == "--create" ];then
	
	# definition du nombre de conteneur	
	nb_machine=1
	[ "$2" != "" ] && nb_machine=$2

	# creation des conteneurs
	echo "début de la crétion du conteneur"
	for i in $(seq 1 $nb_machine);do
		
		docker run -tid --name $USER-alpine-$i alpine:latest
		echo "Conteneur $USER-alpine-$i crée"
	done

#si option --drop
elif [ "$1" == "--drop" ];then
	echo "suppression des conteneurs ..."
	docker rm -f $(docker ps -a | grep $USER-alpine | awk '{print $1}')
	echo " fin de suppression..."

#si option --infos
elif [ "$1" == "--infos" ];then
	echo ""
	echo "notre option est --infos"
	echo ""

#si option --start
elif [ "$1" == "--start" ];then
	echo ""
	echo "notre option est --start"
	echo ""

#si option --ansible
elif [ "$1" == "--ansible" ];then
	echo ""
	echo "notre option est --ansible"
	echo ""
# si aucune option affichage de l'aide
else	
	
echo "

Options:
  - --create:   lancer des conteneurs
  - --drop:     supprimer es conteneurs par deploy.sh
  - --infos:    caractéristiques des conteneurs (ip, non, user, ...)
  - --start:    redémarrage des conteneurs
  - --ansible:  déploiement arborescence ansible

"
fi 
