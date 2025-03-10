import 'package:flutter/material.dart';
import '../models/products_model.dart';
import '../services/product_service.dart';

class ProductProvider extends ChangeNotifier {
  final _service = ProductsService();
  bool isLoading = false;

  List<Product> _products = [];
  List<Product> get products => _products;

  void setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  Future<void> getAllProducts() async {
    setLoading(true);
    final response = await _service.fetchProducts();
    _products = response;
    setLoading(false);
  }
}