# Используем в качестве базового образа node.js
FROM node:16

# Установка рабочей директории внутри контейнера
WORKDIR /app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем все файлы из текущего каталога внутрь контейнера
COPY . .

# Команда для запуска приложения
CMD ["npm", "run", "serve"]