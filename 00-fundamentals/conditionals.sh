#!/usr/bin/env bash
# Examples of conditional block syntax

#if [[ $MY_LANGUAGE =~ fr|francais ]]
if [[ -d /tmp ]] ; then
	echo 'Le repertoire /tmp existe!'
elif [[ -d /home ]] ; then
	echo 'Le repertoire /home existe!'
else
	echo "Apparament les repertoire /tmp et /home n'existe pas..."
fi

MY_LANGUAGE="fr"

case $MY_LANGUAGE in 
fr|francais) echo 'Bonjour tout le monde!' ;;
en|english) echo 'Hello everyone' ;;
es|spanish) echo 'Hola el mundo!' ;;
*) echo 'Je ne te comprends pas...' ;;
esac

SOME_VALUE=10
while [[ $SOME_VALUE -gt 0 ]] ; do
	echo "On tourne, on tourne... Le valeur est maintenant $SOME_VALUE"
	(( SOME_VALUE -- ))
done

# same thing with an until
SOME_VALUE=10
until [[ $SOME_VALUE -eq 0 ]] ; do
	echo "On tourne, on tourne... Le valeur est maintenant $SOME_VALUE"
	(( SOME_VALUE -- ))
done
