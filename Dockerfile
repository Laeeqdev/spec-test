
FROM node:latest
RUN npm install -g @redocly/openapi-cli
COPY ./specs ./specs
CMD ["redocly", "preview", "-d", "./specs"]

