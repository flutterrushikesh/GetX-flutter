import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/state_manager.dart';

class ProductModel {
  String imageLink;
  String price;
  String description;
  RxInt productCount;
  RxBool isFavorite;

  ProductModel(
      {required this.description,
      required this.imageLink,
      required this.price,
      required this.isFavorite,
      required this.productCount});
}
