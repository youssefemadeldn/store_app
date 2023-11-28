import 'package:store_app/helper/api_helper.dart';
import 'package:store_app/models/product_model.dart';

class AddProductService {
  Future<ProductModel> post({
    required String title,
    required double price,
    required String description,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> mainMap =
        await ApiHelper().post(url: 'https://fakestoreapi.com/products', body: {
      title: title,
      price: price,
      description: description,
      image: image,
      category: category,
    });

    return ProductModel.fromJson(mainMap);
  }
}
