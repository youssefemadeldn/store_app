import 'package:store_app/helper/api_helper.dart';
import 'package:store_app/models/product_model.dart';

class GetProductsByCategory {
  Future<List<ProductModel>> getProductsByCategory(
      {required String categoryName}) async {
    List<dynamic> mainList = await ApiHelper()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');

    List<ProductModel> productList = [];
    for (int i = 0; i < mainList.length; i++) {
      productList.add(ProductModel.fromJson(mainList[i]));
    }
    return productList;
  }
}
