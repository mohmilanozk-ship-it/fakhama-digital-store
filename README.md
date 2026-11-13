# 🚀 متجر فخامة ستور - Fakhama Store

متجر إلكتروني متكامل لبيع وشحن المنتجات الرقمية، التطبيقات، والألعاب (مثل PUBG Mobile, Free Fire وغيرها).

## 🛠 التقنيات المستخدمة
- **تطبيق الموبايل:** Flutter (Dart)
- **الخادم الخلفي:** NestJS (TypeScript)
- **قاعدة البيانات:** PostgreSQL + Prisma ORM
- **لوحة التحكم:** Next.js

## ⚙️ طريقة التشغيل (Quick Start)

### 1. إعداد قاعدة البيانات والخادم الخلفي
```bash
cd backend
npm install
npx prisma migrate dev --name init
npm run start:dev
cd mobile-app
flutter pub get
flutter run
cd admin-panel
npm install
npm run dev
