import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_practice/provider/counter_provider.dart';

class ProviderExample extends StatelessWidget {
  const ProviderExample({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Consumer<CounterProvider>(
              builder: (context, counterProvider, child) {
            return Text(counterProvider.title);
          }),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("You have pushed the button this many times:"),
              const SizedBox(
                height: 20,
              ),
              Consumer<CounterProvider>(
                  builder: (context, titleProvider, child) {
                return Text(titleProvider.count.toString());
              }),
            ],
          ),
        ),
        floatingActionButton: Consumer<CounterProvider>(
          builder: (context, counterProvider, child) {
            return FloatingActionButton(
              onPressed: counterProvider.incrementCounter,
              child: const Icon(Icons.add),
            );
          },
        ));
  }
}
