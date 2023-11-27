import 'package:store_app/helper/api_helper.dart';

class GetAllCategoryService {
  Future<List<dynamic>> getAllCategory() async {
    List<dynamic> mainList = await ApiHelper()
        .get(url: 'https://fakestoreapi.com/products/categories');

    return mainList;
  }
}
