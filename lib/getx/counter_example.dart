import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_practice/getx/counter_controller.dart';

class GetxExample extends StatelessWidget {
  GetxExample({super.key});

  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Obx(() => Text(counterController.title.value)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have pushed the button this many times:"),
            SizedBox(height: 25),
            Obx(() => Text(counterController.counter.value.toString())),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterController.incrementCounter,
        child: Icon(Icons.add),
      ),
    );
  }
}
