import 'dart:convert';

import 'package:store_app/models/product_model.dart';
import 'package:http/http.dart' as http;

class GetProductsByCategory {
  Future<List<ProductModel>> getProductsByCategory(
      {required String categoryName}) async {
    http.Response response = await http.get(
        Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));

    if (response.statusCode == 200) {
      List<dynamic> mainList = jsonDecode(response.body);

      List<ProductModel> productList = [];
      for (int i = 0; i < mainList.length; i++) {
        productList.add(ProductModel.fromJson(mainList[i]));
      }
      return productList;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode}');
    }
  }
}
