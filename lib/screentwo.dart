import 'package:flutter/material.dart';
import 'package:flutterprovidor/screentwo.dart';
import 'package:flutterprovidor/userSetup.dart';
import 'package:provider/provider.dart';

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
      appBar: AppBar(
        title: Text(
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
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenTwo(),
                    ));
              },
              child: const Text("Screen Two"))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myModel.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
