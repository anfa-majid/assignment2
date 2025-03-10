import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Shimmerload extends StatelessWidget {
  const Shimmerload({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.7, 
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[500]!, 
          highlightColor: Colors.grey[300]!, 
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[350], 
              borderRadius: BorderRadius.circular(12), 
              border: Border.all(color: Colors.white, width: 1), 
              boxShadow: [
                BoxShadow(
                  color: const Color.fromRGBO(255, 255, 255, 0.8), 
                  blurRadius: 10, 
                  spreadRadius: -1, 
                  offset: const Offset(0, 0), 
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
