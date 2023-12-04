import 'package:store_app/helper/api_helper.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProductService({
    required dynamic id,
    required String title,
    required double price,
    required String description,
    required String image,
    required String category,
  }) async {
    print(id);
    Map<String, dynamic> mainMap = await ApiHelper().put(
      url: 'https://fakestoreapi.com/products/$id',
      body: {
        title: title,
        price: price,
        description: description,
        image: image,
        category: category,
      },
    );
    return ProductModel.fromJson(mainMap);
  }
}
