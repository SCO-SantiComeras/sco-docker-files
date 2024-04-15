#!/bin/bash
#Para lanzar el script, lanzamos en una terminal posicionada en el fichero el siguiente comando: `./get-changes.sh $ENTORNO`
#Posibles entornos: 'pre', 'prod'
echo "Parámetro entorno: $1"

#Entornos
pre="pre"
prod="prod"

#Carpeta
folder="sco-app-example"

if [[ $1 == $prod ]] ; then
    echo "Obteniendo cambios del entorno de producción (origin/main)"
else
    echo "Obteniendo cambios del entorno de preproducción (origin/develop)"
fi

if [[ $1 == $prod ]] ; then
    cd $folder-frontend
    pwd
    git pull
    git fetch
    git switch main

    cd ..

    cd $folder-backend
    pwd
    git pull
    git fetch
    git switch main
    cd ..
else
    cd $folder-frontend
    pwd
    git pull
    git fetch
    git switch develop
    cd ..

    cd $folder-backend
    pwd
    git pull
    git fetch
    git switch develop
    cd ..
fi

if [[ $1 == $prod ]] ; then
    echo "Cambios del entorno de producción (origin/main) obtenidos correctamente"
else
    echo "Cambios del entorno de preproducción (origin/develop) obtenidos correctamente"
fi