import 'package:flutter/material.dart';
import 'package:flutterprovidor/screentwo.dart';
import 'package:flutterprovidor/userSetup.dart';
import 'package:provider/provider.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    MyModel myModel = Provider.of<MyModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "I am screen two",
        ),
      ),
      body: Center(
          child: Column(
        children: [
          Text(
            myModel.counter.toString(),
            style: const TextStyle(fontSize: 50),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScreenTwo(),
                    ));
              },
              child: const Text("Screen Two"))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myModel.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
