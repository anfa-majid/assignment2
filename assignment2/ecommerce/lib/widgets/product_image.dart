import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String imageUrl;

  const ProductImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(12)), 
      child: SizedBox(
        width: double.infinity, 
        height: 180, 
        child: Image.network(
          imageUrl,
          fit: BoxFit.contain, 
          alignment: Alignment.center, 
        ),
      ),
    );
  }
}
