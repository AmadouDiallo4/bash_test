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

echo "

Options:
  - --create:   lancer des conteneurs
  - --drop:     supprimer es conteneurs par deploy.sh
  - --infos:    caractéristiques des conteneurs (ip, non, user, ...)
  - --start:    redémarrage des conteneurs
  - --ansible:  déploiement arborescence ansible

"
