#!/bin/bash


						############################
						#       Dr.redfish         #
						#       02 aout 2018       #
						#       Shambhalafm        #
						#       Verison : 0.1.0    #
						############################

# this script allows to extract all the urls contained in the file "sources.html" 
# or a file of your choice and to write them in the file "readdable.txt"

# ce script permet d'extraire toutes les urls contenue dans le fichier sources.html 
# ou un fichier de votre choix et de les ecrirent dans le fichier "readdable.txt"



# we grep all url
grep -Eo 'https?://[^"]+' sources.html  >> readdable.txt
