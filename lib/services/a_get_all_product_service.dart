import 'package:store_app/helper/api_helper.dart';
import 'package:store_app/models/product_model.dart';

class GetAllProductService {
  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> mainList =
        await ApiHelper().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> productList = [];

    for (int i = 0; i < mainList.length; i++) {
      productList.add(ProductModel.fromJson(mainList[i]));
    }
    return productList;
  }
}
