import 'package:get/get.dart';

class CounterController extends GetxController {
  RxString title = 'Getx Example'.obs;
  RxInt counter = 0.obs;

  void incrementCounter() {
    counter.value++;
  }
}
