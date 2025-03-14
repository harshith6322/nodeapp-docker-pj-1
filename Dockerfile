# Multi Stage Build stage
FROM node:23 AS builder
WORKDIR /apps
COPY package*.json ./
RUN npm install
COPY . .

# Production stage
FROM node:23-slim
WORKDIR /apps
COPY --from=builder /apps/package*.json ./
COPY --from=builder /apps/node_modules ./node_modules
COPY --from=builder /apps/. .
EXPOSE 3000
CMD ["node", "index.js"]




### basic build
# FROM node:23 
# WORKDIR /apps
# COPY package*.json .
# RUN  npm install
# COPY . .
# EXPOSE 3000
# ENTRYPOINT [ "node", "index.js" ] 