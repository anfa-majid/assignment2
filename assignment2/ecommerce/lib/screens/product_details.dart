import 'package:ecommerce/widgets/product_image.dart';
import 'package:ecommerce/widgets/product_info.dart';
import 'package:flutter/material.dart';
import '../models/products_model.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: "product_${product.id}",
              child: ProductImage(imageUrl: product.image),
            ),
            ProductInfo(product: product),
          ],
        ),
      ),
    );
  }
}
