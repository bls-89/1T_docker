# 1T_docker
[![Typing SVG](https://readme-typing-svg.herokuapp.com?color=%2336BCF7&lines=Про+домашнюю+работу+1.3PRO)](https://git.io/typing-svg)

В общем логика работы docker-compose.yml сводится к объединению и организованному запуску контейнеров с приложением на языке python и базы данных PostgreSQL.
- Сначала мы указываем версию Compose file.
- В разделе сервисы (services:) указаны сервисы, для которых и будут запущены контейнеры. Это app - для python приложения, и db - для базы данных.
- Для сервиса app мы используем образ python 3.9 (на это указывает атрибут image:), также подключаем том в виде локального каталога ./app и каталога контейнера /home/app (для этого атрибут volume:)
