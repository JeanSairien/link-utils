#!/bin/bash


						############################
						#       Dr.redfish         #
						#       02 aout 2018       #
						#       Shambhalafm        #
						#       Verison : 0.1.0    #
						############################

# this script allows to extract all the urls contained in the file index.html or a file of your choice
# ce script permet d'extraire toutes les urls contenue dans le fichier index.html ou un fichier de votre choix



# we grep all url
grep -Eo 'https?://[^"]+' index.html  >> readable.txt
