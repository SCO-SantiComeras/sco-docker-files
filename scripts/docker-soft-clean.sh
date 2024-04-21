#!/bin/bash
#Para lanzar el script, lanzamos en una terminal posicionada en el fichero el siguiente comando: `./docker-soft-clean.sh`

echo "Eliminando contenedores, imágenes y cache de docker..."

docker compose down
docker image rm $(docker image ls -q)
docker builder prune

echo "Contenedores, imágenes y cache de docker eliminados correctamente"