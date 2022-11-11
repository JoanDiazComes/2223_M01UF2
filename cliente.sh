#!/bin/bash

PORT="2223"
SERVER_AD="$SERVER_AD"

echo "Cliente TURIP"

echo "(1) SEND: Handshake HOLI_TURIP"

echo "HOLI_TURIP 127.0.0.1" | nc $SERVER_AD $PORT

echo "(2) LISTEN: Comprobacion Handshake"

MSG=`nc -l $PORT`

echo $MSG

if [ "$MSG" != "OK_TURIP" ]
then
	echo "ERROR 1: Handshake incorrecto"
	exit 1
fi

echo "(5) SEND: nombre de archivos"

FILE_NAME="vaca.vaca"

echo "FILE _NAME: $FILE_NAME" | nc $SERVER_AD $PORT

echo "(6) LISTEN: Comprobacion nombre archivos"

MSG=`nc -l $PORT`



if [ "$MSG" != "OK_FILE_NAME" ]
then
	echo "ERROR 2: Nombre de archivo incorrecto"
	exit 2
fi

cat vacas/$FILE_NAME | nc $SERVER_AD $PORT

exit 0 

