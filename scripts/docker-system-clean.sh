#!/bin/bash
#Para lanzar el script, lanzamos en una terminal posicionada en el fichero el siguiente comando: `./docker-system-clean.sh $VOLUMES_FLAG`

echo "Parámetro volúmenes: $1"

#Volumes
true="true"
false="false"

if [[ $1 == $true ]] ; then
    echo "Eliminando contendores, imágenes, redes, cache y volúmenes de docker..."
else
    echo "Eliminando contendores, imágenes, redes y cache de docker..."
fi

if [[ $1 == $true ]] ; then
    docker system prune --volumes -af
else
    docker system prune -af
fi

if [[ $1 == $true ]] ; then
    echo "Contenedores, imágenes, redes, cache y volúmenes de docker eliminados correctamente"
else
    echo "Contenedores, imágenes, redes y cache de docker eliminados correctamente"
fi