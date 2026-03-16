# 🛍️ Mini Katalog

Modern, soft mor temalı Flutter e-ticaret katalog uygulaması.

---

## 📱 Ekran Görüntüleri

ÜrünBilgi.PNG

---

## ✨ Özellikler

- 🔍 Ürün arama & filtreleme
- 🗂️ GridView ile ürün listeleme
- 📄 Ürün detay sayfası
- 🛒 Sepet yönetimi (ekle, çıkar, miktar güncelle)
- 🌐 Gerçek API entegrasyonu (wantapi.com)
- 🔄 Pull-to-refresh
- 💜 Soft mor gradient tema

---

## 🛠️ Kullanılan Teknolojiler

| Araç | Versiyon |
|------|----------|
| Flutter | 3.41.4 |
| Dart | 3.11.1 |
| http | ^1.2.0 |
| provider | ^6.1.2 |
| cached_network_image | ^3.3.1 |

---

## 🚀 Kurulum ve Çalıştırma

```bash
# Repoyu klonla
git clone <repo-url>
cd mini_katalog

# Bağımlılıkları yükle
flutter pub get

# Uygulamayı çalıştır
flutter run
```

---

## 📁 Proje Yapısı

```
lib/
├── main.dart
├── models/
│   ├── product.dart
│   └── cart_item.dart
├── providers/
│   └── cart_provider.dart
├── screens/
│   ├── home_screen.dart
│   ├── detail_screen.dart
│   └── cart_screen.dart
├── services/
│   └── product_service.dart
├── theme/
│   └── app_theme.dart
└── widgets/
    └── product_card.dart
```

---

## 🌐 API

Ürün verileri: [wantapi.com/products.php](https://wantapi.com/products.php)

---

## 👩‍💻 Geliştirici Notu

Bu proje Software Persona Şirketi stajımda Flutter eğitimi kapsamında geliştirilmiştir.  
Temel widget yapısı, sayfa geçişleri, state management ve API entegrasyonu konularını kapsamaktadır.
