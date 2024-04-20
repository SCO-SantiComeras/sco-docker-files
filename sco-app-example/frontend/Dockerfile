FROM node:16-alpine3.18

RUN addgroup frontend && adduser -S -G frontend frontend
USER frontend

WORKDIR /app/

# Folder Path For Unirepo If Dockerfile Is In sco-app-example-fronted root folder the path will be '.'
COPY --chown=frontend ./package*.json .
#COPY --chown=frontend sco-app-example/package*.json .

RUN npm install

COPY --chown=frontend . .
#COPY --chown=frontend sco-app-example .

EXPOSE 4200
CMD ["npm", "run", "start:docker"]