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
if

echo "(5) SEND: nombre de archivos"

echo "FILE _NAME: vaca.vaca" | nc $SERVER_AD $PORT

echo "(6) LISTEN: Comprobacion nombre archivos"

MSG=`nc -l $PORT`

exit 0
