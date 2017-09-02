#!/bin/sh

echo Установка MongoDB

# 1. Добавляем ключи и ссылку на репозиторий:
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list'

# 2. Обновление индекса доступных пакетов и установка нужного пакета
sudo apt-get update
sudo apt-get install -y mongodb-org

# 3. Запуск MongoDB
sudo systemctl start mongod

# 4. Добавляем в автозапуск
sudo systemctl enable mongod
