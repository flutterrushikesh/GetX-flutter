import 'dart:developer';

import 'package:counter_app/controller/counter_controller.dart';
// import 'package:counter_app/model/counter_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    log("IN SCAFFOLD BUILD");
    CounterController counterController = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter app'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Increment counter",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Obx(() {
              return Text(
                "${counterController.counterModel.value.count}",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              );
            })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.put(CounterController());
          counterController.incrementCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
