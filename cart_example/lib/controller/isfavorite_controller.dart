import 'dart:developer';

import 'package:cart_example/model/product_model.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class IsfavoriteController extends GetxController {
  RxList<dynamic> productList = [].obs;

  void addToCart(ProductModel productobj) {
    log("$productobj");
    productList.add(productobj);
  }

  void removeFromcart(int index) {
    log("REMOVE");
    productList.removeAt(index);
  }
}
