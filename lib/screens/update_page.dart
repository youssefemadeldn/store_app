import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(hintText: 'Product Name'),
            const SizedBox(height: 25),
            CustomTextField(hintText: 'Description'),
            const SizedBox(height: 25),
            CustomTextField(hintText: 'Price'),
            const SizedBox(height: 25),
            CustomTextField(hintText: 'Image'),
            const SizedBox(height: 60),
            CustomButton(text: 'Submit', onTap: () {}, color: Colors.blue),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
