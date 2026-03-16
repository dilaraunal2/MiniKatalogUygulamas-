# Mini Katalog Uygulaması

Soft mor temalı, modern tasarımlı Flutter e-ticaret katalog uygulaması.

## Özellikler

- Ürün listeleme (GridView)
- Ürün arama & filtreleme
- Ürün detay sayfası
- Sepet yönetimi (ekle, çıkar, miktar güncelle)
- wantapi.com API entegrasyonu
- Pull-to-refresh

## Kullanılan Flutter Sürümü

Flutter 3.41.4 / Dart 3.11.1

## Kurulum ve Çalıştırma

```bash
# Bağımlılıkları yükle
flutter pub get

# Uygulamayı çalıştır
flutter run
```

## Proje Yapısı

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

## Ekran Görüntüleri

> screenshots/ klasörüne eklenecek

## API

Ürün verileri: https://wantapi.com/products.php
