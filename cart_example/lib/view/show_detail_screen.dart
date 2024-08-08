import 'package:cart_example/controller/isfavorite_controller.dart';
import 'package:cart_example/controller/product_controller.dart';
import 'package:cart_example/model/product_model.dart';
import 'package:cart_example/view/isfavorite_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowDetailScreen extends StatelessWidget {
  final ProductController localObj = Get.find<ProductController>();
  ShowDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              Get.put(IsfavoriteController());
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return IsfavoriteScreen();
              }));
            },
            icon: const Icon(
              Icons.favorite_border,
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: localObj.productModel.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.network(
                localObj.productModel[index].imageLink,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (localObj.productModel[index].isFavorite.value ==
                          false) {
                        Get.put(IsfavoriteController());
                        localObj.isFavorite(index);
                        IsfavoriteController obj =
                            Get.find<IsfavoriteController>();
                        obj.addToCart(localObj.productModel[index]);
                      }
                    },
                    child: Obx(
                      () {
                        return Icon(
                          localObj.productModel[index].isFavorite.value
                              ? Icons.favorite
                              : Icons.favorite_outline,
                        );
                      },
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          localObj.addTocart(index);
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
                          "${localObj.productModel[index].productCount.value}",
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
                            localObj.removeFromcart(index);
                          },
                          child: const Icon(Icons.remove)),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
