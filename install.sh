#!/bin/sh

CREATOR=`which qtcreator`

if [ $CREATOR = '/usr/bin/qtcreator' ] ; then
    CREATOR_DIR=/usr/share/qtcreator/templates/wizards/
else
     if [ -n "$CREATOR" ] ; then
	CREATOR_DIR=`dirname "$CREATOR"`/../share/qtcreator/templates/wizards/projects/qmake/
	mkdir $CREATOR_DIR/lee 
	cp * $CREATOR_DIR/lee 
     else
	 echo "don't know how to install"
     fi
fi
