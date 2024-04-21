#!/bin/bash
#Para lanzar el script, lanzamos en una terminal posicionada en el fichero el siguiente comando: `./get-repositories.sh`
echo "Empezando descarga de repositorios..."

# Individual repositories
git clone https://github.com/SCO-SantiComeras/sco-app-example-frontend.git \
&& git clone https://github.com/SCO-SantiComeras/sco-app-example-backend.git

echo "Repositorios descargados correctamente"