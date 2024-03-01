#!/bin/bash

# Nombre del named pipe del usuario actual
MY_PIPE=""

# Nombre del named pipe del otro usuario
OTHER_PIPE=""

# Verificar si se proporciona un nombre de usuario como argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 <nombre_de_usuario>"
    exit 1
fi

# Definir el nombre del usuario actual y el nombre del otro usuario
MY_USER=$1
if [ "$MY_USER" == "user1" ]; then
    OTHER_USER="user2"
elif [ "$MY_USER" == "user2" ]; then
    OTHER_USER="user1"
else
    echo "Nombre de usuario no válido. Debe ser 'user1' o 'user2'."
    exit 1
fi

# Definir los nombres de los named pipes para la comunicación
MY_PIPE="${MY_USER}_to_${OTHER_USER}"
OTHER_PIPE="${OTHER_USER}_to_${MY_USER}"

# Crear el named pipe del usuario actual si no existe
if [ ! -p "$MY_PIPE" ]; then
    mkfifo "$MY_PIPE"
fi

# Función para leer mensajes del otro usuario y mostrarlos en pantalla
read_messages() {
    while true; do
        if read line < "$OTHER_PIPE"; then
            echo "$OTHER_USER: $line"
            # Si el otro usuario escribe "exit", salir del bucle
            if [ "$line" == "exit" ]; then
                break
            fi
        fi
    done
}

# Iniciar la función para leer mensajes en segundo plano
read_messages &

# Ciclo para enviar mensajes
while true; do
    read message
    # Escribir el mensaje en el named pipe del otro usuario
    echo "$message" > "$MY_PIPE"
    # Si el usuario escribe "exit", salir del bucle
    if [ "$message" == "exit" ]; then
        break
    fi
done

# Eliminar el named pipe del usuario actual
rm -f "$MY_PIPE"
