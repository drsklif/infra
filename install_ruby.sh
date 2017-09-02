#!/bin/sh

echo Установка Ruby

# 1. импортируем ключик
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

# 2. устанавливаем RVM
curl -sSL https://get.rvm.io | bash -s stable

# 3. Подгружаем RVM скрипт и устанавливаем зависимости для работы RVM и Ruby
source ~/.rvm/scripts/rvm
rvm requirements

# 4. Устанавливаем Ruby (версии 2.4.1)
rvm install 2.4.1

# 5. Указываем версию руби для пользователя по умолчанию
rvm use 2.4.1 --default

# 6. Установливаем bundler для управления зависимостями нашего приложения
gem install bundler -V --no-ri --no-rdoc
