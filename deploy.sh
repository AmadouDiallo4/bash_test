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
	echo ""
	echo "notre option est --create"
	echo ""
	
	nb_machine=1
	[ "$2" != "" ] && nb_machine=$2

	docker run -tid --name $USER-alpine alpine:latest
	echo "j'ai crée ${nb_machine}"

#si option --drop
elif [ "$1" == "--drop" ];then
	echo ""
	echo "notre option est --drop"
	echo ""
	
	docker rm -f $USER-alpine

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
