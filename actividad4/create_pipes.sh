#!/bin/bash

# Nombre de los named pipes
PIPE1="user1_to_user2"
PIPE2="user2_to_user1"

# Crear los named pipes si no existen
if [ ! -p $PIPE1 ]; then
    mkfifo $PIPE1
fi

if [ ! -p $PIPE2 ]; then
    mkfifo $PIPE2
fi

echo "Named pipes creados: $PIPE1 y $PIPE2"
