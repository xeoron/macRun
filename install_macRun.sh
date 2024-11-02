#!/bin/sh -e
#Author: Jason Campisi
#Date: 9/25/2016
#version 0.2.5
#Released under the GPL v2 or higher
NAME="macRun"
EXT="pl"
FILE="$NAME.$EXT"
LOCATION="/opt/local/bin/"
echo "$FILE installer:";

 echo " Checking if '$FILE' exists in the current folder..."
   if [ ! -n "$FILE" ]; then
      echo " Error - Filename is not set!"
      exit 1;
   elif [ ! -e "$FILE" ]; then
      echo " Error - The location of '$FILE' does not exist!"
      exit 1;
   fi
 echo " ...found!";
 
echo " Setting file to executable...";
chmod +x ./$FILE

echo " Checking if you have the clearance to install this ...";
if [ "$(whoami)" != 'root' ]; then
	echo " You do not have permission to install './$FILE'";
	echo " ->You must be a root user.";
	echo " ->Try instead: sudo $0";
	exit 1;
else
	echo " Root access granted for $0";	
fi

echo " Installing $NAME to $LOCATION ...";
cp ./$FILE $LOCATION$NAME
echo " Setup complete."

