#!/bin/bash

# José David Panaza Batres
# 202111478
# Fecha: 01-02-2024

# Se lee la variable GITHUB_USER----------------------------------------------------------------------------------------------------------------
read -p "Introduce tu nombre de usuario de GitHub: " GITHUB_USR

# Consulta de la API de GitHub----------------------------------------------------------------------------------------------------------------
RESPONSE=$(curl -s https://api.github.com/users/${GITHUB_USR})

# Extraer datos del JSON----------------------------------------------------------------------------------------------------------------------

# Id del usuario
USER_ID=$(echo ${RESPONSE} | jq -r '.id')

# Fecha de creacion
CREATED_AT=$(echo ${RESPONSE} | jq -r '.created_at')

# Guardar el mensaje
MENSAJE=$(echo "Hola ${GITHUB_USR}. User ID: ${USER_ID}. Cuenta fue creada el: ${CREATED_AT}.")
# Impresion del mensaje
echo ${MENSAJE}

# Crea un directorio y archivo de log----------------------------------------------------------------------------------------------------------------
LOG_DIR="/tmp/$(date +\%Y\%m\%d)"
LOG_FILE="${LOG_DIR}/saludos.log"
mkdir -p ${LOG_DIR}

echo ${MENSAJE} >> ${LOG_FILE}

# Configurar el crontab----------------------------------------------------------------------------------------------------------------

#Tomar en cuenta que la expresion cron funciona de la siguiente manera: minuto, hora, dia del mes, mes, dia de la semana

CRON_EXP="*/5 * * * *"
(crontab -l ; echo "${CRON_EXP} /bin/bash '/home/josep/USAC/7mo_Semestre/Sistemas operativos 1/Actividades/so1_actividades_202111478/actividad2/actividad2.sh'") | crontab -
