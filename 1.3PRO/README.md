# 1T_docker
[![Typing SVG](https://readme-typing-svg.herokuapp.com?color=%2336BCF7&lines=Про+домашнюю+работу+1.3PRO)](https://git.io/typing-svg)

В общем логика работы docker-compose.yml сводится к объединению и организованному запуску контейнеров с приложением на языке python и базы данных Postgres.

- app - каталог c приложением app.py и файлом requirements.txt к нему. Приложение создано для подсчета ИМТ (Индекса массы тела) и использует данные из базы данных Postges,а конкретно таблицы index_mass. requirements.txt содержит в себе необходимые требования для нормального функционирования приложения.

- bs_init_scripts - каталог в котором содержится скрипт init.sql для создания и заполнения данными таблицы index_mass в базе данных Postgres. Таблица и данные создаются автоматически при запуске контейнера Docker.

- my_data - каталог,подключаемый как том (volume) к контейнеру Docker c базой данных Postgres.Служит для сохранения изменений в базе данных.

- docker-compose.yml - файл Docker-compose который служит для сборки образов и запуска на их основе 2-х контейнеров, в одном из которых содержится база данных Postgres, а в другом разворачивается Python 3.9 для работы приложения из каталога app. В файле содержится информация об очередности и условиях запуска (база данных-скрипт-приложение), параметрах запуска, и о данных для аутентификации и подключения.  

- Описание команд.txt - описание команд в файле Docker-compose.yml выполненное согласно требований задания 1.3PRO.


