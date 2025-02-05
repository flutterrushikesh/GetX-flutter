import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:observable_demo/counter_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final CounterController put = Get.put(CounterController());
  final CounterController find = Get.find();
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Build Flow"),
      ),
      body: Center(
        child: Obx(
          () {
            log("IN OBX");
            return Text("${find.counter}");
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          find.incrementCounter();
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
