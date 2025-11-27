FROM node:24-alpine

# Instala o mint globalmente
RUN npm install -g mint

# Copia os arquivos do projeto
WORKDIR /app
COPY . .

# Expõe a porta que o Mint usa (geralmente 3000 ou a definida pelo Railway)
ENV PORT=3000
EXPOSE 3000

# Comando para rodar em modo dev, aceitando conexões externas (0.0.0.0)
CMD ["mint", "dev", "--host", "0.0.0.0", "--port", "3000"]