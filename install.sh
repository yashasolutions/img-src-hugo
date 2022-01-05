#!/bin/bash

ICAL2ORGFILE="<path to orgfile>"
GOOGLE_CAL_URL="<url to your private Google calendar>"

read -r -p "Enter path to orgfile > " ICAL2ORGFILE
read -r -p "Enter URL to Google Calendar > " GOOGLE_CAL_URL


export ICAL2ORGFILE
export GOOGLE_CAL_URL 

echo "ICAL2ORGFILE=$ICAL2ORGFILE" > ~/.ical2org.rc
echo "GOOGLE_CAL_URL=$GOOGLE_CAL_URL" >> ~/.ical2org.rc

cp ./ical2org.awk ~/.local/share/
cp ./ical2org.sh ~/.loca/bin/
