import 'package:flutter/material.dart';

class SetStateExample extends StatefulWidget {
  const SetStateExample({super.key, required this.title});
  final String title;

  @override
  State<SetStateExample> createState() {
    return _SetStateExampleState();
  }
}

class _SetStateExampleState extends State<SetStateExample> {
  int _counter = 0;
  void incrementCounter() {
    setState(() 
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("You Have pushed the button this many times:"),
            SizedBox(height: 25),
            Text(_counter.toString()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        child: Icon(Icons.add),
      ),
    );
  }
}
