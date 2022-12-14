# Берем нужный базовый образ
FROM python:3.8-alpine
# Копируем все файлы из текущей директории в /app контейнера
RUN mkdir app
WORKDIR app
COPY ./ ./

# Устанавливаем все зависимости
RUN apk update && pip install -r /app/requirements.txt --no-cache-dir
# Говорим контейнеру какой порт слушай
# EXPOSE 8080
# Запуск нашего приложения при старте контейнера
CMD python source/test.py