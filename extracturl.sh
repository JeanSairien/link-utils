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



sed -n 's/^\ *"title": \"\(.*\)",/\1/p' indent.json >> readdable3.txt 
echo \n | grep -Po '"'"uri"'"\s*:\s*"\K([^"]*)' indent.json >> readdable3.txt

# sed -n '/"title"/,/^\],$/s/^*"uri": "\(.*\)",/\1/p' indent.json >> readdable3.txt











#------grep-------------
# we grep all url (OK)
# grep -Eo 'https?://[^"]+' indent.json  >> readdable2.txt
#grep -Po '"'"uri"'"\s*:\s*"\K([^"]*)' $1

#(NOT WORK)
#grep -o '<H3>.*</H3>' bookmarks.html >> readdable2.txt



#-------sed-----------
# sed -n 's/^\ *"title": \"\(.*\)",/\1/p' indent.json >> readdable3.txt (OK)

#(NOT WORK) 
#sed -n 's/^\ *"uri": \"\(.*\)",/\1/p' indent.json

#EXEMPLE
#sed -n  '/<div class=\"contents\">/,/<\/div>/p' fichier.html  bookmarks.html >> readdable2.txt 



#----------------vendors--------------------


# title(){
# 	command	sed -n 's/^\ *"title": \"\(.*\)",/\1/p' indent.json
# 	return TITRE
# }

# # echo $TITRE

# uri(){
# 	command grep -Po '"'"uri"'"\s*:\s*"\K([^"]*)' indent.json
# 	return URI
# }	

# for url in URI{
	
# }

# done
# echo "\n" $url

# title

# uri

# echo -e "\n" $TITLE >> readdable3.txt | echo -e "\n" $URI >> readdable3.txt






#echo  -e "\n"   >> readdable3.txt | echo  -e "\n"   >> readdable3.txt 