import 'dart:convert';

import 'package:store_app/models/product_model.dart';
import 'package:http/http.dart' as http;

class GetAllProductService {
  Future<List<ProductModel>> getAllProduct() async {
    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));

    List<dynamic> mainList = jsonDecode(response.body);

    List<ProductModel> productList = [];

    for (int i = 0; i < mainList.length; i++) {
      productList.add(ProductModel.fromJson(mainList[i]));
    }
    return productList;
  }
}
