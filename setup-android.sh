#!/bin/bash

echo "==========================================="
echo "  Настройка Android проекта для приложения"
echo "==========================================="
echo ""

echo "Установка зависимостей..."
npm install

echo ""
echo "Инициализация Capacitor..."
npx cap init "Моё Приложение" "com.myapp.demo" --web-dir=dist 2>/dev/null || echo "Проект уже инициализирован"

echo ""
echo "Добавление Android платформы..."
npx cap add android 2>/dev/null || echo "Android платформа уже добавлена"

echo ""
echo "Синхронизация проекта..."
npm run build
npx cap sync android

echo ""
echo "==========================================="
echo "  Готово! Android проект создан в папке android/"
echo "==========================================="
echo ""
echo "Теперь ты можешь:"
echo "1. Загрузить проект на GitHub для автоматической сборки APK"
echo "2. Или открыть папку android в Android Studio для ручной сборки"
echo ""
