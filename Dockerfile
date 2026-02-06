FROM node:18-alpine

WORKDIR /app

COPY app/package*.json ./

RUN npm install --production

COPY app/ .

ENV PORT=3000 \
    DATA_DIR=/app/data

EXPOSE 3000

CMD ["npm", "start"]
