#!/bin/bash
#Para lanzar el script, lanzamos en una terminal posicionada en el fichero el siguiente comando: `./docker-images-clean.sh`
echo "Eliminando todas las imágenes de docker...."

docker image rm $(docker image ls -q)

echo "Imagenes de docker eliminadas correctamente"