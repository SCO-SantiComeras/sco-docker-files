#!/bin/bash
#Para lanzar el script, lanzamos en una terminal posicionada en el fichero el siguiente comando: `./get-repositories.sh`
echo "Empezando descarga de repositorios..."

# Global repository
git clone https://github.com/SCO-SantiComeras/sco-web-server.git \
&& cp -r -a ./sco-web-server/* ./ \
&& cp -r ./sco-web-server/.gitignore ./.gitignore \
&& cp -r ./sco-web-server/.git ./.git \
&& mkdir nodeserver \
&& chmod -R 777 ./sco-web-server \
&& sleep 3 \
&& rm -f -r ./sco-web-server

echo "Repositorios descargados correctamente"