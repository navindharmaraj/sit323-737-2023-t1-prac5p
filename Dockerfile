FROM node:16-alpine
WORKDIR /app
COPY package.json ./
RUN npm install --unsafe-perm=true --allow-root
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
HEALTHCHECK --interval=10s --timeout=2s --start-period=15s \
  CMD curl --fail http://localhost:3000/health || exit 1
