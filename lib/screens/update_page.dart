import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/e_update_product_service.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class UpdateProductPage extends StatelessWidget {
  static String id = 'UpdateProductPage';
  String? productName, description, image;
  String? price;
  UpdateProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              CustomTextField(
                hintText: 'Product Name',
                onChanged: (data) {
                  productName = data;
                },
              ),
              const SizedBox(height: 10),
              CustomTextField(
                hintText: 'Description',
                onChanged: (data) {
                  description = data;
                },
              ),
              const SizedBox(height: 10),
              CustomTextField(
                hintText: 'Price',
                textInputType: TextInputType.number,
                onChanged: (data) {
                  price = data;
                },
              ),
              const SizedBox(height: 10),
              CustomTextField(
                hintText: 'Image',
                onChanged: (data) {
                  image = data;
                },
              ),
              const SizedBox(height: 60),
              CustomButton(
                  text: 'Update',
                  onTap: () {
                    UpdateProductService().updateProductService(
                      id: product.id,
                      title: productName!,
                      price: double.parse(price!),
                      description: description!,
                      image: image!,
                      category: product.category,
                    );
                  },
                  color: Colors.blue),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
