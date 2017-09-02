#!/bin/sh

echo Деплой приложения

# 1. Копируем код приложения
git clone https://github.com/Artemmkin/reddit.git

# 2. Переходим в директорию проекта и устанавливаем зависимости приложения
cd reddit && bundle install

# 3. Запускаем сервер приложения в папке проект:
puma -d
