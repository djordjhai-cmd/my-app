@echo off
chcp 65001 >nul
echo ============================================
echo   Настройка Android проекта для приложения
 echo ============================================
echo.

echo Установка зависимостей...
call npm install

echo.
echo Инициализация Capacitor...
call npx cap init "Моё Приложение" "com.myapp.demo" --web-dir=dist 2>nul || echo Проект уже инициализирован

echo.
echo Добавление Android платформы...
call npx cap add android 2>nul || echo Android платформа уже добавлена

echo.
echo Синхронизация проекта...
call npm run build
call npx cap sync android

echo.
echo ============================================
echo   Готово! Android проект создан в папке android/
 echo ============================================
echo.
echo Теперь ты можешь:
echo 1. Загрузить проект на GitHub для автоматической сборки APK
echo 2. Или открыть папку android в Android Studio для ручной сборки
echo.
pause
