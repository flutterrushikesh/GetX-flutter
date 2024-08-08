import 'package:cart_example/controller/product_controller.dart';
import 'package:cart_example/model/product_model.dart';
import 'package:cart_example/view/show_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController imageController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add details"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: imageController,
              decoration: InputDecoration(
                hintText: "Product link",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: priceController,
              decoration: InputDecoration(
                hintText: "Price",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                hintText: "Description",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                ProductModel productObj = ProductModel(
                  description: descriptionController.text,
                  imageLink: imageController.text,
                  price: priceController.text,
                  isFavorite: false.obs,
                  productCount: 0.obs,
                );
                priceController.clear();
                descriptionController.clear();
                imageController.clear();
                ProductController obj = Get.put(ProductController());
                obj.addProducts(productObj);
              },
              child: const Text("Add Product"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.put(ProductController());
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return ShowDetailScreen();
                    },
                  ),
                );
              },
              child: const Text("Show products"),
            ),
          ],
        ),
      ),
    );
  }
}
