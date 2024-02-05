#!/bin/bash

export GITHUB_USER="gerhardardon"

# consumimos el url
url=https://api.github.com/users/$GITHUB_USER
json_data=$(curl -s $url)

# guardamos en variables los datos importantes 
id=$(echo $json_data | jq -r ".id")
created_at=$(echo $json_data | jq -r ".created_at")

#imprimimos
echo "Hola $GITHUB_USER. User ID: $id. Tu cuenta fue creada el: $created_at"

#creamos el directorio del log para escribir
fecha=$(date +"%Y-%m-%d")
directorio="/tmp/$fecha"
mkdir -p "$directorio"

#definimos el file
file="$directorio/saludos.log"
echo "Hola $GITHUB_USER. User ID: $id. Tu cuenta fue creada el: $created_at" >> "$file"
date >> "$file"
echo " " >> "$file"
date

