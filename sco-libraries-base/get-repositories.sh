#!/bin/bash
#Para lanzar el script, lanzamos en una terminal posicionada en el fichero el siguiente comando: `./get-repositories.sh`
echo "Empezando descarga de repositorios..."

#git clone https://github.com/SCO-SantiComeras/sco-libraries-base.git \
#&& git clone https://github.com/SCO-SantiComeras/sco-libraries-base.git

git clone https://github.com/SCO-SantiComeras/sco-libraries-base.git \
&& cp -r ./sco-libraries-base/ ./

echo "Repositorios descargados correctamente"