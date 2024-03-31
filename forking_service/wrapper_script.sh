#!/bin/bash
#using # above as it is now recommended
JAVA_HOME=/path/to/jvmdir
WORKDIR=/path/to/app/workdir
JAVA_OPTIONS=" -Xms256m -Xmx512m -server "
APP_OPTIONS=" -c /path/to/app.config -d /path/to/datadir "

cd $WORKDIR || exit   #Shell instruction to use the fall option in case the execution fails
"${JAVA_HOME}/bin/java" "$JAVA_OPTIONS" -jar javaapp.jar "$APP_OPTIONS"  #double quotes to prevent the breaking up