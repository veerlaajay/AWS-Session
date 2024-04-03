# Our node app is based on `18-alpine` image 
FROM node:18-alpine

# Setting up the environment variables needed:
ENV DOMAIN="http://54.164.24.37:3000" \
PORT=3000 \
STATIC_DIR="./client" \
PUBLISHABLE_KEY="pk_test_51P1Q4cSGi7B1TeE32KcJr6uclw3aJWyOrHWTPtusd8jbSRry4gBEJ013rJEOiYlSZO5QBwwQmBJjTTasAq6OvSBN00j59PEAQU" \
SECRET_KEY="sk_test_51P1Q4cSGi7B1TeE3x88RZVnIVCOEICfxQ0yMbbJ21pB4CaOg0xswUYS9ItGeR3aB6LuR4N4YiTUSu0fMKuaZUxiV00v8pzbuQR"

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]
