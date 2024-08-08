import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation/screen3.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    final messasge = Get.arguments;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Screen2"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.off(
                    () => const Screen3(),
                    arguments: "Hellow world0",
                  );
                },
                child: const Text("Go to 3 Screen"),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.back(result: "OK");
                },
                child: const Text("prev screen 1"),
              ),
              Text(messasge),
            ],
          ),
        ));
  }
}
