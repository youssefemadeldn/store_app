import 'package:flutter/material.dart';

class UpdateProductPage extends StatelessWidget {
  static String id = 'UpdateProductPage';
  const UpdateProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        // elevation: 0,
        title: const Text(
          'Update Product',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
