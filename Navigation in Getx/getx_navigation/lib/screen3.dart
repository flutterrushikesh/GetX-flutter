import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation/screen1.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Screen3"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.offAll(
                    () => const Screen1(),
                  );
                },
                child: const Text("prev screen 1"),
              )
            ],
          ),
        ));
  }
}
