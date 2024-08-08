import 'package:cart_example/controller/isfavorite_controller.dart';
import 'package:flutter/material.dart';
import 'package:cart_example/controller/product_controller.dart';

import 'package:get/get.dart';

class IsfavoriteScreen extends StatelessWidget {
  final IsfavoriteController localObj = Get.find<IsfavoriteController>();
  final ProductController obj = Get.find<ProductController>();
  IsfavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your cart"),
        backgroundColor: Colors.blue,
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: localObj.productList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Obx(
                  () => Image.network(
                    localObj.productList[index].imageLink.value,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        obj.isFavorite(index);
                        localObj.removeFromcart(index);
                      },
                      child: const Text("Remove"),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            obj.addTocart(index);
                          },
                          child: const Icon(
                            Icons.add,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Obx(() {
                          return Text(
                            "${localObj.productList[index].productCount.value}",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          );
                        }),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            obj.removeFromcart(index);
                          },
                          child: const Icon(Icons.remove),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
