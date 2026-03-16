class Rating {
  final double rate;
  final int count;

  Rating({required this.rate, required this.count});

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      rate: (json['rate'] ?? 0).toDouble(),
      count: json['count'] ?? 0,
    );
  }
}

class Product {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final Rating rating;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    double parsePrice(dynamic val) {
      if (val == null) return 0.0;
      if (val is num) return (val * 60).toDouble();
      final cleaned = val.toString().replaceAll(RegExp(r'[^\d.]'), '');
      final usd = double.tryParse(cleaned) ?? 0.0;
      return usd * 60;
    }

    return Product(
      id: json['id'] ?? 0,
      title: json['name'] ?? json['title'] ?? '',
      price: parsePrice(json['price']),
      description: json['description'] ?? '',
      category: json['category'] ?? 'Apple',
      image: json['image'] ?? json['img'] ?? '',
      rating: json['rating'] != null
          ? Rating.fromJson(json['rating'])
          : Rating(rate: 4.5, count: 0),
    );
  }
}