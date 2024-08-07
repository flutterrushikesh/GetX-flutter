import 'package:counter_app/model/counter_model.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  Rx<CounterModel> counterModel = CounterModel(count: 0).obs;

  void incrementCounter() {
    counterModel.update(
      (counterModel) {
        counterModel!.count++;
      },
    );
  }
}
