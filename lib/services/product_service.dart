import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../models/product.dart';

class ProductService {
  static const String _baseUrl = 'https://wantapi.com/products.php';

  static Future<List<Product>> fetchProducts() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));
      if (response.statusCode == 200) {
        final dynamic decoded = json.decode(response.body);
        List<dynamic> list = [];
        if (decoded is List) {
          list = decoded;
        } else if (decoded is Map) {
          if (decoded.containsKey('data')) {
            list = decoded['data'];
          } else if (decoded.containsKey('products')) {
            list = decoded['products'];
          }
        }
        debugPrint('LISTE: ${list.length}');
        if (list.isEmpty) return _getFallbackProducts();
        return list.map((item) => Product.fromJson(item)).toList();
      }
      return _getFallbackProducts();
    } catch (e) {
      debugPrint('HATA: $e');
      return _getFallbackProducts();
    }
  }

  static List<Product> _getFallbackProducts() {
    return [
      Product(
        id: 1,
        title: 'iPhone 15 Pro',
        price: 999,
        description: 'A17 Pro chip ile güçlendirilmiş.',
        category: 'iPhone',
        image: 'https://picsum.photos/id/10/300/300',
        rating: Rating(rate: 4.9, count: 500),
      ),
    ];
  }
}