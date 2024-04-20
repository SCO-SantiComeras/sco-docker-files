FROM node:16-alpine3.18

RUN addgroup backend && adduser -S -G backend backend
USER backend

WORKDIR /app/

# Folder Path For Unirepo If Dockerfile Is In sco-app-example-backend root folder the path will be '.'
COPY --chown=backend ./package*.json .
#COPY --chown=backend sco-app-example/package*.json .

RUN npm install

COPY --chown=backend . .
#COPY --chown=backend sco-app-example .

EXPOSE 3000
EXPOSE 3001

CMD ["npm", "run", "start:docker"]