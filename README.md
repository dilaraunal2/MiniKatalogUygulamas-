🛍️ Mini Katalog
Modern, soft mor temalı Flutter e-ticaret katalog uygulaması.

📱 Ekran Görüntüleri


✨ Özellikler

🔍 Ürün arama & filtreleme
🗂️ GridView ile ürün listeleme
📄 Ürün detay sayfası
🛒 Sepet yönetimi (ekle, çıkar, miktar güncelle)
🌐 Gerçek API entegrasyonu (wantapi.com)
🔄 Pull-to-refresh
💜 Soft mor gradient tema


🛠️ Kullanılan Teknolojiler
AraçVersiyonFlutter3.41.4Dart3.11.1http^1.2.0provider^6.1.2cached_network_image^3.3.1

🚀 Kurulum ve Çalıştırma
bash# Repoyu klonla
git clone <repo-url>
cd mini_katalog

# Bağımlılıkları yükle
flutter pub get

# Uygulamayı çalıştır
flutter run

📁 Proje Yapısı
lib/
├── main.dart                  # Uygulama giriş noktası
├── models/
│   ├── product.dart           # Ürün veri modeli
│   └── cart_item.dart         # Sepet öğesi modeli
├── providers/
│   └── cart_provider.dart     # Sepet state yönetimi
├── screens/
│   ├── home_screen.dart       # Ana sayfa
│   ├── detail_screen.dart     # Ürün detay sayfası
│   └── cart_screen.dart       # Sepet sayfası
├── services/
│   └── product_service.dart   # API servisi
├── theme/
│   └── app_theme.dart         # Uygulama teması
└── widgets/
    └── product_card.dart      # Ürün kart bileşeni

🌐 API
Ürün verileri: wantapi.com/products.php

👩‍💻 Geliştirici Notu
Bu proje Software Persona Şirketi stajı Flutter eğitimi kapsamında geliştirilmiştir.
Temel widget yapısı, sayfa geçişleri, state management ve API entegrasyonu konularını kapsamaktadır.
