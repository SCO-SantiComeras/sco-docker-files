#!/bin/bash
#Para lanzar el script, lanzamos en una terminal posicionada en el fichero el siguiente comando: `./get-repositories.sh`
echo "Empezando descarga de repositorios..."

# Individual repositories
git clone https://github.com/SCO-SantiComeras/sco-app-example-frontend.git \
&& git clone https://github.com/SCO-SantiComeras/sco-app-example-backend.git

# Global repository
#git clone https://github.com/SCO-SantiComeras/sco-app-example.git \
#&& cp -r -a ./sco-app-example/* ./ \
#&& cp -r ./sco-app-example/.gitignore ./.gitignore \
#&& chmod -R 777 ./sco-app-example \
#&& sleep 3 \
#&& rm -f -r ./sco-app-example

echo "Repositorios descargados correctamente"