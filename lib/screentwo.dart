import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertutorial/countProvider.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    MyModel myModel = Provider.of<MyModel>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            myModel.increaseValue();
          });
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("screen Two"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              " you selected number",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              myModel.counter.toString(),
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
