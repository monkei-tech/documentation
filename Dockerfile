FROM node:24-alpine

RUN npm install -g mint

WORKDIR /app
COPY . .

ENV PORT=3000
EXPOSE 3000

# Comando para rodar em modo dev, aceitando conexões externas (0.0.0.0)
CMD ["mint", "dev", "--host", "0.0.0.0", "--port", "3000"]