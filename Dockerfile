# Menggunakan Node.js Versi 14
FROM node:14
# Mengatur Working Directory Di dalam container ke /app
WORKDIR /app
# Menyalin semua files dari direktori saat ini ke /app direktori di container
COPY . /app
# Mengatur env variables untuk NODE_ENV dan DB_HOST
ENV NODE_ENV=production DB_HOST=item-db
# Install dependencies untuk production dan membangun aplikasinya
RUN npm install --production --unsafe-perm && npm run build
# Expose port 8080
EXPOSE 8080
# Menjalankan CMD di Container untuk start aplikasinya
CMD ["npm", "start"]