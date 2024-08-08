import 'package:cart_example/controller/isfavorite_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class IsfavoriteScreen extends StatelessWidget {
  final IsfavoriteController localObj = Get.find<IsfavoriteController>();

  IsfavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your cart"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: localObj.productList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.network(
                localObj.productList[index].imageLink,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //     GestureDetector(
                  //       onTap: () {
                  //         // localObj.isFavorite(index);
                  //       },
                  //       child: Obx(
                  //         () {
                  //           return Icon(
                  //             // localObj.productModel[index].isFavorite.value
                  //             //     ? Icons.favorite
                  //             //     :
                  //             Icons.favorite_outline,
                  //           );
                  //         },
                  //       ),
                  //     ),
                  //     Row(
                  //       children: [
                  //         GestureDetector(
                  //           onTap: () {
                  //             // localObj.addTocart(index);
                  //           },
                  //           child: const Icon(
                  //             Icons.add,
                  //           ),
                  //         ),
                  //         const SizedBox(
                  //           width: 10,
                  //         ),
                  //         Obx(() {
                  //           return Text(
                  //             "${localObj.productList[index].productCount.value}",
                  //             style: const TextStyle(
                  //               fontSize: 18,
                  //               fontWeight: FontWeight.w600,
                  //             ),
                  //           );
                  //         }),
                  //         const SizedBox(
                  //           width: 10,
                  //         ),
                  //         GestureDetector(
                  //             onTap: () {
                  //               // localObj.removeFromcart(index);
                  //             },
                  //             child: const Icon(Icons.remove)),
                  //       ],
                  //     ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
