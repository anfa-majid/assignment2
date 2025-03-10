import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/products_model.dart';

class ProductsService {
  Future<List<Product>> fetchProducts() async {
    const url = 'https://fakestoreapi.com/products'; 
    final uri = Uri.parse(url);

    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body) as List;
        final products =
            jsonData.map((item) => Product.fromJson(item)).toList();
        return products;
      }
    } catch (e) {
      throw e.toString();
    }

    return [];
  }
}
