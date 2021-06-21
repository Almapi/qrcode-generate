#!/bin/bash

## This script create out of the list.txt QRCode SVG files


# To ignore spaces in the loop (internal field separator)
OIFS="$IFS"
IFS=$'\n'

#Remove all SVGs from the run before
rm -rf *svg

# For loop to iterate thorught the list in list.txt and set the first row as name
for name in $(cat list.txt|cut -d ";" -f1); do
    
    # Iterate throught the names and create out of the URL a QRCode
    for url in $(grep "$name" list.txt|cut -d ";" -f2);do

	    #Create QRCode command out of the two variables
	    qrencode -o "$name.png" $url -l H -m1 -s 100
    done
        
    #Convert the QRCode PNG to PNM file
    convert "$name.png" "$name.pnm"
    #Convert the PNM file to a SVG
    potrace "$name.pnm" -s -o "$name.svg"

done

#Remove the PNG and PNM files, because we only want SVG files
rm -rf *png
rm -rf *pnm
