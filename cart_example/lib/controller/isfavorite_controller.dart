import 'package:cart_example/model/product_model.dart';
import 'package:get/get.dart';

class IsfavoriteController extends GetxController {
  List<ProductModel> productList = [];

  void addToCart(ProductModel productobj) {
    productList.add(productobj);
  }
}
