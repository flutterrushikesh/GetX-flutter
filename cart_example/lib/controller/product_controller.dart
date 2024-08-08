import 'dart:developer';
import 'dart:ffi';

import 'package:cart_example/model/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  List<ProductModel> productModel = [];

  void addProducts(ProductModel productModel) {
    log('$productModel');
    log('${this.productModel.length}');
    this.productModel.add(productModel);
  }

  void addTocart(int index) {
    log("IN ADD TO CART");
    productModel[index].productCount.value++;
  }

  void removeFromcart(int index) {
    productModel[index].productCount = productModel[index].productCount--;
  }

  void isFavorite(int index) {
    log("IN ISFAVORITE");

    productModel[index].isFavorite.value =
        !productModel[index].isFavorite.value;
  }
}
