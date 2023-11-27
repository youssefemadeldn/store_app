import 'dart:convert';

import 'package:http/http.dart' as http;

class GetAllCategoryService {
  Future<List<dynamic>> getAllCategory() async {
    http.Response response = await http
        .get(Uri.parse('https://fakestoreapi.com/products/categories'));

    if (response.statusCode == 200) {
      List<dynamic> mainList = jsonDecode(response.body);

      return mainList;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode}');
    }
  }
}
