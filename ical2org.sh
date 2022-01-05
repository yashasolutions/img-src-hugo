#!/bin/bash

ICAL2ORGFILE="<path to orgfile>"
GOOGLE_CAL_URL="<url to your private Google calendar>"

source ~/.ical2org.rc

echo $ICAL2ORGFILE
echo $GOOGLE_CAL_URL
wget -O /tmp/basic.ics $GOOGLE_CAL_URL
awk -f ~/.local/share/ical2org.awk< /tmp/basic.ics > $ICAL2ORGFILE
