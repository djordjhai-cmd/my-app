# 📱 Моё Android Приложение

React + Vite + Tailwind CSS + Capacitor приложение для Android.

## 🚀 Быстрый старт

### Получить APK (самый простой способ - через GitHub):

1. **Зарегистрируйся на [GitHub](https://github.com)**
2. **Создай новый репозиторий** (кнопка "New")
3. **Загрузи все файлы** этого проекта
4. **Подожди 2-3 минуты** - APK соберётся автоматически
5. **Скачай APK** из вкладки "Actions" → "Artifacts"
6. **Установи на телефон** 🎉

📖 **Подробная инструкция:** смотри файл `ИНСТРУКЦИЯ.txt`

---

## 📁 Структура проекта

```
📦 Проект
├── 📂 src/                 # Исходный код React приложения
│   ├── App.tsx            # Главный компонент
│   ├── main.tsx           # Точка входа
│   └── index.css          # Стили
├── 📂 android/            # Android проект (Capacitor)
├── 📂 .github/workflows/  # Автоматическая сборка APK
├── 📄 capacitor.config.ts # Конфигурация Capacitor
├── 📄 package.json        # Зависимости и скрипты
├── 📄 vite.config.ts      # Конфигурация Vite
├── 📄 setup-android.bat   # Скрипт настройки (Windows)
├── 📄 setup-android.sh    # Скрипт настройки (Mac/Linux)
└── 📄 ИНСТРУКЦИЯ.txt      # Подробная инструкция
```

---

## 🛠️ Локальная разработка

### Установка зависимостей:
```bash
npm install
```

### Запуск в браузере (для разработки):
```bash
npm run dev
```

### Сборка веб-версии:
```bash
npm run build
```

### Синхронизация с Android:
```bash
npm run build:mobile
```

### Открыть в Android Studio:
```bash
npm run android
```

---

## 📦 Сборка APK локально

### Требования:
- [Node.js](https://nodejs.org/) 18+
- [Android Studio](https://developer.android.com/studio)
- JDK 17

### Шаги:
1. Запусти `setup-android.bat` (Windows) или `setup-android.sh` (Mac/Linux)
2. Открой папку `android` в Android Studio
3. Нажми **Build** → **Build Bundle(s) / APK(s)** → **Build APK(s)**
4. APK будет в `android/app/build/outputs/apk/debug/`

---

## ⚙️ Конфигурация

### Изменить название приложения:
Файл: `capacitor.config.ts`
```typescript
appName: 'Твоё Название',
```

### Изменить ID приложения (package name):
Файл: `capacitor.config.ts`
```typescript
appId: 'com.tvoydomen.app',
```

### Изменить иконку:
Зamenи файлы в `android/app/src/main/res/mipmap-*/`

---

## 🤖 Автоматическая сборка (CI/CD)

Проект настроен для автоматической сборки APK через **GitHub Actions**.

При каждом push в ветку `main` или `master`:
1. Собирается веб-версия
2. Синхронизируется с Android
3. Собирается Debug APK
4. APK доступен для скачивания в разделе **Actions** → **Artifacts**

### Получить APK из GitHub Actions:
1. Перейди в репозиторий на GitHub
2. Открой вкладку **Actions**
3. Выбери последний успешный запуск (зелёная галочка ✅)
4. Прокрути вниз до **Artifacts**
5. Скачай `app-debug-apk`

---

## 📚 Технологии

- **React 19** - UI библиотека
- **Vite 7** - Сборщик
- **Tailwind CSS 4** - Стили
- **Capacitor 7** - Мост для Android/iOS
- **TypeScript** - Типизация

---

## 📄 Лицензия

MIT

---

## 💡 Полезные ссылки

- [Документация Capacitor](https://capacitorjs.com/docs)
- [Android Developer](https://developer.android.com/)
- [Публикация в Google Play](https://play.google.com/console)

---

Создано с ❤️ для начинающих разработчиков
