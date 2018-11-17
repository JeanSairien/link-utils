#!/bin/bash


# we grep all url


 grep -Eo 'https?://[^"]+' index.html  >> readable.txt
