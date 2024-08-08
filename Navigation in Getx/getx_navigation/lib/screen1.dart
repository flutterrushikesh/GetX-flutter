import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation/screen2.dart';
import 'package:getx_navigation/screen3.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    // final String res = Get.result;
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: const Text("Screen1"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.to(
                    () => const Screen2(),
                    arguments: "Hellow world",
                    duration: Duration(
                      seconds: 2,
                    ),
                    popGesture: true,
                    transition: Transition.leftToRight,
                  );
                },
                child: const Text("Go to 2 Screen"),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => const Screen3());
                },
                child: const Text("Go to 3 screen"),
              )
            ],
          ),
        ));
  }
}
