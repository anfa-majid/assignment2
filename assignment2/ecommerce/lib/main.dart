import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce/providers/product_provider.dart';
import 'package:ecommerce/screens/product_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductProvider(), 
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(), 
        home: const ProductsScreen(), 
      ),
    );
  }
}
